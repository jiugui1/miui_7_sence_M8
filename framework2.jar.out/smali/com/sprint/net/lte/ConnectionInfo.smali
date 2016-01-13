.class public Lcom/sprint/net/lte/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mApnsInUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation
.end field

.field mBSID:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mRsrp:Ljava/lang/String;

.field mRsrq:Ljava/lang/String;

.field mRssi:Ljava/lang/String;

.field mTxPwr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/sprint/net/lte/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 99
    const-string v1, "Constructor+"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getTxPwr()V

    .line 105
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getApnsInUse()V

    .line 106
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getBSID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const-string v1, "Constructor-"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 114
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    sget-object v2, Lcom/sprint/net/lte/ApnsInUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFromParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/ConnectionInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/lte/ConnectionInfo$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sprint/net/lte/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _getApnsInUse()V
    .locals 13

    .prologue
    .line 214
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 216
    :try_start_0
    iget-object v10, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 217
    .local v1, "CM":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getActiveApnState"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 218
    .local v5, "getActiveApnState":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/htc/net/ApnState;

    move-object v0, v10

    check-cast v0, [Lcom/htc/net/ApnState;

    move-object v3, v0

    .line 219
    .local v3, "apn":[Lcom/htc/net/ApnState;
    if-eqz v3, :cond_3

    .line 220
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v3

    if-ge v6, v10, :cond_1

    .line 221
    new-instance v7, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v7}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 222
    .local v7, "item":Lcom/sprint/net/lte/ApnsInUse;
    aget-object v10, v3, v6

    iget-object v10, v10, Lcom/htc/net/ApnState;->name:Ljava/lang/String;

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 223
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    aget-object v10, v3, v6

    iget-object v10, v10, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    array-length v10, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v8, v10, :cond_2

    .line 226
    :try_start_1
    aget-object v10, v3, v6

    iget-object v10, v10, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    aget-object v10, v10, v8

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 228
    aget-object v10, v3, v6

    iget-object v10, v10, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    .line 223
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 232
    :cond_0
    aget-object v10, v3, v6

    iget-object v10, v10, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 235
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnsInUse: e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 247
    .end local v1    # "CM":Landroid/net/ConnectivityManager;
    .end local v3    # "apn":[Lcom/htc/net/ApnState;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "getActiveApnState":Ljava/lang/reflect/Method;
    .end local v6    # "i":I
    .end local v7    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .end local v8    # "j":I
    :catch_1
    move-exception v4

    .line 248
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnsInUse: error get method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const-string v10, "ril.multiple.pdn.ip.address"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "aTemp":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnsInUse: ril.multiple.pdn.ip.address="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 254
    if-eqz v2, :cond_6

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 255
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "value":[Ljava/lang/String;
    new-instance v7, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v7}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 257
    .restart local v7    # "item":Lcom/sprint/net/lte/ApnsInUse;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 258
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_4
    array-length v10, v9

    if-ge v6, v10, :cond_5

    .line 262
    :try_start_3
    aget-object v10, v9, v6

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 264
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 240
    .end local v2    # "aTemp":Ljava/lang/String;
    .end local v9    # "value":[Ljava/lang/String;
    .restart local v1    # "CM":Landroid/net/ConnectivityManager;
    .restart local v3    # "apn":[Lcom/htc/net/ApnState;
    .restart local v5    # "getActiveApnState":Ljava/lang/reflect/Method;
    .restart local v8    # "j":I
    :cond_2
    :try_start_4
    iget-object v10, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 244
    .end local v6    # "i":I
    .end local v7    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .end local v8    # "j":I
    :cond_3
    const-string v10, "_getApnsInUse: apn null"

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 268
    .end local v1    # "CM":Landroid/net/ConnectivityManager;
    .end local v3    # "apn":[Lcom/htc/net/ApnState;
    .end local v5    # "getActiveApnState":Ljava/lang/reflect/Method;
    .restart local v2    # "aTemp":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .restart local v9    # "value":[Ljava/lang/String;
    :cond_4
    :try_start_5
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v7, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 271
    :catch_2
    move-exception v4

    .line 273
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnsInUse: e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    goto :goto_5

    .line 276
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v10, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v6    # "i":I
    .end local v7    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .end local v9    # "value":[Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnsInUse: result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private _getBSID()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private _getTxPwr()V
    .locals 8

    .prologue
    .line 195
    :try_start_0
    iget-object v5, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    const-string v6, "htctelephony"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/HtcTelephonyManager;

    .line 196
    .local v3, "htc":Lcom/htc/service/HtcTelephonyManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "requestGetLTETxRxInfo"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 197
    .local v4, "requestGetLTETxRxInfo":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v1, v0

    .line 198
    .local v1, "aInt":[I
    if-eqz v1, :cond_0

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget v6, v1, v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    .line 210
    .end local v1    # "aInt":[I
    .end local v3    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v4    # "requestGetLTETxRxInfo":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 203
    .restart local v1    # "aInt":[I
    .restart local v3    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v4    # "requestGetLTETxRxInfo":Ljava/lang/reflect/Method;
    :cond_0
    const-string v5, "TxPwr aInt null"

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1    # "aInt":[I
    .end local v3    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v4    # "requestGetLTETxRxInfo":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error get method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "LteConnectionInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getApnsInUse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    return-object v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-object v0
.end method

.method public getSib(I)Ljava/lang/String;
    .locals 1
    .param p1, "sibNum"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTxPwr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    return-object v0
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-void
.end method

.method public setRsrp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-void
.end method

.method public setRsrq(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
