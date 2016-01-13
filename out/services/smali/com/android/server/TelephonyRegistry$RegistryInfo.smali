.class Lcom/android/server/TelephonyRegistry$RegistryInfo;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistryInfo"
.end annotation


# instance fields
.field mCallForwarding:Z

.field mCallIncomingNumber:Ljava/lang/String;

.field mCallState:I

.field mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataActivity:I

.field mDataConnectionApn:Ljava/lang/String;

.field mDataConnectionApnTypes:[Ljava/lang/String;

.field mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field mDataConnectionNetworkType:I

.field mDataConnectionPossible:Z

.field mDataConnectionReason:Ljava/lang/String;

.field mDataConnectionState:I

.field mMessageWaiting:I

.field mPhoneType:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;I)V
    .locals 11
    .param p2, "phoneType"    # I

    .prologue
    const/4 v10, 0x5

    const/16 v1, 0x63

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 127
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    .line 92
    iput v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 100
    iput v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    .line 102
    iput-boolean v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    .line 104
    iput v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    .line 106
    iput v2, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 108
    iput-boolean v9, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionApn:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;

    .line 128
    iput p2, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    .line 129
    if-ne p2, v8, :cond_0

    .line 130
    new-instance v0, Landroid/telephony/SignalStrength;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 131
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v8}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    if-ne p2, v10, :cond_1

    .line 134
    new-instance v0, Landroid/telephony/SignalStrength;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 135
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v10}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Landroid/telephony/SignalStrength;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 139
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry$RegistryInfo;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry$RegistryInfo;
    .param p1, "x1"    # Landroid/net/LinkCapabilities;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry$RegistryInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry$RegistryInfo;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->changePhoneType(I)V

    return-void
.end method

.method private changePhoneType(I)V
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    .line 145
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 146
    return-void
.end method
