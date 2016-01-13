.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$RegistryInfo;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:Landroid/os/Bundle;

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

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:I

.field private mOtaspMode:I

.field private mPreciseCallState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSignalStrength:Landroid/telephony/SignalStrength;

.field private mSectorIDInd:Ljava/lang/String;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateData:[Landroid/telephony/ServiceState;

.field private mServiceStateVoice:[Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 164
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 167
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 170
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 172
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 174
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 175
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 178
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSectorIDInd:Ljava/lang/String;

    .line 181
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 182
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    .line 189
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 191
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 193
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 195
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 197
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 199
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 201
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 209
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 215
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 217
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 228
    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 241
    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 264
    .local v0, "location":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 267
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 271
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 272
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 273
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 276
    return-void
.end method

.method private HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "errorCause"    # I
    .param p10, "apnCarrier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1243
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    if-nez p2, :cond_0

    .line 1247
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1249
    :cond_0
    if-eqz p3, :cond_1

    .line 1250
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    :cond_1
    if-eqz p6, :cond_2

    .line 1253
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1254
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1256
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1260
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1262
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1264
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v2, "entitleError"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    if-eqz p10, :cond_5

    .line 1269
    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    :cond_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1273
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 2704
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    .line 2706
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2709
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2710
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 2711
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 2729
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2711
    goto :goto_0

    .line 2712
    :cond_1
    if-ne p3, v3, :cond_3

    .line 2713
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2715
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2717
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2718
    if-ne p3, v3, :cond_5

    .line 2719
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    goto :goto_1

    .line 2720
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6

    .line 2721
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    goto :goto_1

    .line 2723
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2726
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v2, "This is not dual project"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    goto :goto_1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2736
    .local v0, "ident":J
    if-nez p1, :cond_3

    .line 2737
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2749
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2750
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2752
    :cond_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2753
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2759
    :goto_1
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2760
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2761
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2762
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2765
    :cond_1
    const-string v3, "phone_type"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2766
    const-string v3, "phone_slot"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2775
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2776
    return-void

    .line 2739
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2741
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2744
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2755
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v3, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2769
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2770
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2771
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2772
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2885
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2889
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneType"    # I

    .prologue
    .line 2893
    const-string v1, "TelephonyRegistry"

    const-string v2, "broadcastDataConnectionFailed by PhoneType"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2899
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2902
    :cond_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2903
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2906
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2907
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2910
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDataConnectionFailed by PhoneSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2913
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2914
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2915
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2917
    :cond_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2918
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2919
    const-string v1, "phone_slot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2921
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2922
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z

    .prologue
    .line 2791
    const/4 v9, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    .line 2795
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V
    .locals 13
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "apnCarrier"    # Ljava/lang/String;
    .param p10, "phoneType"    # I

    .prologue
    .line 2801
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2802
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_1

    .line 2803
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v12, 0xb

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    .line 2836
    :goto_1
    return-void

    .line 2803
    :cond_0
    const/16 v12, 0xa

    goto :goto_0

    .line 2807
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_3

    .line 2808
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v12, 0xa

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    goto :goto_1

    :cond_2
    const/16 v12, 0xb

    goto :goto_2

    .line 2813
    :cond_3
    const-string v1, "TelephonyRegistry"

    const-string v2, "Sub GSM Should not be in CG mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2815
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2816
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_5

    .line 2817
    const/16 v12, 0xa

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    goto :goto_1

    .line 2821
    :cond_5
    const/4 v1, 0x5

    move/from16 v0, p10

    if-ne v0, v1, :cond_6

    .line 2822
    const/16 v12, 0xb

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    goto :goto_1

    .line 2827
    :cond_6
    const-string v1, "TelephonyRegistry"

    const-string v2, "CDMA Should not be in GG mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2830
    :cond_7
    const-string v1, "TelephonyRegistry"

    const-string v2, "This is not dual project"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    const/16 v12, 0xa

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    goto/16 :goto_1
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "apnCarrier"    # Ljava/lang/String;
    .param p10, "phoneType"    # I
    .param p11, "phoneSlot"    # I

    .prologue
    .line 2846
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2847
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2849
    if-nez p2, :cond_0

    .line 2850
    const-string v2, "networkUnvailable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2852
    :cond_0
    if-eqz p3, :cond_1

    .line 2853
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2855
    :cond_1
    if-eqz p6, :cond_2

    .line 2856
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2857
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2858
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2859
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2862
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 2863
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2865
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2867
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2868
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2870
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2871
    :cond_5
    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2872
    const-string v2, "phone_slot"

    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2875
    :cond_6
    if-eqz p9, :cond_7

    .line 2876
    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2879
    :cond_7
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2880
    return-void
.end method

.method private broadcastDataConnectionStateChangedLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZZILjava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "ipVersion"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "isDataConnectivityPossible"    # Z
    .param p7, "roaming"    # Z
    .param p8, "errorCause"    # I
    .param p9, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3046
    const-string v2, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDataConnectionStateChangedLTE() ++   apnType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ipVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isDataConnectivityPossible= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", roaming= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", errorCause="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", reason= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3052
    .local v0, "intent":Landroid/content/Intent;
    if-nez p6, :cond_0

    .line 3053
    const-string v1, "networkUnvailable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3055
    :cond_0
    if-eqz p9, :cond_1

    .line 3056
    const-string v1, "reason"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3059
    :cond_1
    const-string v1, "state"

    invoke-static {p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3060
    if-eqz p4, :cond_2

    .line 3061
    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3063
    :cond_2
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3064
    if-eqz p7, :cond_3

    const-string v1, "networkRoaming"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3068
    :cond_3
    if-eqz p2, :cond_4

    .line 3069
    const-string v1, "ipVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3075
    :cond_4
    if-eqz p5, :cond_5

    .line 3076
    const-string v1, "linkProperties"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3093
    :cond_5
    const-string v1, "entitleError"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3095
    const-string v1, "TelephonyRegistry"

    const-string v2, "[BCST]---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] STATE_CHANGE_REASON_KEY(reason)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] DATA_APN_KEY(apn)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,DATA_APN_TYPES_KEY= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] IP_VERSION= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] DATA_APN_TYPE_STATE(state)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    const-string v1, "TelephonyRegistry"

    const-string v2, "[BCST] ---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM]broadcastDataConnectionStateChangedLTE()  -- "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3113
    return-void

    .line 3046
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v1, "null"

    goto/16 :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2567
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 2568
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2571
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2572
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 2573
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 2591
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2573
    goto :goto_0

    .line 2574
    :cond_1
    if-ne p2, v3, :cond_3

    .line 2575
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2577
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2579
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2580
    if-ne p2, v3, :cond_5

    .line 2581
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    goto :goto_1

    .line 2582
    :cond_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    .line 2583
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    goto :goto_1

    .line 2585
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2588
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v2, "This is not dual project"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    goto :goto_1
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 2596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2598
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2602
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2608
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2609
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2610
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2615
    :goto_1
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2617
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2618
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2620
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2621
    const-string v4, "phone_slot"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2629
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2630
    return-void

    .line 2602
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2612
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SERVICE_STATE_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2624
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2625
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2626
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2627
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 2599
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 2634
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 2636
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2639
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2640
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 2641
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 2659
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2641
    goto :goto_0

    .line 2642
    :cond_1
    if-ne p2, v3, :cond_3

    .line 2643
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2645
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2647
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2648
    if-ne p2, v3, :cond_5

    .line 2649
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    .line 2650
    :cond_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    .line 2651
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    .line 2653
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2656
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v2, "This is not dual project"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    goto :goto_1
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    const/high16 v5, 0x20000000

    .line 2664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2666
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2670
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2675
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2676
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2677
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2678
    const-string v4, "android.intent.action.SIG_STR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2684
    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2686
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2687
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2689
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2690
    const-string v4, "phone_slot"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2699
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2700
    return-void

    .line 2670
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2680
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v4, "com.htc.intent.action.SIG_STR_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2693
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2696
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2697
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 2667
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    .line 2937
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 2938
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 2944
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    :cond_1
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_2

    .line 2950
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 2926
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2928
    const/4 v1, 0x1

    .line 2933
    :goto_0
    return v1

    .line 2930
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2933
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;
    .locals 4
    .param p1, "serviceStateList"    # [Landroid/telephony/ServiceState;

    .prologue
    .line 1479
    if-nez p1, :cond_1

    .line 1480
    const/4 v0, 0x0

    .line 1486
    :cond_0
    return-object v0

    .line 1482
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Landroid/telephony/ServiceState;

    .line 1483
    .local v0, "generatedList":[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1484
    new-instance v2, Landroid/telephony/ServiceState;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    aput-object v2, v0, v1

    .line 1483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 2956
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2957
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2958
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 2960
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2962
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 921
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 922
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 923
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 924
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 925
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 926
    monitor-exit v3

    .line 930
    :goto_1
    return-void

    .line 923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "cellLocation"    # Landroid/os/Bundle;
    .param p3, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2457
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2458
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 2459
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V

    .line 2476
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2459
    goto :goto_0

    .line 2460
    :cond_1
    if-ne p3, v3, :cond_3

    .line 2461
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2463
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2465
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2466
    if-ne p3, v3, :cond_5

    .line 2467
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V

    goto :goto_1

    .line 2468
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6

    .line 2469
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V

    goto :goto_1

    .line 2471
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2474
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v1, "This is not dual project"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "cellLocation"    # Landroid/os/Bundle;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2480
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2481
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 2483
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 2484
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExtBySlot(Landroid/os/Bundle;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    :goto_0
    return-void

    .line 2485
    :catch_0
    move-exception v0

    .line 2486
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p3, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2491
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2492
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 2493
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V

    .line 2510
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2493
    goto :goto_0

    .line 2494
    :cond_1
    if-ne p3, v3, :cond_3

    .line 2495
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2497
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2499
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2500
    if-ne p3, v3, :cond_5

    .line 2501
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    .line 2502
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6

    .line 2503
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V

    goto :goto_1

    .line 2505
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2508
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v1, "This is not dual project"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2514
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2515
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 2517
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 2518
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    :goto_0
    return-void

    .line 2519
    :catch_0
    move-exception v0

    .line 2520
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 2966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2967
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 2969
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2970
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_0

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 2977
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2979
    return v3

    .line 2970
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2977
    .end local v2    # "foregroundUser":I
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    .locals 17
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "errorCause"    # I
    .param p11, "apnCarrier"    # Ljava/lang/String;

    .prologue
    .line 1281
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1285
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnection: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "preConn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1291
    const/4 v15, 0x0

    .line 1292
    .local v15, "modified":Z
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 1296
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1297
    const/4 v15, 0x1

    .line 1311
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1312
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1313
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1314
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 1316
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1318
    const/4 v15, 0x1

    .line 1320
    :cond_2
    if-eqz v15, :cond_6

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1326
    .local v16, "r":Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1328
    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1330
    :catch_0
    move-exception v13

    .line 1331
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1337
    .end local v13    # "ex":Landroid/os/RemoteException;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1301
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1303
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1304
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1335
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1337
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 1338
    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2529
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    :goto_0
    return-void

    .line 2535
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2536
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2537
    .local v2, "recordCount":I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 2556
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2558
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "recordCount":I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public htcNotifyCallDisconnected(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1369
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1385
    :goto_0
    return-void

    .line 1372
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1374
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1375
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1376
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 1378
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1374
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1384
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnTypes"    # [Ljava/lang/String;
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "networkType"    # I
    .param p8, "gateway"    # Ljava/lang/String;
    .param p9, "ipAddress"    # Ljava/lang/String;
    .param p10, "stateTimeStamp"    # J

    .prologue
    .line 1360
    const-string v0, "notifyDataConnection()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    :cond_0
    return-void
.end method

.method public htcNotifyPreciseCallStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1391
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1395
    :cond_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 1397
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1399
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1400
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1401
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 1403
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1409
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifySectorIDInd(Ljava/lang/String;)V
    .locals 5
    .param p1, "sectorIDInd"    # Ljava/lang/String;

    .prologue
    .line 3134
    const-string v2, "htcNotifySectorIDInd"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3148
    :goto_0
    return-void

    .line 3139
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3141
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 3142
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 3143
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    const/high16 v4, 0x20000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 3144
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendSectorIDInd(Lcom/android/server/TelephonyRegistry$Record;Ljava/lang/String;)V

    .line 3141
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3147
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "voiceState"    # [Landroid/telephony/ServiceState;
    .param p2, "dataState"    # [Landroid/telephony/ServiceState;

    .prologue
    .line 1002
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    const-string v2, "notifySeparateServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1009
    if-eqz p1, :cond_2

    .line 1010
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 1012
    :cond_2
    if-eqz p2, :cond_3

    .line 1013
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 1015
    :cond_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 1016
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1017
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    const/high16 v4, 0x20000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    .line 1018
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 1015
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1021
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 24
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 289
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 290
    .local v7, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 296
    .local v12, "myUid":I
    if-eqz p3, :cond_5a

    .line 298
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 302
    const/4 v13, 0x0

    .line 304
    .local v13, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 305
    .local v6, "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 306
    .local v5, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object v14, v13

    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v10, v5, :cond_20

    .line 307
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v6, v0, :cond_1f

    .line 320
    :goto_1
    iget v0, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v18, v0

    xor-int v18, v18, p3

    and-int v15, p3, v18

    .line 321
    .local v15, "send":I
    move/from16 v0, p3

    iput v0, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 322
    if-eqz p4, :cond_1e

    .line 323
    and-int/lit8 v18, p3, 0x1

    if-eqz v18, :cond_2

    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    if-eqz v18, :cond_26

    .line 330
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 331
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 343
    :cond_1
    :goto_2
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 347
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_23

    .line 348
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 352
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V

    .line 355
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :cond_2
    :goto_3
    const/high16 v18, 0x20000000

    and-int v18, v18, p3

    if-eqz v18, :cond_3

    .line 404
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    :cond_3
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_6

    .line 410
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 411
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v9

    .line 414
    .local v9, "gsmSignalStrength":I
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x63

    move/from16 v0, v20

    if-ne v9, v0, :cond_5

    const/4 v9, -0x1

    .end local v9    # "gsmSignalStrength":I
    :cond_5
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 441
    :cond_6
    :goto_4
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_9

    .line 445
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_34

    .line 447
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 449
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    move/from16 v18, v0

    if-lez v18, :cond_2e

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 452
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    .line 465
    :cond_8
    :goto_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_31

    .line 467
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExtBySlot(III)V

    .line 470
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExtBySlot(III)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 505
    :cond_9
    :goto_7
    and-int/lit8 v18, p3, 0x8

    if-eqz v18, :cond_c

    .line 510
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 520
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 521
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 532
    :cond_b
    :goto_8
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 536
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_38

    .line 537
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 541
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExtBySlot(ZII)V

    .line 544
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExtBySlot(ZII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 574
    :cond_c
    :goto_9
    const/16 v18, 0x10

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 578
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v18

    if-eqz v18, :cond_41

    .line 581
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 582
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 594
    :cond_e
    :goto_a
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 598
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 599
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 603
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExtBySlot(Landroid/os/Bundle;II)V

    .line 606
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExtBySlot(Landroid/os/Bundle;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 642
    :cond_f
    :goto_b
    and-int/lit8 v18, p3, 0x20

    if-eqz v18, :cond_12

    .line 647
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_47

    .line 649
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_42

    .line 650
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 662
    :cond_11
    :goto_c
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 665
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_44

    .line 666
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 669
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExtBySlot(ILjava/lang/String;II)V

    .line 671
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExtBySlot(ILjava/lang/String;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 699
    :cond_12
    :goto_d
    and-int/lit8 v18, p3, 0x40

    if-eqz v18, :cond_15

    .line 705
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_13

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 707
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_48

    .line 708
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 723
    :cond_14
    :goto_e
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 728
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_4a

    .line 729
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 734
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    .line 738
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 775
    :cond_15
    :goto_f
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 780
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_53

    .line 782
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 783
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 792
    :cond_17
    :goto_10
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 795
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_50

    .line 796
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 799
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExtBySlot(III)V

    .line 801
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExtBySlot(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 828
    :cond_18
    :goto_11
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 833
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_59

    .line 835
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 836
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 848
    :cond_1a
    :goto_12
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 852
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_56

    .line 853
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 857
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V

    .line 860
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 892
    :cond_1b
    :goto_13
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 894
    :try_start_e
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 899
    :cond_1c
    :goto_14
    const/16 v18, 0x400

    :try_start_f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v18

    if-eqz v18, :cond_1d

    .line 902
    :try_start_10
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 909
    :cond_1d
    :goto_15
    const/high16 v18, 0x60000000

    and-int v18, v18, p3

    if-eqz v18, :cond_1e

    .line 910
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSectorIDInd:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/server/TelephonyRegistry;->sendSectorIDInd(Lcom/android/server/TelephonyRegistry$Record;Ljava/lang/String;)V

    .line 914
    :cond_1e
    monitor-exit v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 918
    .end local v5    # "N":I
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v10    # "i":I
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v15    # "send":I
    :goto_16
    return-void

    .line 306
    .restart local v5    # "N":I
    .restart local v6    # "b":Landroid/os/IBinder;
    .restart local v10    # "i":I
    .restart local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1f
    add-int/lit8 v10, v10, 0x1

    move-object v14, v13

    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 312
    :cond_20
    :try_start_12
    new-instance v13, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 313
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_13
    iput-object v6, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 314
    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 315
    move-object/from16 v0, p1

    iput-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 316
    iput v7, v13, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 914
    .end local v5    # "N":I
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v10    # "i":I
    :catchall_0
    move-exception v18

    :goto_17
    monitor-exit v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v18

    .line 334
    .restart local v5    # "N":I
    .restart local v6    # "b":Landroid/os/IBinder;
    .restart local v10    # "i":I
    .restart local v15    # "send":I
    :cond_21
    :try_start_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 335
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 375
    :catch_0
    move-exception v8

    .line 376
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_15
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_3

    .line 338
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_22
    :try_start_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 339
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_2

    .line 359
    :cond_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 361
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 365
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    new-instance v21, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_24

    const/16 v18, 0xb

    :goto_18
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V

    .line 368
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    new-instance v21, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_25

    const/16 v18, 0xa

    :goto_19
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_3

    .line 365
    :cond_24
    const/16 v18, 0xa

    goto :goto_18

    .line 368
    :cond_25
    const/16 v18, 0xb

    goto :goto_19

    .line 384
    :cond_26
    :try_start_17
    sget v18, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v20, 0x1f

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    .line 385
    new-instance v17, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 386
    .local v17, "ss":Landroid/telephony/ServiceState;
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertCustomerName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 387
    .local v11, "longname":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertCustomerName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 389
    .local v16, "shortname":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_3

    .line 395
    .end local v11    # "longname":Ljava/lang/String;
    .end local v16    # "shortname":Ljava/lang/String;
    .end local v17    # "ss":Landroid/telephony/ServiceState;
    :catch_1
    move-exception v8

    .line 396
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_18
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_3

    .line 392
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_27
    :try_start_19
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_3

    .line 417
    :cond_28
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v9

    .line 420
    .restart local v9    # "gsmSignalStrength":I
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x63

    move/from16 v0, v20

    if-ne v9, v0, :cond_29

    const/4 v9, -0x1

    .end local v9    # "gsmSignalStrength":I
    :cond_29
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_4

    .line 437
    :catch_2
    move-exception v8

    .line 438
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_1b
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_4

    .line 422
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_2a
    :try_start_1c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v9

    .line 425
    .restart local v9    # "gsmSignalStrength":I
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x63

    move/from16 v0, v20

    if-ne v9, v0, :cond_2b

    const/4 v9, -0x1

    .end local v9    # "gsmSignalStrength":I
    :cond_2b
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    goto/16 :goto_4

    .line 431
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v9

    .line 432
    .restart local v9    # "gsmSignalStrength":I
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x63

    move/from16 v0, v20

    if-ne v9, v0, :cond_2d

    const/4 v9, -0x1

    .end local v9    # "gsmSignalStrength":I
    :cond_2d
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_4

    .line 449
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 455
    :cond_2f
    :try_start_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 456
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_6

    .line 501
    :catch_3
    move-exception v8

    .line 502
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_1e
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_7

    .line 459
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_30
    :try_start_1f
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 460
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto/16 :goto_6

    .line 474
    :cond_31
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 476
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_32

    const/16 v18, 0xb

    :goto_1a
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExtBySlot(III)V

    .line 479
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_33

    const/16 v18, 0xa

    :goto_1b
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExtBySlot(III)V

    goto/16 :goto_7

    .line 476
    :cond_32
    const/16 v18, 0xa

    goto :goto_1a

    .line 479
    :cond_33
    const/16 v18, 0xb

    goto :goto_1b

    .line 488
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    move/from16 v18, v0

    if-nez v18, :cond_35

    .line 489
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 494
    :goto_1c
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto/16 :goto_7

    .line 491
    :cond_35
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_1c

    .line 524
    :cond_36
    :try_start_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 525
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_8

    .line 570
    :catch_4
    move-exception v8

    .line 571
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_21
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_9

    .line 528
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_37
    :try_start_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 529
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_8

    .line 548
    :cond_38
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 550
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 554
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_39

    const/16 v18, 0xb

    :goto_1d
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExtBySlot(ZII)V

    .line 557
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_3a

    const/16 v18, 0xa

    :goto_1e
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExtBySlot(ZII)V

    goto/16 :goto_9

    .line 554
    :cond_39
    const/16 v18, 0xa

    goto :goto_1d

    .line 557
    :cond_3a
    const/16 v18, 0xb

    goto :goto_1e

    .line 565
    :cond_3b
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_9

    .line 585
    :cond_3c
    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_3d

    .line 586
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_a

    .line 626
    :catch_5
    move-exception v8

    .line 627
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_24
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_b

    .line 589
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_3d
    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 590
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    goto/16 :goto_a

    .line 610
    :cond_3e
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 612
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 616
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_3f

    const/16 v18, 0xb

    :goto_1f
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExtBySlot(Landroid/os/Bundle;II)V

    .line 619
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_40

    const/16 v18, 0xa

    :goto_20
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExtBySlot(Landroid/os/Bundle;II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_5
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto/16 :goto_b

    .line 616
    :cond_3f
    const/16 v18, 0xa

    goto :goto_1f

    .line 619
    :cond_40
    const/16 v18, 0xb

    goto :goto_20

    .line 633
    :cond_41
    :try_start_26
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_b

    .line 634
    :catch_6
    move-exception v8

    .line 635
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_27
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_b

    .line 653
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_42
    :try_start_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_43

    .line 654
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_7
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto/16 :goto_c

    .line 695
    :catch_7
    move-exception v8

    .line 696
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_29
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_d

    .line 657
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_43
    :try_start_2a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 658
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 674
    :cond_44
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 676
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 679
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v23, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_45

    const/16 v18, 0xb

    :goto_21
    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExtBySlot(ILjava/lang/String;II)V

    .line 681
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v23, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_46

    const/16 v18, 0xa

    :goto_22
    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExtBySlot(ILjava/lang/String;II)V

    goto/16 :goto_d

    .line 679
    :cond_45
    const/16 v18, 0xa

    goto :goto_21

    .line 681
    :cond_46
    const/16 v18, 0xb

    goto :goto_22

    .line 690
    :cond_47
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_7
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_d

    .line 712
    :cond_48
    :try_start_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_49

    .line 713
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_8
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_e

    .line 771
    :catch_8
    move-exception v8

    .line 772
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_2c
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto/16 :goto_f

    .line 717
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_49
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 718
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_e

    .line 743
    :cond_4a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 745
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 750
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v23, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_4b

    const/16 v18, 0xb

    :goto_23
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    .line 754
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v23, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_4c

    const/16 v18, 0xa

    :goto_24
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    goto/16 :goto_f

    .line 750
    :cond_4b
    const/16 v18, 0xa

    goto :goto_23

    .line 754
    :cond_4c
    const/16 v18, 0xb

    goto :goto_24

    .line 765
    :cond_4d
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_8
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_f

    .line 785
    :cond_4e
    :try_start_2e
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_4f

    .line 786
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_9
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto/16 :goto_10

    .line 824
    :catch_9
    move-exception v8

    .line 825
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_2f
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_11

    .line 788
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_4f
    :try_start_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 789
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_10

    .line 804
    :cond_50
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 806
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 809
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_51

    const/16 v18, 0xb

    :goto_25
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExtBySlot(III)V

    .line 811
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_52

    const/16 v18, 0xa

    :goto_26
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExtBySlot(III)V

    goto/16 :goto_11

    .line 809
    :cond_51
    const/16 v18, 0xa

    goto :goto_25

    .line 811
    :cond_52
    const/16 v18, 0xb

    goto :goto_26

    .line 819
    :cond_53
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_9
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto/16 :goto_11

    .line 839
    :cond_54
    :try_start_31
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 840
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_a
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto/16 :goto_12

    .line 888
    :catch_a
    move-exception v8

    .line 889
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto/16 :goto_13

    .line 843
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_55
    :try_start_33
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 844
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_12

    .line 864
    :cond_56
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 866
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 870
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_57

    const/16 v18, 0xb

    :goto_27
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V

    .line 873
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    move/from16 v22, v0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v18

    if-eqz v18, :cond_58

    const/16 v18, 0xa

    :goto_28
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V

    goto/16 :goto_13

    .line 870
    :cond_57
    const/16 v18, 0xa

    goto :goto_27

    .line 873
    :cond_58
    const/16 v18, 0xb

    goto :goto_28

    .line 882
    :cond_59
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 883
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSecondSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_a
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto/16 :goto_13

    .line 895
    :catch_b
    move-exception v8

    .line 896
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_34
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14

    .line 903
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v8

    .line 904
    .restart local v8    # "ex":Landroid/os/RemoteException;
    iget-object v0, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    goto/16 :goto_15

    .line 916
    .end local v5    # "N":I
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v10    # "i":I
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v15    # "send":I
    :cond_5a
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_16

    .line 914
    .restart local v5    # "N":I
    .restart local v6    # "b":Landroid/os/IBinder;
    .restart local v10    # "i":I
    .restart local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_17
.end method

.method public notifyCWDataConnection(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1349
    const-string v1, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1352
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 6
    .param p1, "cfi"    # Z

    .prologue
    .line 1134
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1138
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 1139
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1140
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 1142
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1149
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1148
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1149
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallForwardingChangedExt(ZI)V
    .locals 6
    .param p1, "cfi"    # Z
    .param p2, "phoneType"    # I

    .prologue
    .line 1841
    const-string v3, "notifyCallForwardingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1872
    :goto_0
    return-void

    .line 1844
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1846
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1847
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 1849
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1850
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    .line 1858
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 1859
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1860
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 1862
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1863
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 1865
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1858
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1852
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1853
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1871
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1855
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1856
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1866
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1871
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallForwardingChangedExtBySlot(ZII)V
    .locals 6
    .param p1, "cfi"    # Z
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 1805
    const-string v3, "notifyCallForwardingChangedExtBySlot()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1837
    :goto_0
    return-void

    .line 1808
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChangedExtBySlot: cfi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , phoneSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1812
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1813
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 1815
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1816
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    .line 1822
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 1823
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1824
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 1826
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1827
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 1829
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 1830
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExtBySlot(ZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1817
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1818
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1836
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1819
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1820
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1831
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1836
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 933
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 951
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 937
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 938
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 939
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 940
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 942
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 949
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 948
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 949
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateExt(ILjava/lang/String;I)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneType"    # I

    .prologue
    .line 1566
    const-string v3, "notifyCallStateExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1630
    :goto_0
    return-void

    .line 1569
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallStateExt: state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1572
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1574
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 1575
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 1579
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 1580
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1581
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    .line 1591
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_a

    .line 1592
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1593
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 1598
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1599
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    .line 1601
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1621
    :cond_3
    :goto_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 1622
    const-string v3, "TelephonyRegistry"

    const-string v5, "notifyCallStateExt: do callback function. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1583
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    .line 1584
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1585
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1628
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1587
    :cond_6
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 1588
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1589
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1603
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    if-eqz p1, :cond_3

    .line 1604
    :try_start_4
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1608
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_8
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1609
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    .line 1611
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_3

    .line 1613
    :cond_9
    if-eqz p1, :cond_3

    .line 1614
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 1628
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_a
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1629
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyCallStateExtBySlot(ILjava/lang/String;II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 1502
    const-string v3, "notifyCallStateExtBySlot()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1561
    :goto_0
    return-void

    .line 1505
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallStateExtBySlot: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , phoneSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1508
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1509
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 1510
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 1513
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 1514
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1515
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    .line 1524
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_a

    .line 1525
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1526
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 1528
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1529
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    .line 1531
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1548
    :cond_3
    :goto_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExtBySlot(ILjava/lang/String;II)V

    .line 1549
    const-string v3, "TelephonyRegistry"

    const-string v5, "notifyCallStateExtBySlot: do callback function. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 1552
    const-string v3, "TelephonyRegistry"

    const-string v5, "notifyCallStateExt: do callback function. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1516
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    .line 1517
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1518
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1559
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1519
    :cond_6
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 1520
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1521
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1533
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    if-eqz p1, :cond_3

    .line 1534
    :try_start_4
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1537
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_8
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1538
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    .line 1540
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1542
    :cond_9
    if-eqz p1, :cond_3

    .line 1543
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 1559
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_a
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1560
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public notifyCellInfo(Landroid/telephony/CellInfo;)V
    .locals 0
    .param p1, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    .line 1079
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1088
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 1089
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1090
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1102
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1101
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1102
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1435
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1438
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1439
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1440
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1441
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1447
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1455
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1454
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1455
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocationExt(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .param p2, "phoneType"    # I

    .prologue
    .line 2394
    const-string v2, "notifyCellLocationExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2415
    :goto_0
    return-void

    .line 2397
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2398
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 2399
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 2400
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    .line 2408
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 2409
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 2410
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 2411
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 2408
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2402
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 2403
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 2414
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2405
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 2406
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 2414
    .restart local v0    # "i":I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocationExtBySlot(Landroid/os/Bundle;II)V
    .locals 4
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 2371
    const-string v2, "notifyCellLocationExtBySlot()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2374
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2375
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 2376
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 2377
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    .line 2383
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 2384
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 2385
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 2386
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;II)V

    .line 2383
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2378
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 2379
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 2389
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2380
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 2381
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 2389
    .restart local v0    # "i":I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1153
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1157
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 1158
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1159
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 1161
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1168
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1167
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1168
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivityExt(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "phoneType"    # I

    .prologue
    .line 1910
    const-string v3, "notifyDataActivityExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1940
    :goto_0
    return-void

    .line 1913
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1914
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1915
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 1917
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1918
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    .line 1926
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 1927
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1928
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1930
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1931
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 1933
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1926
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1920
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1921
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1939
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1923
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1924
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1934
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1939
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivityExtBySlot(III)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 1876
    const-string v3, "notifyDataActivityExtBySlot()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1879
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataActivityExtBySlot: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneSlot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1881
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1882
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 1884
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1885
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    .line 1891
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 1892
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1893
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1895
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1896
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 1898
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 1899
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExtBySlot(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1886
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1887
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1905
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1888
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1889
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1900
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1905
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 1174
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1184
    const/4 v12, 0x0

    .line 1185
    .local v12, "modified":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    .line 1189
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1190
    const/4 v12, 0x1

    .line 1204
    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1205
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1206
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1207
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1208
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    .line 1209
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1211
    const/4 v12, 0x1

    .line 1213
    :cond_2
    if-eqz v12, :cond_6

    .line 1218
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 1219
    .local v13, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 1221
    :try_start_1
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1223
    :catch_0
    move-exception v10

    .line 1224
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1230
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1194
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1196
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1197
    const/4 v12, 0x1

    goto :goto_1

    .line 1228
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1230
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 1231
    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionExt(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZLjava/lang/String;I)V
    .locals 17
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "apnCarrier"    # Ljava/lang/String;
    .param p11, "phoneType"    # I

    .prologue
    .line 2141
    const-string v2, "notifyDataConnectionExt()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    :goto_0
    return-void

    .line 2145
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnectionExt: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2151
    const/4 v15, 0x0

    .line 2152
    .local v15, "modified":Z
    :try_start_0
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2153
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 2157
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 2158
    const/4 v15, 0x1

    .line 2172
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 2173
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 2174
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 2175
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 2176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 2177
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 2179
    const/4 v15, 0x1

    .line 2183
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_9

    .line 2184
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 2188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2189
    const/4 v15, 0x1

    .line 2203
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2210
    const/4 v15, 0x1

    .line 2282
    :cond_4
    :goto_3
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt, modified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    if-eqz v15, :cond_12

    .line 2289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 2290
    .local v16, "r":Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    .line 2292
    :try_start_1
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2293
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 2295
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChanged(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_f

    .line 2299
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2301
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 2314
    :catch_0
    move-exception v13

    .line 2315
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2321
    .end local v13    # "ex":Landroid/os/RemoteException;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2162
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2164
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 2165
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 2193
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2196
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 2213
    :cond_9
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_c

    .line 2215
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 2218
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state =DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_a

    .line 2222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2223
    const/4 v15, 0x1

    .line 2239
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2243
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionNetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2247
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 2227
    :cond_b
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state !=DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2230
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt, APN list is empty"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2232
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 2251
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    .line 2252
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 2253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_d

    .line 2256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2257
    const/4 v15, 0x1

    .line 2271
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2278
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 2261
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2264
    const/4 v15, 0x1

    goto :goto_6

    .line 2303
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_f
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_10

    .line 2304
    :try_start_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2306
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-Sub GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2308
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_5

    .line 2309
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2311
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-CDMA(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 2319
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2321
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_12
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 2322
    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionExtBySlot(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZLjava/lang/String;II)V
    .locals 18
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "apnCarrier"    # Ljava/lang/String;
    .param p11, "phoneType"    # I
    .param p12, "phoneSlot"    # I

    .prologue
    .line 1948
    const-string v2, "notifyDataConnectionExtBySlot()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    :goto_0
    return-void

    .line 1951
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnectionExtBySlot: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1956
    const/16 v16, 0x0

    .line 1957
    .local v16, "modified":Z
    :try_start_0
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1958
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 1962
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1963
    const/16 v16, 0x1

    .line 1977
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1978
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1979
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1980
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1981
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 1982
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1984
    const/16 v16, 0x1

    .line 1988
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_9

    .line 1989
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1994
    const/16 v16, 0x1

    .line 2008
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2015
    const/16 v16, 0x1

    .line 2083
    :cond_4
    :goto_3
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExtBySlot, modified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    if-eqz v16, :cond_12

    .line 2090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/TelephonyRegistry$Record;

    .line 2091
    .local v17, "r":Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    .line 2093
    :try_start_1
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2094
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 2096
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChanged(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_f

    .line 2101
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2103
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    move/from16 v1, p12

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    .line 2105
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExtBySlot-GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 2123
    :catch_0
    move-exception v14

    .line 2124
    .local v14, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2130
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1967
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1969
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1970
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1998
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2001
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 2017
    :cond_9
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_c

    .line 2018
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExtBySlot,mSubGsmRegistryInfo.mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExtBySlot,apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 2021
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExtBySlot,state =DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_a

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2026
    const/16 v16, 0x1

    .line 2042
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2046
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExtBySlot,mSubGsmRegistryInfo.mDataConnectionNetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2050
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 2030
    :cond_b
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExtBySlot,state !=DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2033
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExtBySlot, APN list is empty"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2035
    const/16 v16, 0x1

    goto/16 :goto_5

    .line 2052
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    .line 2053
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_d

    .line 2057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 2058
    const/16 v16, 0x1

    .line 2072
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$402(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    # setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$502(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 2079
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 2062
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$300(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2065
    const/16 v16, 0x1

    goto :goto_6

    .line 2107
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v17    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_f
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_10

    .line 2108
    :try_start_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2110
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    move/from16 v1, p12

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    .line 2112
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExtBySlot-Sub GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2114
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_5

    .line 2115
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 2117
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    move/from16 v1, p12

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExtBySlot(IIII)V

    .line 2119
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExtBySlot-CDMA(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 2128
    .end local v17    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2130
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_12
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 2131
    invoke-direct/range {v2 .. v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1414
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1431
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailedExt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneType"    # I

    .prologue
    .line 2327
    const-string v0, "notifyDataConnectionFailedExt()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2345
    :goto_0
    return-void

    .line 2344
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailedExtBySlot(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2348
    const-string v0, "notifyDataConnectionFailedExtBySlot()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2366
    :goto_0
    return-void

    .line 2365
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZIZILjava/lang/String;)V
    .locals 14
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "ipVersion"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "isDataConnectivityPossible"    # Z
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z
    .param p9, "errorCause"    # I
    .param p10, "reason"    # Ljava/lang/String;

    .prologue
    .line 2989
    const-string v1, "TelephonyRegistry"

    const-string v2, "notifyDataConnectionLTE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3035
    :goto_0
    return-void

    .line 2994
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2995
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 2996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2997
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2998
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p3

    if-eq v1, v0, :cond_1

    .line 2999
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 3012
    :cond_1
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 3014
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 3015
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 3016
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 3018
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_4

    .line 3019
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 3020
    .local v13, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    .line 3022
    :try_start_1
    const-string v1, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r.callback.onDataConnectionStateChanged apn mDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p7

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3018
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 3003
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3004
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3005
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    goto :goto_1

    .line 3029
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3024
    .restart local v12    # "i":I
    .restart local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v11

    .line 3025
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_3
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 3029
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 3031
    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChangedLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 1109
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1115
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 1117
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1118
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 1122
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1130
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1129
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1130
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyMessageWaitingChangedExtBySlot(III)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    const/4 v4, 0x1

    .line 1768
    const-string v3, "notifyMessageWaitingChangedExtBySlot()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1771
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyMessageWaitingChangedExtBySlot: count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1775
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1778
    :cond_1
    if-ne p2, v4, :cond_5

    .line 1779
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    .line 1785
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 1786
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1787
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 1789
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1790
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-lez p1, :cond_7

    move v3, v4

    :goto_3
    invoke-interface {v6, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 1793
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExtBySlot(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1785
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1780
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1781
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    goto :goto_1

    .line 1799
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1782
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1783
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:I

    goto :goto_1

    .line 1790
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_4

    .line 1799
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .prologue
    .line 1459
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1462
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1463
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1464
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1465
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 1467
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1474
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1473
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1474
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifySecondSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1055
    const-string v3, "notifySecondSignalStrength()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1059
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    .line 1060
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1061
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 1063
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSecondSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1070
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1069
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1070
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 954
    const-string v6, "notifyServiceState()"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    if-eqz p1, :cond_0

    .line 962
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 963
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 965
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 966
    monitor-exit v7

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 969
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 971
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-eqz v3, :cond_3

    .line 975
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 980
    :try_start_2
    sget v6, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1f

    if-ne v6, v8, :cond_4

    .line 981
    new-instance v5, Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 982
    .local v5, "ss":Landroid/telephony/ServiceState;
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/TelephonyManager;->convertCustomerName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, "longname":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/TelephonyManager;->convertCustomerName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "shortname":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v4, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/ServiceState;

    invoke-direct {v8, v5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 991
    .end local v2    # "longname":Ljava/lang/String;
    .end local v4    # "shortname":Ljava/lang/String;
    .end local v5    # "ss":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 988
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4
    :try_start_4
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/ServiceState;

    invoke-direct {v8, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 996
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 997
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 998
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method public notifyServiceStateExt(Landroid/telephony/ServiceState;I)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneType"    # I

    .prologue
    .line 1662
    const-string v2, "notifyServiceStateExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1687
    :goto_0
    return-void

    .line 1665
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1667
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1668
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 1670
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 1671
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 1679
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 1680
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1681
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1682
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 1679
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1673
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    .line 1674
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1685
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1676
    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1677
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1685
    .restart local v0    # "i":I
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifyServiceStateExtBySlot(Landroid/telephony/ServiceState;II)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 1634
    const-string v2, "notifyServiceStateExtBySlot()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1658
    :goto_0
    return-void

    .line 1637
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceStateExtBySlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1640
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1641
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 1643
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 1644
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 1650
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 1651
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1652
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1653
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V

    .line 1650
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1645
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    .line 1646
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1656
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1647
    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1648
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1656
    .restart local v0    # "i":I
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1657
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1025
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1029
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1030
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1031
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    .line 1033
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1040
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1041
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1049
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1034
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 1035
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1048
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1049
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0
.end method

.method public notifySignalStrengthExt(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneType"    # I

    .prologue
    .line 1728
    const-string v4, "notifySignalStrengthExt()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1731
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1732
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1733
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1735
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_6

    .line 1736
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1744
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_8

    .line 1745
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1746
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    .line 1747
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 1749
    :cond_3
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 1750
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1753
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1754
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_4
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1744
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1738
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 1739
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1762
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1741
    :cond_7
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1742
    :try_start_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1756
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1762
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1763
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public notifySignalStrengthExtBySlot(Landroid/telephony/SignalStrength;II)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneType"    # I
    .param p3, "phoneSlot"    # I

    .prologue
    .line 1691
    const-string v4, "notifySignalStrengthExtBySlot()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1724
    :goto_0
    return-void

    .line 1694
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1695
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1696
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1698
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_6

    .line 1699
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1705
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_8

    .line 1706
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1707
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    .line 1708
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;II)V

    .line 1710
    :cond_3
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 1711
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1713
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1714
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_4
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1700
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 1701
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1722
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1702
    :cond_7
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1703
    :try_start_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1716
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1722
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1723
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    goto :goto_0
.end method

.method public sendSectorIDInd(Lcom/android/server/TelephonyRegistry$Record;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "sectorIDInd"    # Ljava/lang/String;

    .prologue
    .line 3151
    :try_start_0
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSectorIDInd:Ljava/lang/String;

    .line 3152
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSectorIDIndChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    :goto_0
    return-void

    .line 3153
    :catch_0
    move-exception v0

    .line 3154
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "voiceState"    # [Landroid/telephony/ServiceState;
    .param p3, "dataState"    # [Landroid/telephony/ServiceState;

    .prologue
    .line 1489
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "state"    # Landroid/telephony/ServiceState;
    .param p3, "phoneType"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 2422
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2423
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 2424
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V

    .line 2441
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2424
    goto :goto_0

    .line 2425
    :cond_1
    if-ne p3, v3, :cond_3

    .line 2426
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    .line 2428
    :cond_3
    const-string v0, "TelephonyRegistry"

    const-string v1, "Sub GSM Should not be in CG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2430
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2431
    if-ne p3, v3, :cond_5

    .line 2432
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V

    goto :goto_1

    .line 2433
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6

    .line 2434
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V

    goto :goto_1

    .line 2436
    :cond_6
    const-string v0, "TelephonyRegistry"

    const-string v1, "CDMA Should not be in GG mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2439
    :cond_7
    const-string v0, "TelephonyRegistry"

    const-string v1, "This is not dual project"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;II)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "state"    # Landroid/telephony/ServiceState;
    .param p3, "phoneType"    # I
    .param p4, "phoneSlot"    # I

    .prologue
    .line 2445
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2446
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2448
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 2449
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_0
    return-void

    .line 2450
    :catch_0
    move-exception v0

    .line 2451
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method public updateRegistryInfoForCG2GGPhoneModeChange()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 3117
    const-string v0, "TelephonyRegistry"

    const-string v1, "updateRegistryInfoForCG2GGPhoneModeChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    const-string v0, "TelephonyRegistry"

    const-string v1, "slot1 C2G, copy gsm registry info to sub-gsm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # invokes: Lcom/android/server/TelephonyRegistry$RegistryInfo;->changePhoneType(I)V
    invoke-static {v0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$600(Lcom/android/server/TelephonyRegistry$RegistryInfo;I)V

    .line 3121
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 3122
    new-instance v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v0, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 3129
    :goto_0
    return-void

    .line 3124
    :cond_0
    const-string v0, "TelephonyRegistry"

    const-string v1, "slot1 G2C, copy sub-gsm registry info to gsm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    # invokes: Lcom/android/server/TelephonyRegistry$RegistryInfo;->changePhoneType(I)V
    invoke-static {v0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$600(Lcom/android/server/TelephonyRegistry$RegistryInfo;I)V

    .line 3126
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 3127
    new-instance v0, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    goto :goto_0
.end method
