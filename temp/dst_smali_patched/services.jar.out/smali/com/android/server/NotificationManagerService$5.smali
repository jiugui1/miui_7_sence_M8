.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .local v9, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/NotificationManagerService;->DBG_INTERNAL:Z
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v21, 0x0

    .local v21, "queryRestart":Z
    const/16 v19, 0x0

    .local v19, "queryRemove":Z
    const/16 v17, 0x0

    .local v17, "packageChanged":Z
    const/4 v12, 0x1

    .local v12, "cancelNotifications":Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_1
    const/16 v18, 0x0

    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v19, :cond_4

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v20, 0x1

    .local v20, "queryReplace":Z
    :goto_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    :goto_1
    const/4 v10, 0x0

    .local v10, "anyListenersInvolved":Z
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_c

    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    aget-object v2, v11, v15

    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v21, :cond_b

    const/4 v5, 0x1

    :goto_3
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v10    # "anyListenersInvolved":Z
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "queryReplace":Z
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .restart local v20    # "queryReplace":Z
    :cond_5
    if-eqz v21, :cond_6

    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .local v22, "uri":Landroid/net/Uri;
    if-nez v22, :cond_8

    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_4
    return-void

    .restart local v18    # "pkgList":[Ljava/lang/String;
    .restart local v20    # "queryReplace":Z
    .restart local v22    # "uri":Landroid/net/Uri;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_7

    if-eqz v17, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .local v14, "enabled":I
    const/4 v1, 0x1

    if-eq v14, v1, :cond_9

    if-nez v14, :cond_a

    :cond_9
    const/4 v12, 0x0

    .end local v14    # "enabled":I
    :cond_a
    :goto_5
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v18, v1

    .restart local v18    # "pkgList":[Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/android/server/NotificationManagerService;->DBG_INTERNAL:Z
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "NotificationService"

    const-string v3, "Exception trying to look up app enabled setting"

    invoke-static {v1, v3, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v22    # "uri":Landroid/net/Uri;
    .restart local v10    # "anyListenersInvolved":Z
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_c
    if-eqz v10, :cond_7

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access_updateNotificationPulse(Lcom/android/server/NotificationManagerService;)V

    goto :goto_4

    .end local v10    # "anyListenersInvolved":Z
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    :cond_e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mUserPresent:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto :goto_4

    :cond_f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mUserPresent:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_4

    :cond_10
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    :cond_11
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, "userHandle":I
    if-ltz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .end local v8    # "userHandle":I
    :cond_12
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mUserPresent:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFlashDuringPlugged:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    :cond_14
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_15
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/NotificationManagerService;->updateBatteryStatus(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_16
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->cancelAll_pd()V

    goto/16 :goto_4

    :cond_18
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLights()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    :cond_19
    const-string v1, "com.htc.action.REMINDER_TIME_TICK"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2602(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4
.end method