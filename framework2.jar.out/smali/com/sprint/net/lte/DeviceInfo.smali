.class public Lcom/sprint/net/lte/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AVAILABLE_PDN_LABELS:Ljava/lang/String; = "ota,pam,internet"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final Property_DeviceId:Ljava/lang/String; = "ro.product.model"

.field private static final Property_HWVersion:Ljava/lang/String; = "ro.devicerev"

.field private static final Property_IPV6Support:Ljava/lang/String; = "ro.telephony.ipv6_capability"

.field private static final Property_SWVersion:Ljava/lang/String; = "ro.product.version"

.field private static final TAG:Ljava/lang/String; = "LteDeviceInfo"


# instance fields
.field private Bands:[I

.field private mApnInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBandSupport:[I

.field mContext:Landroid/content/Context;

.field private mcr:Landroid/content/ContentResolver;

.field private mdeviceid:Ljava/lang/String;

.field private mdevicename:Ljava/lang/String;

.field private mswversion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/sprint/net/lte/DeviceInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 41
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 47
    return-void

    .line 41
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 41
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 54
    const-string v0, "LteDeviceInfo"

    const-string v1, "++DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getApnInfo()V

    .line 57
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getDeviceName()V

    .line 58
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getSwVersion()V

    .line 59
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getDeviceID()V

    .line 60
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getBandClassSupport()V

    .line 61
    const-string v0, "LteDeviceInfo"

    const-string v1, "--DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 41
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 258
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    sget-object v1, Lcom/sprint/net/lte/ApnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 259
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/DeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/lte/DeviceInfo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sprint/net/lte/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _getApnInfo()V
    .locals 16

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 130
    const-string v9, "_getApnInfo+"

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 133
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v12, "htctelephony"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/HtcTelephonyManager;

    .line 134
    .local v5, "htc":Lcom/htc/service/HtcTelephonyManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v12, "getPdnSettings2"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, [Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 136
    .local v4, "getPdnSettings2":Ljava/lang/reflect/Method;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    .line 137
    .local v7, "param":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v12, "148"

    aput-object v12, v7, v9

    .line 138
    const/4 v9, 0x1

    const-string v12, "13"

    aput-object v12, v7, v9

    .line 140
    const-string v9, "ota,pam,internet"

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "availablePdnLabels":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v2

    if-ge v6, v9, :cond_3

    .line 144
    const/4 v9, 0x2

    aget-object v12, v2, v6

    aput-object v12, v7, v9

    .line 145
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v9, v12

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 146
    .local v8, "ret":[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_getApnInfo: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/sprint/net/lte/ApnInfo;

    invoke-direct {v1}, Lcom/sprint/net/lte/ApnInfo;-><init>()V

    .line 150
    .local v1, "ai":Lcom/sprint/net/lte/ApnInfo;
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    .line 151
    const/4 v9, 0x4

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/sprint/net/lte/ApnInfo;->ni:Ljava/lang/String;

    .line 152
    const/4 v9, 0x5

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/sprint/net/lte/ApnInfo;->type:Ljava/lang/String;

    .line 153
    const-string v9, "lte"

    iput-object v9, v1, Lcom/sprint/net/lte/ApnInfo;->ratType:Ljava/lang/String;

    .line 154
    const/4 v9, 0x6

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/sprint/net/lte/ApnInfo;->timer:I

    .line 155
    const/4 v9, 0x7

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/sprint/net/lte/ApnInfo;->authType:Ljava/lang/String;

    .line 156
    const/16 v9, 0x8

    aget-object v9, v8, v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_1
    iput-boolean v9, v1, Lcom/sprint/net/lte/ApnInfo;->isUsernameSet:Z

    .line 157
    const/16 v9, 0x9

    aget-object v9, v8, v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_2
    iput-boolean v9, v1, Lcom/sprint/net/lte/ApnInfo;->isPasswordSet:Z

    .line 158
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "ai":Lcom/sprint/net/lte/ApnInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .restart local v1    # "ai":Lcom/sprint/net/lte/ApnInfo;
    :cond_1
    move v9, v11

    .line 156
    goto :goto_1

    :cond_2
    move v9, v11

    .line 157
    goto :goto_2

    .line 162
    .end local v1    # "ai":Lcom/sprint/net/lte/ApnInfo;
    .end local v2    # "availablePdnLabels":[Ljava/lang/String;
    .end local v4    # "getPdnSettings2":Ljava/lang/reflect/Method;
    .end local v5    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v6    # "i":I
    .end local v7    # "param":[Ljava/lang/String;
    .end local v8    # "ret":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_getApnInfo:\te="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_getApnInfo-: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private _getBandClassSupport()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 170
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    .line 171
    .local v0, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v6, Lcom/sprint/net/MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v6}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string v6, "methodName"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "RIL"

    invoke-virtual {v0, v6, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 175
    .local v5, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 176
    .local v4, "result":[I
    if-nez v4, :cond_0

    .line 178
    const-string v6, "_getBandClassSupport: ret=null"

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 179
    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 180
    iget-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    const/16 v7, 0x19

    aput v7, v6, v10

    .line 202
    :goto_0
    return-void

    .line 185
    :cond_0
    aget v6, v4, v10

    if-lez v6, :cond_3

    .line 187
    aget v6, v4, v10

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 188
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    aget v6, v4, v10

    if-gt v1, v6, :cond_2

    .line 190
    aget v6, v4, v1

    const/16 v7, 0x78

    if-lt v6, v7, :cond_1

    aget v6, v4, v1

    const/16 v7, 0x99

    if-gt v6, v7, :cond_1

    .line 192
    iget-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    aget v9, v4, v1

    add-int/lit8 v9, v9, -0x78

    aget v8, v8, v9

    aput v8, v6, v7

    .line 188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_getBandClassSupport: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_3
    const-string v6, "_getBandClassSupport: No supported band class"

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _getDeviceID()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 221
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_getDeviceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v1, "Get null telephony service"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _getDeviceName()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mcr:Landroid/content/ContentResolver;

    .line 209
    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mcr:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_getDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 217
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LteDeviceInfo"

    const-string v2, "getDeviceName: getContentResolver failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _getSwVersion()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "ro.product.version"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_getSwVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, "LteDeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getApnInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-string v1, "LteDeviceInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBandClassSupport()[I
    .locals 2

    .prologue
    .line 100
    const-string v0, "LteDeviceInfo"

    const-string v1, "getBandClassSupport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const-string v0, "LteDeviceInfo"

    const-string v1, "getDeviceID "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    const-string v0, "LteDeviceInfo"

    const-string v1, "getDeviceName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    const-string v0, "LteDeviceInfo"

    const-string v1, "getHwVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "ro.devicerev"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const-string v0, "LteDeviceInfo"

    const-string v1, "getSdkVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const-string v0, "LteDeviceInfo"

    const-string v1, "getSwVersion "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    return-object v0
.end method

.method public isIpv6Supported()Z
    .locals 2

    .prologue
    .line 116
    const-string v0, "LteDeviceInfo"

    const-string v1, "isIpv6Supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "ro.telephony.ipv6_capability"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 248
    return-void
.end method
