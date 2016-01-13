.class public Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
.super Landroid/os/Handler;
.source "HtcCdmaEmergencyCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_CALL_COLLI_DISCONNECTED:I = 0x2

.field private static final EVENT_CALL_DISCONNECTED:I = 0x1

.field private static final EVENT_CALL_STATE_ACTIVE:I = 0x3

.field private static final EVENT_CALL_STATE_IDLE:I = 0x4

.field private static final EVENT_WAITING_ECM_TIMEOUT:I = 0x5

.field public static final HTC_START_ECM_TIMER:I = 0x64

.field public static final HTC_STOP_ECM_TIMER:I = 0x65

.field private static final INTENT_WAITING_ECM_TIMEOUT_MS:I = 0x5dc

.field private static final INTENT_WAITING_ECM_TIMER:Ljava/lang/String; = "com.htc.intent.telephony.waiting_ecm"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final logEcmPrefix:Ljava/lang/String; = "ECM-"


# instance fields
.field private mCallStateActive:Z

.field private mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

.field private mEmergencyCallBackModeStatus:Z

.field private mEmergencyCallStatus:Z

.field private mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

.field private nbrEarlyPendingMoEnds:I

.field private nbrEmergencyCallStarted:I

.field private phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 96
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "updateEmgCallOnWhenCancel"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 342
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->removeMessages(I)V

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 346
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 347
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 351
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    .line 353
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 359
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method private delayReportingEmergencyCallStateEnding()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x5dc

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 362
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-nez v4, :cond_2

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 367
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.telephony.waiting_ecm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    .line 371
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.htc.intent.telephony.waiting_ecm"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    if-nez v4, :cond_0

    .line 374
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    .line 376
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-virtual {v1, v4, v2, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 378
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 380
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 381
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 391
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private dumpStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, "strBuf":Ljava/lang/StringBuilder;
    const-string v1, "ECM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, "CDMA"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 420
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "emgCallOn"    # Ljava/lang/Boolean;
    .param p2, "emgCallBackOn"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    .line 271
    .local v1, "currEmergencyCallStatus":Z
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    .line 272
    .local v0, "currEmergencyCallBackModeStatus":Z
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 275
    :cond_0
    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 279
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-eq v0, v6, :cond_2

    .line 280
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_2

    .line 281
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 282
    if-eqz v0, :cond_6

    .line 294
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-eqz v6, :cond_7

    :cond_3
    move v3, v4

    .line 295
    .local v3, "prevEmgOn":Z
    :goto_1
    if-nez v1, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    move v2, v4

    .line 296
    .local v2, "currEmgOn":Z
    :goto_2
    if-eq v3, v2, :cond_5

    .line 297
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_5

    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 304
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 305
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore enable/disable mobile data, currEmgOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    .line 321
    return-void

    .line 289
    .end local v2    # "currEmgOn":Z
    .end local v3    # "prevEmgOn":Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    goto :goto_0

    :cond_7
    move v3, v5

    .line 294
    goto :goto_1

    .restart local v3    # "prevEmgOn":Z
    :cond_8
    move v2, v5

    .line 295
    goto :goto_2

    .line 311
    .restart local v2    # "currEmgOn":Z
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v6, :cond_5

    .line 312
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-nez v2, :cond_a

    :goto_4
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    goto :goto_3

    :cond_a
    move v4, v5

    goto :goto_4
.end method

.method private reducedLogBoolean(Ljava/lang/Boolean;)C
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const/16 v0, 0x2d

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v0

    goto :goto_0
.end method

.method private reducedLogBoolean(Z)C
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 394
    if-eqz p1, :cond_0

    const/16 v0, 0x31

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method


# virtual methods
.method public dialEmergencyCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-nez v0, :cond_0

    .line 199
    const-string v0, "dial"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    .line 203
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 207
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 210
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 111
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 116
    :cond_0
    const-string v1, "dispose"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    .line 120
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 121
    return-void
.end method

.method public endPendingMoCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 218
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "early"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    .line 225
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    .line 231
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v2, :cond_0

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 144
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "disconnect"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 150
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    .line 151
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    if-lez v2, :cond_1

    .line 152
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    .line 154
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-gtz v2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    goto :goto_0

    .line 162
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    if-nez v2, :cond_0

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    goto :goto_0

    .line 167
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    .line 169
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v2, :cond_0

    .line 174
    const-string v2, "call-end"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    goto :goto_0

    .line 182
    :pswitch_3
    const-string v2, "evt-out"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 184
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    return v0
.end method

.method public modemEmergencyCallBackMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v2, "ril.cdma.inecmmode"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 254
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 255
    return-void

    .line 251
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
