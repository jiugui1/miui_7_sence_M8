.class public Lcom/sprint/net/lte/ConnectionService;
.super Lcom/sprint/net/lte/IConnectionManager$Stub;
.source "ConnectionService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SpcsLteConnectionService"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;-><init>()V

    .line 24
    new-instance v1, Lcom/sprint/net/lte/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/sprint/net/lte/ConnectionService$1;-><init>(Lcom/sprint/net/lte/ConnectionService;)V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 37
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionService;->mContext:Landroid/content/Context;

    .line 38
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 41
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/net/lte/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprint/net/lte/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sprint/net/lte/ConnectionService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionService;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.permission.SPRINT4G"

    const-string v2, "ConnectionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "SpcsLteConnectionService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;
    .locals 2

    .prologue
    .line 50
    const-string v1, "getConnectionInfo+"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionService;->logi(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionService;->enforceAccessPermission()V

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "ci":Lcom/sprint/net/lte/ConnectionInfo;
    new-instance v0, Lcom/sprint/net/lte/ConnectionInfo;

    .end local v0    # "ci":Lcom/sprint/net/lte/ConnectionInfo;
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v0    # "ci":Lcom/sprint/net/lte/ConnectionInfo;
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getLteRsrq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->setRsrq(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getLteRsrp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->setRsrp(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mHtcSignalStrength:Landroid/telephony/HtcIfSignalStrength;

    invoke-interface {v1}, Landroid/telephony/HtcIfSignalStrength;->getLteRssnr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->setRssi(Ljava/lang/String;)V

    .line 61
    :cond_0
    const-string v1, "getConnectionInfo-"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionService;->logi(Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionService;->enforceAccessPermission()V

    .line 67
    new-instance v0, Lcom/sprint/net/lte/DeviceInfo;

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public getState()Lcom/sprint/net/lte/ConnectionManager$State;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    return-object v0
.end method

.method public getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->SCANNING:Lcom/sprint/net/lte/ConnectionManager$Status;

    return-object v0
.end method

.method public test(Z)V
    .locals 3
    .param p1, "ok"    # Z

    .prologue
    .line 46
    const-string v0, "SpcsLteConnectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ok="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method