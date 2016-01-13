.class public Lvenom/common/lockscreen;
.super Ljava/lang/Object;
.source "lockscreen.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "m0narX_LSExtension"

    sput-object v0, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireBrightScreeen(Landroid/content/Context;)V
    .locals 4

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "VenomExtensionScreenOn"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lvenom/common/lockscreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lvenom/common/lockscreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void

    :cond_0
    sget-object v1, Lvenom/common/lockscreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getRemoteView(Landroid/content/Context;Landroid/app/Notification;)Landroid/view/ViewGroup;
    .locals 7

    const/4 v2, 0x0

    iget-object v2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v2, p0, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    sget-object v4, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    const-string v5, "getRemoteView failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getTextFromNotification(Landroid/view/ViewGroup;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isAllowedPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_lockscreen_notifications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :catch_0
    move-exception v3

    sget-object v5, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    const-string v6, "Cant read settings"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, "\\;"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    const-string v5, "com.android.phone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.google.android.gsf"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v2, v4

    const-string v6, "com.google.android.talk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isAllowedPackageDot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :catch_0
    move-exception v3

    sget-object v5, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    const-string v6, "Cant read settings"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static isDotViewNotificationsEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_dot_view_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static setDotNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lvenom/common/lockscreen;->isDotViewNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dotview_apps"

    invoke-static {p0, p1, v1}, Lvenom/common/lockscreen;->isAllowedPackageDot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "tweaks_notif_dot_screenon"

    invoke-static {p0, p1, v1}, Lvenom/common/lockscreen;->isAllowedPackageDot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lvenom/common/lockscreen;->acquireBrightScreeen(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.venom.message_unread_message_count"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "unread_message_count"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "require_customimage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 25

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lvenom/common/lockscreen;->setDotNotification(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lvenom/common/lockscreen;->isAllowedPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lvenom/common/lockscreen;->getRemoteView(Landroid/content/Context;Landroid/app/Notification;)Landroid/view/ViewGroup;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    if-nez v21, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v9, 0x50

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x50

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/16 v22, 0x0

    const/16 v23, 0x50

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x1

    :goto_1
    if-nez v19, :cond_3

    if-nez v17, :cond_3

    if-eqz v5, :cond_0

    :cond_3
    new-instance v10, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-direct {v10, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    move-object v3, v15

    const-string v22, "com.google.android.gsf"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string v3, "Hangouts"

    :goto_2
    :try_start_0
    const-string v14, ""

    const-string v12, ""

    const-string v13, ""

    const-string v11, ""

    if-eqz v16, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v22, "com.facebook.katana"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "com.facebook.orca"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_4
    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    const-string v23, "Parsing facebook notification"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    const-string v23, ":"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v12, v6

    move-object v14, v3

    move-object v13, v8

    move-object v11, v8

    :goto_3
    invoke-virtual {v10, v12}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setContent(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setPriority(I)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setWhen(J)V

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Desc:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Title:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "From:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Content:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDropPendingIntent(Landroid/app/PendingIntent;)V

    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    if-lez v22, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    :goto_5
    if-nez p1, :cond_7

    const/16 p1, 0x534b

    :cond_7
    :try_start_1
    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Posting lockscreen notification from: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " with id: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v10}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    const-string v23, "Can\'t post notification!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const v22, 0x1020016

    invoke-static/range {v21 .. v22}, Lvenom/common/lockscreen;->getTextFromNotification(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v19

    const v22, 0x1020046

    invoke-static/range {v21 .. v22}, Lvenom/common/lockscreen;->getTextFromNotification(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v17

    const v22, 0x1020328

    invoke-static/range {v21 .. v22}, Lvenom/common/lockscreen;->getTextFromNotification(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v12, v18

    move-object v14, v3

    move-object v11, v3

    move-object v13, v3

    goto/16 :goto_3

    :cond_b
    if-eqz v17, :cond_c

    :try_start_3
    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    if-eqz v5, :cond_d

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    :cond_c
    move-object/from16 v17, v5

    if-nez v17, :cond_d

    const-string v17, ""

    :cond_d
    if-nez v19, :cond_e

    move-object/from16 v19, v3

    :cond_e
    if-eqz v5, :cond_f

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v22

    if-nez v22, :cond_f

    move-object v12, v5

    :goto_6
    move-object v14, v3

    move-object/from16 v13, v17

    move-object/from16 v11, v19

    goto/16 :goto_3

    :cond_f
    move-object/from16 v12, v17

    goto :goto_6

    :catch_1
    move-exception v7

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Cant set info for: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v7

    sget-object v22, Lvenom/common/lockscreen;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Cant get app icon of: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v22

    goto/16 :goto_2
.end method
