.class public Lcom/android/internal/telephony/gsm/OrangeEccSms;
.super Ljava/lang/Object;
.source "OrangeEccSms.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;,
        Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;
    }
.end annotation


# static fields
.field private static final BT999:Ljava/lang/String; = "999"

.field private static final DEFAULT_SCALE_VALUE:I = 0x64

.field private static final KEEP_PENDING_SMS_LIMIT:J = 0x36ee80L

.field private static final LOW_POWER_VALUE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OrangeEccSms"

.field private static final UPDATE_TIME_LIMIT:J = 0x4e20L

.field private static mNtpRetryCnt:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNtpHandler:Landroid/os/Handler;

.field private mNtpThread:Landroid/os/HandlerThread;

.field private mOriginalGpsSetting:Z

.field private mOriginalNlpSetting:Z

.field private mOriginalWifiAlwaysAvailable:I

.field private mPendingSmsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

.field private mStartLocationUpdate:Z

.field private mThread:Landroid/os/HandlerThread;

.field private final mTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;Landroid/content/Context;)V
    .locals 2
    .param p1, "dispatcher"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    return-void
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestLocation(Z)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->printLocationLog(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getUserData(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/OrangeEccSms;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendSms(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    return v0
.end method

.method private enableGpsAndUpdateLocation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .local v6, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .local v7, "originalMobileNetworkSetting":Z
    const-string v0, "OrangeEccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile Datat Enabled? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v0, "OrangeEccSms"

    const-string v1, "enable GPS for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v0, "OrangeEccSms"

    const-string v1, "enable NLP for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "OrangeEccSms"

    const-string v1, "enable Wifi Scanning Always Available for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v7    # "originalMobileNetworkSetting":Z
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find GPS Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find Network Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1
.end method

.method private formatRadius2IntegerString(F)Ljava/lang/String;
    .locals 4
    .param p1, "f"    # F

    .prologue
    float-to-int v0, p1

    .local v0, "radius":I
    const-string v1, "N"

    .local v1, "result":Ljava/lang/String;
    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private get10CharactersDoubleString(D)Ljava/lang/String;
    .locals 9
    .param p1, "d"    # D

    .prologue
    const-wide/16 v7, 0x0

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_0

    const/4 v3, 0x1

    .local v3, "isPlus":Z
    :goto_0
    const-wide v7, 0x408f400000000000L    # 1000.0

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_1

    const/4 v4, 0x4

    .local v4, "leftNumberCount":I
    :goto_1
    rsub-int/lit8 v6, v4, 0x8

    .local v6, "rightNumberCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "formatString":Ljava/lang/StringBuilder;
    const-string v7, "0."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "formatString":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "isPlus":Z
    .end local v4    # "leftNumberCount":I
    .end local v6    # "rightNumberCount":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isPlus":Z
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v7

    goto :goto_0

    :cond_1
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_2

    const/4 v4, 0x3

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .end local v4    # "leftNumberCount":I
    :cond_2
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_3

    const/4 v4, 0x2

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .end local v4    # "leftNumberCount":I
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .restart local v0    # "formatString":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v6    # "rightNumberCount":I
    :cond_4
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v1, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .local v5, "result":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v3, v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    return-object v5

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private getBestLocation(Z)Landroid/location/Location;
    .locals 4
    .param p1, "gpsLocationUpdateIsAvailable"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "location":Landroid/location/Location;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Landroid/location/Location;
    :goto_0
    return-object v1

    .end local v1    # "location":Landroid/location/Location;
    .restart local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "location":Landroid/location/Location;
    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_0
.end method

.method private getBestTimestamp(Landroid/location/Location;)J
    .locals 6
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "bestTime":J
    if-eqz p1, :cond_0

    const-string v3, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OrangeEccSms"

    const-string v4, "Got GPS timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-nez v3, :cond_1

    const-string v3, "OrangeEccSms"

    const-string v4, "mTime is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Best timestamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_1
    :try_start_1
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v5}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "OrangeEccSms"

    const-string v4, "Use Network timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OrangeEccSms"

    const-string v4, "Get Exception while get best timestamp"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserData(Landroid/location/Location;)Ljava/lang/String;
    .locals 21
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v19, "000000"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v3, "formatter":Ljava/text/NumberFormat;
    const-string v6, "+000.00000"

    .local v6, "latitude":Ljava/lang/String;
    const-string v8, "+000.00000"

    .local v8, "longitude":Ljava/lang/String;
    const-string v14, "N"

    .local v14, "radius":Ljava/lang/String;
    const-string v7, "0"

    .local v7, "levelOfConfidence":Ljava/lang/String;
    const-string v13, "N"

    .local v13, "positionMethod":Ljava/lang/String;
    const-string v5, "000000000000000"

    .local v5, "imsi":Ljava/lang/String;
    const-string v4, "0000000000000000"

    .local v4, "imei":Ljava/lang/String;
    const-string v9, "000"

    .local v9, "mcc":Ljava/lang/String;
    const-string v12, "00"

    .local v12, "mnc":Ljava/lang/String;
    new-instance v17, Landroid/text/format/Time;

    const-string v19, "UTC"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v17, "timestamp":Landroid/text/format/Time;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestTimestamp(Landroid/location/Location;)J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v19, "%Y%m%d%H%M%S"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "time":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->formatRadius2IntegerString(F)Ljava/lang/String;

    move-result-object v14

    const-string v19, "gps"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v13, "G"

    :cond_0
    :goto_0
    const-string v7, "68"

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v10

    .local v10, "mccmnc":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v19, "A\"ML=1;"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "lt="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "lg="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "rd="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "top="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "lc="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "pm="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "si="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "ei="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "mcc="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "mnc="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "messageLength":Ljava/lang/String;
    const-string v19, "ml="

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .end local v10    # "mccmnc":Ljava/lang/String;
    .end local v11    # "messageLength":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v19, "network"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v13, "W"

    goto/16 :goto_0
.end method

.method private isLowPower()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    const-string v6, "OrangeEccSms"

    const-string v7, "Can\'t get Battery Information!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "level"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "level":I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "scale":I
    if-nez v4, :cond_2

    const-string v6, "OrangeEccSms"

    const-string v7, "scale is 0, set default 100"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x64

    :cond_2
    mul-int/lit8 v6, v2, 0x64

    div-int v3, v6, v4

    .local v3, "percentage":I
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", percentage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xa

    if-gt v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private printLocationLog(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    return-void
.end method

.method private refreshNtpTimeStamp()V
    .locals 4

    .prologue
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTP retry count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V

    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendSms(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "userData"    # Ljava/lang/String;
    .param p2, "firstSend"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "OrangeEccSms"

    const-string v1, "user data is null when sending Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "UserData"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "Timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v8, v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, "sentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .local v7, "isInvisibleMoSms":Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    const-string v1, "999"

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Z)V

    goto :goto_0

    .end local v7    # "isInvisibleMoSms":Z
    :cond_2
    const-string v0, "OrangeEccSms"

    const-string v1, "SMSDispatcher is null, can\'t send Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    if-eqz v0, :cond_0

    const-string v0, "OrangeEccSms"

    const-string v1, "Unregister Emergency SMS result receiver!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New location : provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OrangeEccSms"

    const-string v2, "GPS onLocationChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public sendEccSms()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->isLowPower()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OrangeEccSms"

    const-string v2, "Is low power level, for keep emergency call, do not enable emergency sms!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LocationHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Lcom/android/internal/telephony/gsm/OrangeEccSms$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "OrangeEccSms"

    const-string v2, "Register Emergency SMS result receiver!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->enableGpsAndUpdateLocation()V

    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NtpHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    goto :goto_0
.end method
