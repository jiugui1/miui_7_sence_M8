.class public Lcom/htc/server/WirelessDisplayNotification;
.super Ljava/lang/Object;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayNotification$1;,
        Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_DONGLE_IP_ADDR:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

.field private static final EXTRA_DONGLE_VERSION:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final ICON_DONGLES_AVAILABLE:I = 0x302007f

.field private static final ICON_MIRROR_MODE_READY:I = 0x3020082

.field private static final ICON_MIRROR_MODE_RUNNING:I = 0x3020083

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

.field private static final INTENT_DONGLE_FIRMWARE_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

.field private static final INTENT_NOTIFICATION_STATUS_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

.field private static JPN_SKU:Z = false

.field private static final NOTIFICATION_ID:I = 0x302007f

.field private static final NOTIFICATION_TYPE_DONGLES_AVAILABLE:I = 0x2

.field private static final NOTIFICATION_TYPE_DONGLE_AVAILABLE:I = 0x1

.field private static final NOTIFICATION_TYPE_DONGLE_MIRROR:I = 0x4

.field private static final NOTIFICATION_TYPE_DONGLE_NONE:I = 0x0

.field private static final NOTIFICATION_TYPE_DONGLE_READY:I = 0x3

.field private static final NO_WIFI_CONCURRENT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrNotificationType:I

.field private mNotificationPreference:Z

.field private mNotificationWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    sput-boolean v4, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    .line 131
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 132
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v5, "Android_Core_Framework"

    invoke-virtual {v0, v5, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 133
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v5, "wirelss_disp_notification_mode"

    invoke-interface {v1, v5, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "wdnMode":I
    if-ne v2, v3, :cond_0

    :goto_0
    sput-boolean v3, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    .line 135
    return-void

    :cond_0
    move v3, v4

    .line 134
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    .line 110
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    .line 143
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WirelessDisplayNotification;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WirelessDisplayNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WirelessDisplayNotification;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WirelessDisplayNotification;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    return p1
.end method

.method static synthetic access$402(Lcom/htc/server/WirelessDisplayNotification;J)J
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WirelessDisplayNotification;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    return-wide p1
.end method

.method private getNotification(I)Landroid/app/Notification;
    .locals 13
    .param p1, "nType"    # I

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x4

    .line 266
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 269
    .local v6, "res":Landroid/content/res/Resources;
    const v5, 0x30700ec

    .line 270
    .local v5, "nTitleResId":I
    sget-boolean v7, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    if-eqz v7, :cond_0

    .line 271
    const v5, 0x30700ed

    .line 275
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 294
    iget v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-eq p1, v7, :cond_2

    .line 295
    const v3, 0x30700a1

    .line 296
    .local v3, "nTickerConnected":I
    const v4, 0x30700e9

    .line 297
    .local v4, "nTickerDetected":I
    sget-boolean v7, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    if-eqz v7, :cond_1

    .line 298
    const v3, 0x30700a2

    .line 299
    const v4, 0x30700ea

    .line 301
    :cond_1
    iget v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-nez v7, :cond_5

    .line 302
    if-ne v10, p1, :cond_4

    .line 303
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 313
    .end local v3    # "nTickerConnected":I
    .end local v4    # "nTickerDetected":I
    :cond_2
    :goto_1
    iget-wide v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    cmp-long v7, v11, v7

    if-nez v7, :cond_3

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    .line 316
    :cond_3
    invoke-virtual {v0, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 320
    .local v2, "n":Landroid/app/Notification;
    const/16 v7, 0x20

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 323
    const/4 v7, 0x5

    iput v7, v2, Landroid/app/Notification;->priority:I

    .line 324
    iget v7, v2, Landroid/app/Notification;->flags:I

    const/high16 v8, -0x80000000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 326
    return-object v2

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "n":Landroid/app/Notification;
    :pswitch_1
    const v7, 0x302007f

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 278
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 279
    const v7, 0x30700ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 283
    :pswitch_2
    const v7, 0x3020083

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 284
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 285
    const v7, 0x307009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 305
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "nTickerConnected":I
    .restart local v4    # "nTickerDetected":I
    :cond_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 307
    :cond_5
    if-ne v10, p1, :cond_2

    .line 308
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getNotificationPreference(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 554
    const/4 v6, 0x1

    .line 555
    .local v6, "bRet":Z
    const-string v2, "content://com.htc.wifidisplay.provider.setting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 557
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    move v7, v6

    .line 590
    .end local v6    # "bRet":Z
    .local v7, "bRet":I
    :goto_0
    return v7

    .line 560
    .end local v7    # "bRet":I
    .restart local v6    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 561
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 562
    const-string v2, "WirelessDisplayNotification"

    const-string v3, "acquireContentProviderClient fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 563
    .restart local v7    # "bRet":I
    goto :goto_0

    .line 566
    .end local v7    # "bRet":I
    :cond_1
    const/4 v8, 0x0

    .line 568
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 569
    if-nez v8, :cond_3

    .line 570
    const-string v2, "WirelessDisplayNotification"

    const-string v3, "null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    if-eqz v8, :cond_2

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v7, v6

    .line 571
    .restart local v7    # "bRet":I
    goto :goto_0

    .line 574
    .end local v7    # "bRet":I
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-ne v12, v2, :cond_6

    .line 575
    const-string v2, "notification"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 576
    .local v11, "nameColumn":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 577
    .local v10, "f":I
    if-eqz v10, :cond_5

    move v6, v12

    .line 584
    .end local v10    # "f":I
    .end local v11    # "nameColumn":I
    :goto_1
    if-eqz v8, :cond_4

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v7, v6

    .line 590
    .restart local v7    # "bRet":I
    goto :goto_0

    .line 577
    .end local v7    # "bRet":I
    .restart local v10    # "f":I
    .restart local v11    # "nameColumn":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 579
    .end local v10    # "f":I
    .end local v11    # "nameColumn":I
    :cond_6
    :try_start_2
    const-string v2, "WirelessDisplayNotification"

    const-string v3, "cursor.moveToFirst fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 581
    :catch_0
    move-exception v9

    .line 582
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "WirelessDisplayNotification"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    if-eqz v8, :cond_4

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 584
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 584
    throw v2
.end method


# virtual methods
.method public notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strIPAddr"    # Ljava/lang/String;
    .param p2, "strVersion"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyFirmwareUpdate] ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public updateNotification(ZIZLjava/util/List;)V
    .locals 12
    .param p1, "mirrorOn"    # Z
    .param p2, "dongleCount"    # I
    .param p3, "wifiOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p4, "mDongleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const/4 v7, 0x0

    .line 173
    .local v7, "updateType":I
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_0

    .line 174
    const-string v9, "WirelessDisplayNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNotification() mirror = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dongles = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wifi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 186
    .local v5, "nm":Landroid/app/NotificationManager;
    if-nez v5, :cond_2

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    if-nez v9, :cond_4

    .line 192
    :cond_3
    const v9, 0x302007f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 193
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    .line 194
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    goto :goto_0

    .line 198
    :cond_4
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v10, "wireless_display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/WirelessDisplayManager;

    .line 200
    .local v8, "wdm":Lcom/htc/service/WirelessDisplayManager;
    if-eqz v8, :cond_1

    .line 204
    const/4 v9, 0x1

    if-ne v9, p1, :cond_7

    .line 206
    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v4

    .line 207
    .local v4, "nMirrorState":I
    const/4 v9, 0x2

    if-ne v4, v9, :cond_5

    .line 208
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    .line 209
    const-string v9, "WirelessDisplayNotification"

    const-string v10, "mirror=on, state=enabling"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_5
    const/4 v7, 0x4

    .line 249
    .end local v4    # "nMirrorState":I
    :cond_6
    :goto_1
    if-nez v7, :cond_10

    .line 250
    const v9, 0x302007f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 251
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    .line 252
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    goto :goto_0

    .line 217
    :cond_7
    const/4 v2, 0x0

    .line 218
    .local v2, "isUncfgDongle":Z
    const/4 v3, 0x0

    .line 221
    .local v3, "isUsedDongle":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    .line 222
    .local v1, "info":Lcom/htc/service/DongleInfo;
    iget v9, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    iget v9, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 224
    :cond_9
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_a

    .line 225
    const-string v9, "WirelessDisplayNotification"

    const-string v10, "unconfig dongle found!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_a
    const/4 v2, 0x1

    .line 232
    .end local v1    # "info":Lcom/htc/service/DongleInfo;
    :cond_b
    if-nez v2, :cond_e

    .line 233
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    .line 234
    .restart local v1    # "info":Lcom/htc/service/DongleInfo;
    iget-object v9, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/service/WirelessDisplayManager;->getDonglePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 235
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_d

    .line 236
    const-string v9, "WirelessDisplayNotification"

    const-string v10, "used dongle found!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_d
    const/4 v3, 0x1

    .line 243
    .end local v1    # "info":Lcom/htc/service/DongleInfo;
    :cond_e
    const/4 v9, 0x1

    if-eq v9, v2, :cond_f

    const/4 v9, 0x1

    if-ne v9, v3, :cond_6

    .line 244
    :cond_f
    const/4 v7, 0x2

    goto :goto_1

    .line 256
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "isUncfgDongle":Z
    .end local v3    # "isUsedDongle":Z
    :cond_10
    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayNotification;->getNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 258
    .local v6, "notification":Landroid/app/Notification;
    iget v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-eq v7, v9, :cond_11

    .line 259
    const v9, 0x302007f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    :cond_11
    const v9, 0x302007f

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 262
    iput v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    goto/16 :goto_0
.end method