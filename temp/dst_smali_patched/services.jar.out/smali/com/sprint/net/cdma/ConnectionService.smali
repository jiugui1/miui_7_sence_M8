.class public Lcom/sprint/net/cdma/ConnectionService;
.super Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;
.source "ConnectionService.java"


# static fields
.field private static final DBG:Z = true

.field static Property_LAST_ERROR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SpcsCdmaConnectionService"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ro.ril.last.mip.error.code"

    sput-object v0, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;-><init>()V

    new-instance v1, Lcom/sprint/net/cdma/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/sprint/net/cdma/ConnectionService$1;-><init>(Lcom/sprint/net/cdma/ConnectionService;)V

    iput-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "manager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/net/cdma/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprint/net/cdma/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.permission.SPRINT3G"

    const-string v2, "ConnectionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "SpcsCdmaConnectionService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .locals 3

    .prologue
    const-string v1, "+++getCdma2000Info"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    const/4 v0, 0x0

    .local v0, "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info;

    .end local v0    # "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    invoke-direct {v0}, Lcom/sprint/net/cdma/Cdma2000Info;-><init>()V

    .restart local v0    # "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getCdmaDbm()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setReceivePower(F)V

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getCdmaEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setReceiveEcIo(F)V

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getCdmaEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setPnEnergy(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdma2000Info: recvPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getReceivePower()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recvEcio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getReceiveEcIo()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PnEnergy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getPnEnergy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    :cond_0
    const-string v1, "---getCdma2000Info"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    const v0, 0x7fffffff

    .local v0, "eri":I
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaRoamingIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return v0
.end method

.method public getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo;

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .locals 4

    .prologue
    const-string v1, "+++getEvdoInfo"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    const/4 v0, 0x0

    .local v0, "ei":Lcom/sprint/net/cdma/EvdoInfo;
    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo;

    .end local v0    # "ei":Lcom/sprint/net/cdma/EvdoInfo;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;-><init>(Landroid/content/Context;)V

    .restart local v0    # "ei":Lcom/sprint/net/cdma/EvdoInfo;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getEvdoDbm()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setReceivePower(F)V

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getEvdoEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setPnEnergy(F)V

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getEvdoSnr()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setSinr(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvdoInfo: recvPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getReceivePower()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Sinr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getSinr()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PnEnergy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPnEnergy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvdoInfo: BandClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getBandClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getColorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PacketError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPacketError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    const-string v1, "---getEvdoInfo"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    const/4 v5, 0x0

    .local v5, "ipAddress":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "CM":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getActiveApnState"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "getActiveApnState":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/net/ApnState;

    move-object v0, v6

    check-cast v0, [Lcom/htc/net/ApnState;

    move-object v2, v0

    .local v2, "apn":[Lcom/htc/net/ApnState;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iget-object v6, v6, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v6, :cond_0

    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v2, v6

    iget-object v6, v6, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "CM":Landroid/net/ConnectivityManager;
    .end local v2    # "apn":[Lcom/htc/net/ApnState;
    .end local v4    # "getActiveApnState":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_getIpAddress: result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return-object v5

    .restart local v1    # "CM":Landroid/net/ConnectivityManager;
    .restart local v2    # "apn":[Lcom/htc/net/ApnState;
    .restart local v4    # "getActiveApnState":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_getIpAddress: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v1    # "CM":Landroid/net/ConnectivityManager;
    .end local v2    # "apn":[Lcom/htc/net/ApnState;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "getActiveApnState":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_getIpAddress: error get method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "CM":Landroid/net/ConnectivityManager;
    .restart local v2    # "apn":[Lcom/htc/net/ApnState;
    .restart local v4    # "getActiveApnState":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_3
    const-string v6, "_getIpAddress: apn null"

    invoke-direct {p0, v6}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public getLastMipResponce()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastMipResponce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    sget-object v0, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
