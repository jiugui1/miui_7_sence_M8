.class public abstract Lcom/sprint/net/lte/IConnectionManager$Stub;
.super Landroid/os/Binder;
.source "IConnectionManager.java"

# interfaces
.implements Lcom/sprint/net/lte/IConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/IConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sprint.net.lte.IConnectionManager"

.field static final TRANSACTION_getConnectionInfo:I = 0x2

.field static final TRANSACTION_getDeviceInfo:I = 0x3

.field static final TRANSACTION_getModulationDownlink:I = 0x4

.field static final TRANSACTION_getModulationUplink:I = 0x5

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_getStatus:I = 0x7

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p0, p0, v0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprint/net/lte/IConnectionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.sprint.net.lte.IConnectionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprint/net/lte/IConnectionManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sprint/net/lte/IConnectionManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->test(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;

    move-result-object v1

    .local v1, "_result":Lcom/sprint/net/lte/ConnectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Lcom/sprint/net/lte/ConnectionInfo;
    :sswitch_3
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;

    move-result-object v1

    .local v1, "_result":Lcom/sprint/net/lte/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Lcom/sprint/net/lte/DeviceInfo;
    :sswitch_4
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v1

    .local v1, "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :sswitch_5
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v1

    .restart local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :sswitch_6
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getState()Lcom/sprint/net/lte/ConnectionManager$State;

    move-result-object v1

    .local v1, "_result":Lcom/sprint/net/lte/ConnectionManager$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionManager$State;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_result":Lcom/sprint/net/lte/ConnectionManager$State;
    :sswitch_7
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;

    move-result-object v1

    .local v1, "_result":Lcom/sprint/net/lte/ConnectionManager$Status;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionManager$Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
