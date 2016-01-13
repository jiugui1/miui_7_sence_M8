.class public Lcom/sprint/net/cdma/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final CDMA_SERVICE:Ljava/lang/String; = "cdma"

.field private static final TAG:Ljava/lang/String; = "SpcsCdmaConnectionManager"


# instance fields
.field private mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;


# direct methods
.method public constructor <init>(Lcom/sprint/net/cdma/ICdmaConnectionManager;)V
    .locals 0
    .param p1, "service"    # Lcom/sprint/net/cdma/ICdmaConnectionManager;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    .line 17
    return-void
.end method


# virtual methods
.method public getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .locals 5

    .prologue
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;

    move-result-object v1

    .line 28
    .local v1, "info":Lcom/sprint/net/cdma/Cdma2000Info;
    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdma2000Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "info":Lcom/sprint/net/cdma/Cdma2000Info;
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdma2000Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    const-string v2, ""

    .line 48
    .local v2, "prl":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v3}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;

    move-result-object v1

    .line 49
    .local v1, "info":Lcom/sprint/net/cdma/DeviceInfo;
    invoke-virtual {v1}, Lcom/sprint/net/cdma/DeviceInfo;->getPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v3, "SpcsCdmaConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaPrlVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "info":Lcom/sprint/net/cdma/DeviceInfo;
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SpcsCdmaConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaPrlVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 5

    .prologue
    .line 68
    const v0, 0x7fffffff

    .line 69
    .local v0, "eri":I
    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getCdmaRoamingIndicator()I

    .line 70
    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaRoamingIndicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "eri":I
    :goto_0
    return v0

    .line 72
    .restart local v0    # "eri":I
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaRoamingIndicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationDownlink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "ip":Ljava/net/InetAddress;
    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastMipResponce()I
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getLastMipResponce()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationUplink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v1, 0x7fffffff

    goto :goto_0
.end method
