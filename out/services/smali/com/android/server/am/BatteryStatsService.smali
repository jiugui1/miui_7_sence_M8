.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final HTC_BATTERY_DATA_ACTION_RESET_DONE:Ljava/lang/String; = "com.htc.server.battery.action.clearbatterydata"

.field private static final MSG_BATTERY_DATA_ACTION_RESET_DONE:I = 0x1

.field private static final MSG_BATTERY_DATA_REMOVED_UID_DONE:I = 0x2

.field private static final MSG_BATTERY_HTC_BOOT_COMPLETED:I = 0x4

.field private static final MSG_SCREEN_ON_OFF_STATUS:I = 0x3

.field private static final SCREEN_ON_OFF_STATUS_DEBOUNCE:I = 0x0

.field private static final SCREEN_STATUS_OFF:I = 0x0

.field private static final SCREEN_STATUS_ON:I = 0x1

.field private static registerIntentDone:Z

.field static sService:Lcom/android/internal/app/IBatteryStats;

.field private static final screenOffObject:Ljava/lang/Object;


# instance fields
.field private final BATTERY_MAX_RUN_TIME_1S:I

.field private final TAG:Ljava/lang/String;

.field private mBatteryStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothPendingStats:Z

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mCommonReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mTotalScreenOffStatsFile:Ljava/io/File;

.field private screenStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/BatteryStatsService;->registerIntentDone:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 66
    const-string v0, "BatSS"

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->TAG:Ljava/lang/String;

    .line 70
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->BATTERY_MAX_RUN_TIME_1S:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    .line 96
    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 97
    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    .line 98
    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 99
    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 101
    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    .line 105
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCommonReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 643
    new-instance v0, Lcom/android/server/am/BatteryStatsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$4;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 255
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 257
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->initScreenOffBatteryData()V

    .line 259
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->resetScreenOffBatteryData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->removeScreenOffBatteryDataByUid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->handleScreenOnOffStatus(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/BatteryStatsService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryStatsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/am/BatteryStatsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z

    return p1
.end method

.method private createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 1407
    const/4 v5, 0x0

    .line 1409
    .local v5, "tmpStats":Lcom/android/internal/os/BatteryStatsImpl;
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 1410
    const-string v6, "BatSS"

    const-string v7, "cBSIFP S"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    :try_start_0
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :cond_1
    :goto_0
    return-object v5

    .line 1415
    :catch_0
    move-exception v2

    .line 1416
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 1417
    const-string v6, "BatSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cBSIFP exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1424
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->getStatisticsInternal()[B

    move-result-object v1

    .line 1426
    .local v1, "data":[B
    if-eqz v1, :cond_3

    array-length v6, v1

    if-lez v6, :cond_3

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1428
    .local v4, "out1":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v1

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1429
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1430
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    .line 1431
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1436
    .end local v1    # "data":[B
    .end local v4    # "out1":Landroid/os/Parcel;
    :catch_1
    move-exception v3

    .line 1437
    .local v3, "ex1":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_1

    .line 1438
    const-string v6, "BatSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry cBSIFP exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1433
    .end local v3    # "ex1":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    :cond_3
    :try_start_2
    const-string v6, "BatSS"

    const-string v7, "Retry cBSIFP no data"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private createScreenOffBatteryDataFile()V
    .locals 7

    .prologue
    .line 944
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 945
    const-string v4, "BatSS"

    const-string v5, "c SOffBDF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 951
    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 952
    .local v3, "systemDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 953
    new-instance v4, Ljava/io/File;

    const-string v5, "batteryoffstats.bin"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v1

    .line 957
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 958
    const-string v4, "BatSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createScreenOffBatteryDataFile exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 964
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 965
    .restart local v0    # "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 966
    .restart local v3    # "systemDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 967
    new-instance v4, Ljava/io/File;

    const-string v5, "batteryoffstats.bin"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 968
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 969
    .local v2, "ex1":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 970
    const-string v4, "BatSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry createScreenOffBatteryDataFile exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteScreenOffBatteryDataFile()V
    .locals 4

    .prologue
    .line 980
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 981
    const-string v1, "BatSS"

    const-string v2, "d SOffBDF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 989
    const-string v1, "BatSS"

    const-string v2, "delete file"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 993
    const-string v1, "BatSS"

    const-string v2, "delete OK"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    .line 1011
    :cond_3
    return-void

    .line 996
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 997
    const-string v1, "BatSS"

    const-string v2, "delete Fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 1003
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteScreenOffBatteryDataFile exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1451
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const-string v0, "  [--checkin] [-c] [--unplugged] [--reset] [--write] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string v0, "  --checkin: format output for a checkin report."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    const-string v0, "  --unplugged: only output data since last unplugged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .prologue
    .line 304
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 309
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 307
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 308
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 309
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    goto :goto_0
.end method

.method private getStatisticsInternal()[B
    .locals 6

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 919
    .local v0, "data":[B
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 920
    .local v2, "out":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 921
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 923
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 924
    if-eqz v0, :cond_2

    .line 925
    const-string v3, "BatSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 940
    .end local v2    # "out":Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-object v0

    .line 927
    .restart local v2    # "out":Landroid/os/Parcel;
    :cond_2
    const-string v3, "BatSS"

    const-string v4, "Internal data is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    .end local v2    # "out":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 934
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 935
    const-string v3, "BatSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatisticsInternal exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleBatteryDataWhenScreenOff()V
    .locals 6

    .prologue
    .line 1236
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 1237
    const-string v3, "BatSS"

    const-string v4, "handleBDWSOff"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 1245
    const-string v3, "BatSS"

    const-string v5, "handleBDWSOff S"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    .line 1250
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->getStatisticsInternal()[B

    move-result-object v0

    .line 1252
    .local v0, "data":[B
    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 1253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1254
    .local v2, "out":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1255
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1256
    invoke-direct {p0, v2}, Lcom/android/server/am/BatteryStatsService;->createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1262
    .end local v2    # "out":Landroid/os/Parcel;
    :goto_0
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 1263
    const-string v3, "BatSS"

    const-string v5, "handleBDWSOff E"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_2
    monitor-exit v4

    .line 1275
    .end local v0    # "data":[B
    :cond_3
    :goto_1
    return-void

    .line 1259
    .restart local v0    # "data":[B
    :cond_4
    const-string v3, "BatSS"

    const-string v5, "handleBDWSOff no data"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1268
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 1270
    const-string v3, "BatSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryDataWhenScreenOff exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleBatteryDataWhenScreenOn()V
    .locals 7

    .prologue
    .line 1279
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1280
    const-string v4, "BatSS"

    const-string v5, "handleBDWSOn"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1288
    const-string v4, "BatSS"

    const-string v6, "handleBDWSOn S"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    .line 1293
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v4, :cond_6

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->getStatisticsInternal()[B

    move-result-object v1

    .line 1299
    .local v1, "data":[B
    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1301
    .local v3, "out":Landroid/os/Parcel;
    const/4 v4, 0x0

    array-length v6, v1

    invoke-virtual {v3, v1, v4, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1302
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1303
    invoke-direct {p0, v3}, Lcom/android/server/am/BatteryStatsService;->createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1305
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 1306
    const-string v4, "BatSS"

    const-string v6, "handleBDWSOn 1"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_2
    if-eqz v0, :cond_5

    .line 1311
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->minus(Lcom/android/internal/os/BatteryStatsImpl;)Z

    .line 1313
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 1314
    const-string v4, "BatSS"

    const-string v6, "handleBDWSOn 2"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v4, :cond_4

    .line 1319
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl;->add(Lcom/android/internal/os/BatteryStatsImpl;)Z

    .line 1322
    :cond_4
    const/4 v0, 0x0

    .line 1325
    :cond_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1330
    .end local v3    # "out":Landroid/os/Parcel;
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1334
    .end local v0    # "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "data":[B
    :cond_6
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_7

    .line 1335
    const-string v4, "BatSS"

    const-string v6, "handleBDWSOn E"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_7
    monitor-exit v5

    .line 1347
    :cond_8
    :goto_1
    return-void

    .line 1327
    .restart local v0    # "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v1    # "data":[B
    :cond_9
    const-string v4, "BatSS"

    const-string v6, "handleBDWSOn no data"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    .end local v0    # "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "data":[B
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1340
    :catch_0
    move-exception v2

    .line 1341
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_8

    .line 1342
    const-string v4, "BatSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryDataWhenScreenOn exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleBatteryDataWhenScreenOnOff(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x3

    .line 1377
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1378
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hBDWOnOff S ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    if-eqz v1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->removeMessages(I)V

    .line 1383
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1384
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1385
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1388
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 1389
    const-string v1, "BatSS"

    const-string v2, "hBDWOnOff E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_2
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .prologue
    .line 1396
    sget-boolean v0, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1397
    const-string v0, "BatSS"

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->NotifyBootCompleted()V

    .line 1403
    :cond_1
    return-void
.end method

.method private handleScreenOnOffStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 1351
    sget-boolean v0, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1352
    const-string v0, "BatSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hSOnOffS S ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    if-ne v0, p1, :cond_2

    .line 1358
    monitor-exit v1

    .line 1373
    :cond_1
    :goto_0
    return-void

    .line 1361
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1364
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->handleBatteryDataWhenScreenOn()V

    .line 1369
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 1370
    const-string v0, "BatSS"

    const-string v1, "hSOnOffS E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1365
    :cond_4
    if-nez p1, :cond_3

    .line 1366
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->handleBatteryDataWhenScreenOff()V

    goto :goto_1
.end method

.method private initScreenOffBatteryData()V
    .locals 4

    .prologue
    .line 1015
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1016
    const-string v1, "BatSS"

    const-string v2, "initSOffBD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BatSS"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1022
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1023
    new-instance v1, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    .line 1025
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->createScreenOffBatteryDataFile()V

    .line 1027
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1028
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_1

    .line 1029
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->readLocked()V

    .line 1030
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_1
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1034
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScreenOffBatteryData exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerIntents()V
    .locals 8

    .prologue
    .line 1043
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->registerIntentDone:Z

    if-eqz v4, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    :try_start_0
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 1050
    const-string v4, "BatSS"

    const-string v5, "registerIntents S"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1054
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.htc.server.battery.action.clearbatterydata"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1058
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1059
    .local v1, "commonFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mCommonReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1062
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1063
    .local v0, "bootFilter":Landroid/content/IntentFilter;
    const-string v4, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1066
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/am/BatteryStatsService;->registerIntentDone:Z

    .line 1068
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1069
    const-string v4, "BatSS"

    const-string v5, "registerIntents E"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v0    # "bootFilter":Landroid/content/IntentFilter;
    .end local v1    # "commonFilter":Landroid/content/IntentFilter;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 1073
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1074
    const-string v4, "BatSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerIntents exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeScreenOffBatteryDataByUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1112
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1113
    const-string v2, "BatSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmSOffBDByUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    move v1, p1

    .line 1118
    .local v1, "rmUid":I
    if-ltz v1, :cond_3

    .line 1122
    :try_start_0
    sget-object v3, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 1128
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 1131
    :cond_2
    monitor-exit v3

    .line 1141
    :cond_3
    :goto_0
    return-void

    .line 1131
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1135
    const-string v2, "BatSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeScreenOffBatteryDataByUid exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetLastScreenOffBatteryData()V
    .locals 6

    .prologue
    .line 1190
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 1191
    const-string v3, "BatSS"

    const-string v4, "resetLSOffBD"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 1199
    const-string v3, "BatSS"

    const-string v5, "resetLSOffBD S"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v3, :cond_2

    .line 1204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1206
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->getStatisticsInternal()[B

    move-result-object v0

    .line 1208
    .local v0, "data":[B
    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1210
    .local v2, "out":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1211
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1212
    invoke-direct {p0, v2}, Lcom/android/server/am/BatteryStatsService;->createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1213
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1219
    .end local v0    # "data":[B
    .end local v2    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_0
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 1220
    const-string v3, "BatSS"

    const-string v5, "resetLSOffBD E"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_3
    monitor-exit v4

    .line 1232
    :cond_4
    :goto_1
    return-void

    .line 1215
    .restart local v0    # "data":[B
    :cond_5
    const-string v3, "BatSS"

    const-string v5, "resetLSOffBD no data"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1223
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1225
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v3, :cond_4

    .line 1227
    const-string v3, "BatSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetLastScreenOffBatteryData exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private resetScreenOffBatteryData()V
    .locals 7

    .prologue
    .line 1145
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1146
    const-string v1, "BatSS"

    const-string v2, "resetSOffBD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_4

    .line 1151
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1152
    const-string v1, "BatSS"

    const-string v2, "clear SOffBD S"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->deleteScreenOffBatteryDataFile()V

    .line 1159
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->createScreenOffBatteryDataFile()V

    .line 1160
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStatsFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1161
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->readLocked()V

    .line 1163
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1164
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v3, Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    .line 1165
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v3, Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setNumGpuSpeedSteps(I)V

    .line 1166
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 1169
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_4

    .line 1179
    const-string v1, "BatSS"

    const-string v2, "clear SOffBD E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->resetLastScreenOffBatteryData()V

    .line 1186
    return-void

    .line 1169
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    .line 1173
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetScreenOffBatteryData exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendResetBatteryDataIntentFromCommand()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$5;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    .line 841
    return-void
.end method

.method private shutdownScreenOffBatteryData()V
    .locals 4

    .prologue
    .line 1083
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1084
    const-string v1, "BatSS"

    const-string v2, "shutdownSOffBD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1091
    const-string v1, "BatSS"

    const-string v3, "shutdownSOffBD S"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 1096
    :cond_2
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    .line 1097
    const-string v1, "BatSS"

    const-string v3, "shutdownSOffBD E"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_3
    monitor-exit v2

    .line 1108
    :cond_4
    :goto_0
    return-void

    .line 1099
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_4

    .line 1103
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdownScreenOffBatteryData exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1463
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 1465
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: can\'t dump BatteryStats from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " without permission "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    sget-boolean v11, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v11, :cond_2

    .line 1472
    const-string v11, "BatSS"

    const-string v12, "+dump"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_2
    const/4 v6, 0x0

    .line 1476
    .local v6, "isCheckin":Z
    const/4 v5, 0x0

    .line 1477
    .local v5, "includeHistory":Z
    const/4 v7, 0x0

    .line 1478
    .local v7, "isUnpluggedOnly":Z
    const/4 v9, 0x0

    .line 1479
    .local v9, "noOutput":Z
    const/4 v10, -0x1

    .line 1480
    .local v10, "reqUid":I
    if-eqz p3, :cond_b

    .line 1481
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v8, :cond_b

    aget-object v1, v2, v4

    .line 1482
    .local v1, "arg":Ljava/lang/String;
    const-string v11, "--checkin"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1483
    const/4 v6, 0x1

    .line 1481
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1484
    :cond_4
    const-string v11, "-c"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1485
    const/4 v6, 0x1

    .line 1486
    const/4 v5, 0x1

    goto :goto_2

    .line 1487
    :cond_5
    const-string v11, "--unplugged"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1488
    const/4 v7, 0x1

    goto :goto_2

    .line 1489
    :cond_6
    const-string v11, "--reset"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1490
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1491
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 1493
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->sendResetBatteryDataIntentFromCommand()V

    .line 1495
    const-string v11, "Battery stats reset."

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    const/4 v9, 0x1

    .line 1497
    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1498
    :cond_7
    const-string v11, "--write"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1499
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1500
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1501
    const-string v11, "Battery stats written."

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    const/4 v9, 0x1

    .line 1503
    monitor-exit v12

    goto :goto_2

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v11

    .line 1504
    :cond_8
    const-string v11, "-h"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1505
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1507
    :cond_9
    const-string v11, "-a"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1509
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_a

    .line 1510
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 1516
    :cond_a
    :try_start_2
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v11, v1, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    goto/16 :goto_2

    .line 1518
    :catch_0
    move-exception v3

    .line 1519
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 1526
    .end local v1    # "arg":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    :cond_b
    if-nez v9, :cond_0

    .line 1529
    if-eqz v6, :cond_c

    .line 1530
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1531
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1532
    :try_start_3
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11, p2, v0, v7, v5}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/util/List;ZZ)V

    .line 1533
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1540
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_3
    sget-boolean v11, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v11, :cond_0

    .line 1541
    const-string v11, "BatSS"

    const-string v12, "-dump"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1533
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_2
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v11

    .line 1535
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_c
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1536
    :try_start_5
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11, p2, v7, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;ZI)V

    .line 1537
    monitor-exit v12

    goto :goto_3

    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v11
.end method

.method public enforceCallingPermission()V
    .locals 5

    .prologue
    .line 817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOffStatistics()[B
    .locals 10

    .prologue
    .line 845
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BATTERY_STATS"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 849
    const-string v6, "BatSS"

    const-string v7, "getScreenOffStatistics"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    const/4 v1, 0x0

    .line 856
    .local v1, "data":[B
    :try_start_0
    sget-object v7, Lcom/android/server/am/BatteryStatsService;->screenOffObject:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :try_start_1
    iget v6, p0, Lcom/android/server/am/BatteryStatsService;->screenStatus:I

    if-nez v6, :cond_3

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->getStatisticsInternal()[B

    move-result-object v2

    .line 863
    .local v2, "data1":[B
    if-eqz v2, :cond_3

    array-length v6, v2

    if-lez v6, :cond_3

    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 865
    .local v5, "out1":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v8, v2

    invoke-virtual {v5, v2, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 866
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 867
    invoke-direct {p0, v5}, Lcom/android/server/am/BatteryStatsService;->createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v6, :cond_2

    .line 870
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->minus(Lcom/android/internal/os/BatteryStatsImpl;)Z

    .line 871
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v6, :cond_1

    .line 872
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl;->add(Lcom/android/internal/os/BatteryStatsImpl;)Z

    .line 874
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 875
    invoke-direct {p0, v5}, Lcom/android/server/am/BatteryStatsService;->createBatteryStatsImplFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 878
    :cond_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 885
    .end local v0    # "currentBatteryStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "data1":[B
    .end local v5    # "out1":Landroid/os/Parcel;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 886
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v6, :cond_4

    .line 887
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 889
    :cond_4
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 891
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_5

    .line 892
    if-eqz v1, :cond_7

    .line 893
    const-string v6, "BatSS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "off data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_5
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 901
    monitor-exit v7

    .line 910
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_6
    :goto_1
    return-object v1

    .line 895
    .restart local v4    # "out":Landroid/os/Parcel;
    :cond_7
    const-string v6, "BatSS"

    const-string v8, "off data is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    .end local v4    # "out":Landroid/os/Parcel;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 903
    :catch_0
    move-exception v3

    .line 904
    .local v3, "ex":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v6, :cond_6

    .line 905
    const-string v6, "BatSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScreenOffStatistics exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getStatistics()[B
    .locals 5

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "out":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 330
    .local v0, "data":[B
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 331
    if-eqz v0, :cond_1

    .line 332
    const-string v2, "BatSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-object v0

    .line 334
    :cond_1
    const-string v2, "BatSS"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteBluetoothOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 663
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 664
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z

    .line 665
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOffLocked()V

    .line 667
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 670
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 671
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 672
    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 675
    :cond_0
    return-void

    .line 667
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteBluetoothOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 627
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 628
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 629
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOnLocked()V

    .line 636
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    .line 640
    :goto_0
    monitor-exit v2

    .line 641
    return-void

    .line 638
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 679
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 681
    monitor-exit v1

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 721
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 723
    monitor-exit v1

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 686
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 688
    monitor-exit v1

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 728
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 730
    monitor-exit v1

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteInputEvent()V
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 485
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteInputEventAtomic()V

    .line 486
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 778
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 780
    monitor-exit v1

    .line 781
    return-void

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 786
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V

    .line 788
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 518
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 520
    monitor-exit v1

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOff()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 504
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOn()V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 497
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 511
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 526
    .local v0, "simState":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 528
    monitor-exit v2

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 468
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 470
    monitor-exit v1

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteScreenOff()V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 475
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenOffLocked()V

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->handleBatteryDataWhenScreenOnOff(I)V

    .line 481
    return-void

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteScreenOn()V
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 458
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenOnLocked()V

    .line 460
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->handleBatteryDataWhenScreenOnOff(I)V

    .line 464
    return-void

    .line 460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteStartAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 547
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 549
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartDisplay(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 592
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteDisplayOnLocked(I)V

    .line 594
    monitor-exit v1

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartGps(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 444
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V

    .line 446
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartGpu(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 576
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpuOnLocked(I)V

    .line 578
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 416
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 418
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 561
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 343
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 345
    const-wide/16 v0, 0x0

    .line 347
    .local v0, "startTimeMillis":J
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 353
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 355
    const-string v2, "BatSS"

    const-string v4, "C S-WL"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;I)V

    .line 362
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 364
    const-string v2, "BatSS"

    const-string v4, "CE S-WL"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    monitor-exit v3

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 402
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 554
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopDisplay(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 599
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteDisplayOffLocked(I)V

    .line 601
    monitor-exit v1

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopGps(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 451
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V

    .line 453
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopGpu(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 583
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpuOffLocked(I)V

    .line 585
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 423
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 568
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 372
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 374
    const-wide/16 v0, 0x0

    .line 376
    .local v0, "startTimeMillis":J
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 382
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 384
    const-string v2, "BatSS"

    const-string v4, "C E-WL"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;I)V

    .line 391
    sget-boolean v2, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 393
    const-string v2, "BatSS"

    const-string v4, "CE E-WL"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3
    monitor-exit v3

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 409
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 411
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 490
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 437
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 439
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 430
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 432
    monitor-exit v1

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 749
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 756
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 758
    monitor-exit v1

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 714
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 716
    monitor-exit v1

    .line 717
    return-void

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 770
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 772
    monitor-exit v1

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 707
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 709
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 763
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 765
    monitor-exit v1

    .line 766
    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiOff()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 540
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiOn()V
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 533
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 535
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 607
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 609
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 614
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 616
    monitor-exit v1

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 693
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 695
    monitor-exit v1

    .line 696
    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 735
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 700
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 702
    monitor-exit v1

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 742
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 744
    monitor-exit v1

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 621
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v5, 0x3e8

    const v4, 0x10e000c

    .line 262
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 263
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "BatSS"

    const-string v2, "publish"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    const-string v1, "batterystats"

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v2, Lcom/android/internal/os/PowerProfile;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    .line 269
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v2, Lcom/android/internal/os/PowerProfile;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setNumGpuSpeedSteps(I)V

    .line 271
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setContext(Landroid/content/Context;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v2, Lcom/android/internal/os/PowerProfile;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    .line 280
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v2, Lcom/android/internal/os/PowerProfile;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setNumGpuSpeedSteps(I)V

    .line 281
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mTotalScreenOffStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "BatSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBatteryState(IIIIII)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 799
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->registerIntents()V

    .line 801
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryState(IIIIII)V

    .line 802
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "BatSS"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shutdownScreenOffBatteryData()V

    .line 301
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
