.class public Lcom/android/internal/telephony/cdma/HtcRadio;
.super Landroid/os/Handler;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcRadio$1;,
        Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;,
        Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    }
.end annotation


# static fields
.field private static BROADCAST_CARRIER_ID_ENABLE:Z = false

.field private static final DEBUG_DETAIL:Z

.field private static final DISABLE_MULTIPLE_FLIGHT_MODE_REQUEST:Z = false

.field private static ERI_ALERT_SOUND_ID_ENABLE:Z = false

.field public static final ERI_EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final EVENT_3GIND:I = 0x0

.field private static final EVENT_ERI_UPDATE:I = 0x3

.field private static final EVENT_FLIGHT_MODE_PERIOD:I = 0x4

.field private static final EVENT_RADIO_OFF_REQUEST:I = 0x2

.field private static final EVENT_WORKAROUND_PERIOD:I = 0x1

.field private static final FEATURE_SUPPORT_ONLY_WAIT_3GIND_WHEN_CONNECTED:Z = true

.field private static final INTENT_FLIGHT_MODE_ALARM:Ljava/lang/String; = "com.htc.intent.telephony.cdma-flight.mode"

.field private static final INTENT_WORKAROUND_ALARM:Ljava/lang/String; = "com.htc.intent.telephony.cdma-flight.workaround"

.field private static final LOG_PREFIX:Ljava/lang/String; = "[HtcRadio] "

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final SKU_ID:I

.field private static final TIMEOUT_FLIGHT_MODE_ALARM_MS:I = 0x7530

.field private static final TIMEOUT_WORKAROUND_ALARM_MS:I = 0x0

.field private static final WORKAROUND_MODE:Z = true


# instance fields
.field private alertSoundId:I

.field private bannerStyle:I

.field private callGuard:I

.field private carrierId:I

.field private dataRoamingGuard:I

.field private distinctiveRinger:I

.field private eriText:Ljava/lang/String;

.field private m3gindState:I

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataChannelReleased:Ljava/lang/Boolean;

.field private mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field private mFlightModeAlarmIntent:Landroid/app/PendingIntent;

.field private mFlightModeTimerId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingFlightModeRequest:Z

.field private mPendingSimPowerRequest:Ljava/lang/Boolean;

.field private mPerformingRadioOff:Z

.field private mRoamingType:I

.field private mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

.field private mWorkaroundTimerId:I

.field private roamingIconIndicator:I

.field private roamingIconMode:I

.field private timeOfThisEri:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->DEBUG_DETAIL:Z

    .line 79
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v0, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    .line 788
    sget v0, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->ERI_ALERT_SOUND_ID_ENABLE:Z

    .line 790
    sput-boolean v1, Lcom/android/internal/telephony/cdma/HtcRadio;->BROADCAST_CARRIER_ID_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    .line 788
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 100
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 101
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 102
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 108
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->initEriInfo()V

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.htc.intent.telephony.cdma-flight.workaround"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcRadio;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcRadio;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcRadio;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcRadio;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcRadio;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V

    return-void
.end method

.method private change3GindState(II)V
    .locals 3
    .param p1, "newValue"    # I
    .param p2, "rawNewValue"    # I

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "strBuf":Ljava/lang/StringBuilder;
    const-string v1, "[HtcRadio] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "3GIND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, " Lower status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-ltz v1, :cond_0

    .line 256
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", with state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "CDMA"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 266
    if-nez p1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v1, v2, :cond_1

    .line 268
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private clearFlightModeAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .param p1, "aMgr"    # Landroid/app/AlarmManager;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 389
    move-object v0, p1

    .line 390
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "am":Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 393
    .restart local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 397
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private clearWorkaroundAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .param p1, "aMgr"    # Landroid/app/AlarmManager;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 287
    move-object v0, p1

    .line 288
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "am":Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 291
    .restart local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    .line 295
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 793
    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    .line 794
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] ERI exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 798
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;

    .line 799
    .local v2, "htcEriUpdate":Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;
    const/4 v6, 0x0

    .line 800
    .local v6, "updateIcon":Z
    const/4 v5, 0x1

    .line 801
    .local v5, "showPlmn":Z
    const/4 v1, 0x0

    .line 805
    .local v1, "flashPlmn":Z
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1

    .line 808
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_0

    .line 824
    :cond_1
    :goto_1
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 825
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param3:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 827
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_1

    .line 839
    :goto_2
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param1:I

    packed-switch v11, :pswitch_data_2

    .line 849
    :cond_2
    :goto_3
    const/4 v8, -0x1

    .line 850
    .local v8, "value_CallGuard":I
    const/4 v10, -0x1

    .line 851
    .local v10, "value_DistinctiveRinger":I
    const/4 v9, -0x1

    .line 852
    .local v9, "value_DataRoamingGuard":I
    const/4 v7, -0x1

    .line 853
    .local v7, "value_BannerStyle":I
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 855
    :cond_3
    iget v8, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param1:I

    .line 856
    iget v10, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param2:I

    .line 857
    iget v7, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param3:I

    .line 858
    iget v9, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->param4:I

    .line 860
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_3

    .line 875
    :goto_4
    packed-switch v7, :pswitch_data_4

    .line 887
    :cond_4
    :goto_5
    :pswitch_0
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->roaming_type:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 888
    iput v8, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 889
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] eriUpdate, mRoamingType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callGuard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDistinctiveRinger(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 895
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriBannerStyle(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 899
    :cond_6
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDataRoamingGuard(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 905
    :cond_7
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriCarrierId(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 906
    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcRadio;->BROADCAST_CARRIER_ID_ENABLE:Z

    if-eqz v11, :cond_8

    .line 908
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.telephony.cdma.EriManager.ERI"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    .local v3, "intent":Landroid/content/Intent;
    const-string v11, "carrier"

    iget v12, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 915
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    sget v11, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    const/16 v12, 0x71

    if-ne v11, v12, :cond_9

    .line 916
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->fixEriTextForLra(Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;)V

    .line 919
    :cond_9
    iget-object v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriText(Ljava/lang/String;)V

    .line 920
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v11, :cond_b

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 924
    .local v0, "bannerFromEri":Ljava/lang/String;
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 925
    const/4 v0, 0x0

    .line 927
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_d

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v13, v0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromEri(Ljava/util/Date;Ljava/lang/String;I)V

    .line 931
    .end local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 932
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, v12, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 937
    :cond_c
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    const/4 v4, 0x1

    .line 944
    .local v4, "isRoamingIcon":Z
    :goto_7
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    if-eqz v11, :cond_f

    .line 946
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] eriUpdate, dataRoamingGuard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    iget v12, v2, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->eri_id:I

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v11, v12, v13, v4}, Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;->haveERIupdate(IIZ)V

    goto/16 :goto_0

    .line 810
    .end local v4    # "isRoamingIcon":Z
    .end local v7    # "value_BannerStyle":I
    .end local v8    # "value_CallGuard":I
    .end local v9    # "value_DataRoamingGuard":I
    .end local v10    # "value_DistinctiveRinger":I
    :pswitch_1
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 811
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 812
    goto/16 :goto_1

    .line 814
    :pswitch_2
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 815
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 816
    goto/16 :goto_1

    .line 818
    :pswitch_3
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 819
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_1

    .line 829
    :pswitch_4
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 830
    goto/16 :goto_2

    .line 832
    :pswitch_5
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 833
    goto/16 :goto_2

    .line 835
    :pswitch_6
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    goto/16 :goto_2

    .line 841
    :pswitch_7
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 842
    goto/16 :goto_3

    .line 844
    :pswitch_8
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_3

    .line 862
    .restart local v7    # "value_BannerStyle":I
    .restart local v8    # "value_CallGuard":I
    .restart local v9    # "value_DataRoamingGuard":I
    .restart local v10    # "value_DistinctiveRinger":I
    :pswitch_9
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 863
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 864
    goto/16 :goto_4

    .line 866
    :pswitch_a
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 867
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 868
    goto/16 :goto_4

    .line 870
    :pswitch_b
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 871
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_4

    .line 879
    :pswitch_c
    const/4 v5, 0x1

    .line 880
    goto/16 :goto_5

    .line 882
    :pswitch_d
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 927
    .restart local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 937
    .end local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 951
    .restart local v4    # "isRoamingIcon":Z
    :cond_f
    const-string v11, "CDMA"

    const-string v12, "[HtcRadio] Data Roaming guard should be not null "

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 827
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 839
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 860
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 875
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private fixEriTextForLra(Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;)V
    .locals 3
    .param p1, "eriInfo"    # Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;

    .prologue
    .line 1171
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->eri_id:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->eri_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1172
    :cond_0
    const-string v0, "Digital Roaming"

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->text:Ljava/lang/String;

    .line 1176
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 1177
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] fixEriTextForLra, text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eri_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->eri_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_2
    return-void

    .line 1173
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->eri_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1174
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->HtcRadio:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBanner(Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/CdmaERIInfo;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private flightModeEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 586
    .local v0, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    if-nez v1, :cond_2

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 588
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopFlightModeTimer()V

    .line 590
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 591
    if-eqz v0, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 598
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setRadioPower off - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 601
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 602
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 609
    :goto_1
    return-void

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 605
    :cond_2
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setRadioPower off progressing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initEriInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 775
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 776
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 779
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 780
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 781
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 782
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 783
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 784
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 785
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 786
    return-void
.end method

.method private requestingRadioOffPeriod(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] setRadioPower off result, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 471
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 480
    :cond_0
    return-void

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setCdmaEriBannerStyle(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1031
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1032
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1033
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 1035
    :cond_0
    return v0

    .line 1031
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriCarrierId(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1015
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1016
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1017
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 1019
    :cond_0
    return v0

    .line 1015
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDataRoamingGuard(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1039
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1040
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1041
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 1043
    :cond_0
    return v0

    .line 1039
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDistinctiveRinger(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1023
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1024
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1025
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 1027
    :cond_0
    return v0

    .line 1023
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIconMode(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 968
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 969
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 970
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 972
    :cond_0
    return v0

    .line 968
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIndicator(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 958
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setCdmaEriRoamingIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 961
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 962
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 964
    :cond_0
    return v0

    .line 960
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1008
    invoke-static {p1}, Lcom/android/internal/telephony/HtcBuildUtils;->checkSprintChameleonNoBrandedOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1010
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 1011
    return-void

    .line 1010
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private startFlightModeTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 411
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 413
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 414
    .local v1, "context":Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 415
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearFlightModeAlarm(Landroid/app/AlarmManager;)V

    .line 417
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 420
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.telephony.cdma-flight.mode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 427
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 430
    return-void
.end method

.method private startWorkaroundTimer()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 315
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 316
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWorkaroundAlarm(Landroid/app/AlarmManager;)V

    .line 318
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 321
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 323
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {p0, v3, v2, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V

    .line 338
    return-void
.end method

.method private stopFlightModeTimer()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearFlightModeAlarm(Landroid/app/AlarmManager;)V

    .line 405
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 406
    return-void
.end method

.method private stopWorkaroundTimer()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWorkaroundAlarm(Landroid/app/AlarmManager;)V

    .line 304
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 306
    return-void
.end method

.method private timeoutFlightModePerioid(IZ)V
    .locals 3
    .param p1, "timerId"    # I
    .param p2, "byEvent"    # Z

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    if-eq v0, p1, :cond_0

    .line 437
    monitor-exit p0

    .line 461
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Timeout turn off radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eqz v0, :cond_1

    .line 452
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-ne v0, v1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 460
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private timeoutWorkaroundPerioid(IZ)V
    .locals 3
    .param p1, "timerId"    # I
    .param p2, "byEvent"    # Z

    .prologue
    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    if-eq v0, p1, :cond_0

    .line 346
    monitor-exit p0

    .line 379
    :goto_0
    return-void

    .line 348
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 349
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 350
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v0, v1, :cond_3

    .line 351
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Ready to release channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-ne v0, v1, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 366
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 373
    :cond_3
    :try_start_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Turn off radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 378
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private update3GindState(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 223
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 224
    .local v0, "inds":[I
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 225
    aget v1, v0, v3

    .line 226
    .local v1, "state":I
    if-lez v1, :cond_0

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_0
    monitor-enter p0

    .line 230
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-eq v2, v1, :cond_1

    .line 231
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->change3GindState(II)V

    .line 236
    :goto_0
    monitor-exit p0

    .line 245
    .end local v0    # "inds":[I
    .end local v1    # "state":I
    :goto_1
    return-void

    .line 234
    .restart local v0    # "inds":[I
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 239
    .end local v1    # "state":I
    :cond_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND skip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v0    # "inds":[I
    :cond_3
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 144
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 156
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public flightModeRequest(Z)Z
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public flightModeRequest(ZLjava/lang/Boolean;)Z
    .locals 5
    .param p1, "request"    # Z
    .param p2, "simPower"    # Ljava/lang/Boolean;

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "valueReturn":Z
    monitor-enter p0

    .line 506
    :try_start_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] Turn off radio request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", released="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eq v2, p1, :cond_0

    .line 513
    if-eqz p1, :cond_3

    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startFlightModeTimer()V

    .line 525
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 527
    :cond_0
    if-eqz p2, :cond_1

    .line 528
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 531
    :cond_1
    if-eqz p1, :cond_4

    .line 535
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 538
    const/4 v1, 0x1

    .line 568
    :cond_2
    :goto_1
    monitor-exit p0

    .line 569
    return v1

    .line 520
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sput-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    .line 521
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] stopFlightModeTimer  performRadioCommandState change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopFlightModeTimer()V

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 549
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v2, v3, :cond_5

    .line 551
    const/4 v1, 0x1

    .line 553
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    if-eqz v2, :cond_2

    .line 554
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 556
    .local v0, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_6

    .line 557
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    goto :goto_1

    .line 560
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getCdmaEriAlertSoundId(Z)I
    .locals 4
    .param p1, "inService"    # Z

    .prologue
    .line 1115
    const/4 v0, -0x1

    .line 1116
    .local v0, "soundId":I
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcRadio;->ERI_ALERT_SOUND_ID_ENABLE:Z

    if-eqz v1, :cond_0

    .line 1117
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 1119
    :cond_0
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] getCdmaEriAlertSoundId, soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v0

    .line 1117
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCdmaEriBannerStyle()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    return v0
.end method

.method public getCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    return v0
.end method

.method public getCdmaEriCarrierId()I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    return v0
.end method

.method public getCdmaEriDataRoamingGuard()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    return v0
.end method

.method public getCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    return v0
.end method

.method public getCdmaEriRoamingIconMode()I
    .locals 2

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, "value":I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-ltz v1, :cond_0

    .line 1087
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 1089
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingIndicator()I
    .locals 2

    .prologue
    .line 1073
    const/4 v0, 0x1

    .line 1074
    .local v0, "value":I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-ltz v1, :cond_0

    .line 1075
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 1077
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingType()I
    .locals 3

    .prologue
    .line 1131
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriRoamingType, mRoamingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1098
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    return-object v0
.end method

.method public getDataState()Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .locals 1

    .prologue
    .line 620
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    monitor-exit p0

    return-object v0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEriTimeStamp()Ljava/util/Date;
    .locals 7

    .prologue
    .line 1060
    const/4 v2, 0x0

    .line 1061
    .local v2, "eriTimeStamp":Ljava/util/Date;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1063
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/Date;

    .end local v2    # "eriTimeStamp":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1065
    .end local v0    # "currentTime":J
    :cond_0
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->update3GindState(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->requestingRadioOffPeriod(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 187
    :pswitch_3
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] ERIInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->eriUpdate(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 191
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hasFlightModeRequested()Z
    .locals 1

    .prologue
    .line 578
    monitor-enter p0

    .line 579
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V
    .locals 6
    .param p1, "newState"    # Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .prologue
    .line 632
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 635
    move-object v0, p1

    .line 636
    .local v0, "reqDataState":Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    monitor-enter p0

    .line 637
    :try_start_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Data state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", released="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, "skipStateUpdate":Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v0, v3, :cond_0

    .line 641
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 663
    .local v2, "turnOffRequired":Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 733
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v1, :cond_2

    .line 734
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 736
    :cond_2
    if-eqz v2, :cond_3

    .line 741
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Turn off radio directly, ongoing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 745
    :cond_3
    monitor-exit p0

    .line 750
    .end local v0    # "reqDataState":Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .end local v1    # "skipStateUpdate":Z
    .end local v2    # "turnOffRequired":Z
    :cond_4
    return-void

    .line 646
    .restart local v0    # "reqDataState":Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .restart local v1    # "skipStateUpdate":Z
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 648
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    goto :goto_0

    .line 745
    .end local v1    # "skipStateUpdate":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 653
    .restart local v1    # "skipStateUpdate":Z
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 654
    goto :goto_0

    .line 658
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 678
    .restart local v2    # "turnOffRequired":Z
    :pswitch_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 680
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 682
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_1

    .line 685
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_5

    .line 686
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 688
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v3, v4, :cond_1

    .line 692
    const/4 v1, 0x1

    .line 694
    goto :goto_1

    .line 696
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_6

    .line 697
    const/4 v1, 0x1

    goto :goto_1

    .line 699
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 700
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 701
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 702
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 705
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 709
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_9

    .line 713
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    .line 719
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 721
    goto :goto_1

    .line 717
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_2

    .line 723
    :pswitch_7
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 725
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 727
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 728
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 729
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 730
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
