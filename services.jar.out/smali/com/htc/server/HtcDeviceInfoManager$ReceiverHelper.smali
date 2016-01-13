.class Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final ACTION_NOTIFY_KERNEL_CRASH:Ljava/lang/String; = "com.htc.updater.NOTIFY_KERNEL_CRASH"

.field private static final ACTION_NOTIFY_SYSTEM_CRASH:Ljava/lang/String; = "com.htc.updater.NOTIFY_SYSTEM_CRASH"

.field private static final DELAY_FLUSH_INTERNAL:J = 0xea60L

.field private static final DISPLAY_TIMEOUT_AUTO_SLEEP:J = 0xea60L

.field private static final FLUSH_CLIENT_INFO_INTERVAL:J

.field private static final FLUSH_INFO_INTERVAL:J

.field private static final FLUSH_USAGE_TIME_INTERVAL:J

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final LOGCAP_ACTION:Ljava/lang/String; = "com.htc.screen_capture_action"

.field private static final LOGINS_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogInstalledApp"

.field private static final LOGINS_INTERVAL:J

.field private static final LOGSC_ACTION:Ljava/lang/String; = "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

.field private static final MAX_USER_ACTIVITY_DURATION:J

.field private static final MEDIA_RECEIVER_ACTION:Ljava/lang/String; = "com.htc.HtcDeviceInfoManager.MediaReceiver"

.field private static final OUTPUT_DEVICE_INFO_INTERVAL:J

.field private static final ULOG_POLICY_CHANGED_ACTION:Ljava/lang/String; = "com.htc.intent.action.ULOG_POLICY_CHANGED"

.field private static final UPDATE_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 270
    const-wide/16 v3, 0x0

    .local v3, "flushInfoIntervalForTest":J
    const-wide/16 v5, 0x0

    .local v5, "flushUsageTimeInterval":J
    const-wide/16 v1, 0x0

    .local v1, "flushClientInfoInterval":J
    const-wide/16 v11, 0x0

    .line 271
    .local v11, "updateInterval":J
    const-wide/16 v7, 0x0

    .local v7, "loginsInterval":J
    const-wide/16 v9, 0x0

    .line 273
    .local v9, "outputDeviceInfoInterval":J
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v13

    if-nez v13, :cond_0

    .line 275
    :try_start_0
    const-string v13, "htcdeviceinfo.flush_info"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 276
    const-string v13, "htcdeviceinfo.flush_usage_time"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 277
    const-string v13, "htcdeviceinfo.flush_client_info"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 278
    const-string v13, "htcdeviceinfo.logins"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 279
    const-string v13, "htcdeviceinfo.output_deviceinfo"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 280
    const-string v13, "htcdeviceinfo.update"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v11

    .line 286
    :cond_0
    :goto_0
    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-lez v13, :cond_2

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v3

    :goto_1
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    .line 287
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_3

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v5

    :goto_2
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    .line 288
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-lez v13, :cond_4

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v1

    :goto_3
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    .line 289
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_5

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v7

    :goto_4
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINS_INTERVAL:J

    .line 290
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-lez v13, :cond_6

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v9

    :goto_5
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->OUTPUT_DEVICE_INFO_INTERVAL:J

    .line 291
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_7

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v11

    :goto_6
    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    .line 293
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "HtcDeviceInfoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FLUSH_INFO_INTERVAL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v15, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", FLUSH_USAGE_TIME_INTERVAL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v15, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", FLUSH_CLIENT_INFO_INTERVAL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v15, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", UPDATE_INTERVAL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v15, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    const-string v13, "persist.deviceinfo.idletime"

    const-wide/32 v14, 0xafc8

    invoke-static {v13, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sput-wide v13, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v13, "HtcDeviceInfoManager"

    const-string v14, "[Parse interval]"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const-wide/32 v13, 0x1b7740

    goto/16 :goto_1

    .line 287
    :cond_3
    const-wide/32 v13, 0x5265c00

    goto/16 :goto_2

    .line 288
    :cond_4
    const-wide/32 v13, 0x5265c00

    goto/16 :goto_3

    .line 289
    :cond_5
    const-wide/32 v13, 0x5265c00

    goto/16 :goto_4

    .line 290
    :cond_6
    const-wide/32 v13, 0x1499700

    goto :goto_5

    .line 291
    :cond_7
    const-wide/32 v13, 0x927c0

    goto :goto_6
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getUIMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINS_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->OUTPUT_DEVICE_INFO_INTERVAL:J

    return-wide v0
.end method

.method private static getUIMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "getUIMode from customizationBundle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {p0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->loadCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 588
    .local v0, "customizationBundle":Landroid/os/Bundle;
    const-string v2, ""

    .line 590
    .local v2, "uiMode":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 591
    const-string v3, "setting"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 592
    .local v1, "setting":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 593
    const-string v3, "ui_mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, ""

    .line 594
    :goto_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ui_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v1    # "setting":Landroid/os/Bundle;
    :goto_1
    return-object v2

    .line 593
    .restart local v1    # "setting":Landroid/os/Bundle;
    :cond_0
    const-string v3, "ui_mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 596
    :cond_1
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "customization setting = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 599
    .end local v1    # "setting":Landroid/os/Bundle;
    :cond_2
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "customizationBundle = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    const-string v2, "content://customization_settings/SettingTable/application_Crash_Report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 606
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 607
    .local v8, "customizationBundle":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 608
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 612
    if-eqz v7, :cond_0

    .line 613
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 614
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 615
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 616
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 618
    .local v10, "data":[B
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 620
    .local v12, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v12, v10, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 621
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 622
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v8    # "customizationBundle":Landroid/os/Bundle;
    .local v9, "customizationBundle":Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 629
    .end local v6    # "columnIndex":I
    .end local v9    # "customizationBundle":Landroid/os/Bundle;
    .end local v10    # "data":[B
    .end local v12    # "parcel":Landroid/os/Parcel;
    .restart local v8    # "customizationBundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 634
    return-object v8

    .line 626
    :catch_0
    move-exception v11

    .line 627
    .local v11, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "loadCustomizeData fail"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    if-eqz v7, :cond_1

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 629
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v7, :cond_2

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_2
    const/4 v7, 0x0

    .line 629
    throw v2

    .end local v8    # "customizationBundle":Landroid/os/Bundle;
    .restart local v6    # "columnIndex":I
    .restart local v9    # "customizationBundle":Landroid/os/Bundle;
    .restart local v10    # "data":[B
    .restart local v12    # "parcel":Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "customizationBundle":Landroid/os/Bundle;
    .restart local v8    # "customizationBundle":Landroid/os/Bundle;
    goto :goto_2

    .line 626
    .end local v8    # "customizationBundle":Landroid/os/Bundle;
    .restart local v9    # "customizationBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "customizationBundle":Landroid/os/Bundle;
    .restart local v8    # "customizationBundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "infoOperators"    # [Lcom/htc/server/HtcInfoOperator;

    .prologue
    const-wide/16 v11, -0x1

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 360
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 361
    .local v1, "co":Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;
    const-string v8, "screen_off_timeout"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 364
    const-string v8, "screen_off_timeout"

    sget-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v2, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 366
    .local v3, "duration":J
    move-object v0, p2

    .local v0, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v7, v0, v5

    .line 367
    .local v7, "op":Lcom/htc/server/HtcInfoOperator;
    cmp-long v8, v3, v11

    if-nez v8, :cond_0

    .line 368
    sget-wide v8, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    .line 366
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 369
    :cond_0
    cmp-long v8, v3, v11

    if-gez v8, :cond_1

    .line 370
    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v8, v9}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {v7, v3, v4}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 374
    .end local v7    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_2
    return-void
.end method

.method public static registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 405
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.TELLHTC_ERROR_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;

    invoke-direct {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;-><init>(Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.DEVICEINFO_INTERNAL_USAGE"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 409
    return-void
.end method

.method public static registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "mReceiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.screen_capture_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;

    invoke-direct {v2, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v3, "com.htc.permission.DEVICEINFO_INTERNAL_USAGE"

    invoke-virtual {p0, v2, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 386
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v1, "filterForLauncherBarChange":Landroid/content/IntentFilter;
    const-string v2, "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;

    invoke-direct {v2, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v3, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p0, v2, v1, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 390
    return-void
.end method

.method public static registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 339
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;

    invoke-direct {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    return-void
.end method

.method public static registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 324
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 326
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 327
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;

    const-string v2, "UDove_4"

    invoke-direct {v1, v2, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;-><init>(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 334
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 336
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static registerPolicyChangeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.DEVICEINFO_INTERNAL_USAGE"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 402
    return-void
.end method

.method public static registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v0, "filter":Landroid/content/IntentFilter;
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v1

    const-wide/high16 v3, 0x4016000000000000L    # 5.5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 352
    const-string v1, "com.htc.updater.NOTIFY_KERNEL_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    :goto_0
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.FEEDBACK_PROTECT"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    return-void

    .line 354
    :cond_0
    const-string v1, "com.htc.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerUIModeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveHandler"    # Landroid/os/Handler;

    .prologue
    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 394
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v2, "htc.permission.CUSTOMIZATION_CHANGE"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method public static setupPendingIntent(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "interval"    # J
    .param p4, "isPrecise"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 573
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 574
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 576
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v3, p2, v5

    .line 578
    .local v3, "triggerTime":J
    if-eqz p4, :cond_0

    .line 579
    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
