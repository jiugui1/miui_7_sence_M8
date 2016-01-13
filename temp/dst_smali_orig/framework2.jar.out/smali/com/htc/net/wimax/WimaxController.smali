.class public Lcom/htc/net/wimax/WimaxController;
.super Ljava/lang/Object;
.source "WimaxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxController$1;,
        Lcom/htc/net/wimax/WimaxController$WimaxLock;
    }
.end annotation


# static fields
.field public static final AUTH_NAI_REJECTED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

.field public static final AUTH_STATE_FAIL_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

.field public static final CURRENT_WIMAX_ENABLED_STATE:Ljava/lang/String; = "curWimaxEnabledState"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_NAPID:Ljava/lang/String; = "napId"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI_LEVEL:Ljava/lang/String; = "newRssiLevel"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NSPID:Ljava/lang/String; = "nspId"

.field public static final EXTRA_WXCM_CONNECTED:Ljava/lang/String; = "connected"

.field private static LOCAL_LOGD:Z = false

.field private static final MAX_RSSI:I = 0x20

.field private static final MIN_RSSI:I = 0x5

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.STATE_CHANGE"

.field public static final ON_BACKOFF_STATE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

.field public static final PICK_WIMAX_NETWORK_ACTION:Ljava/lang/String; = "com.htc.net.wimax.PICK_WIMAX_NETWORK"

.field public static final PREVIOUS_WIMAX_ENABLED_STATE:Ljava/lang/String; = "preWimaxEnabledState"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.RSSI_CHANGED"

.field public static final RSSI_LEVEL:I = 0x4

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.SCAN_RESULTS_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "WimaxController"

.field public static final WIMAX_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field public static final WIMAX_ENABLED_STATE_DISABLED:I = 0x1

.field public static final WIMAX_ENABLED_STATE_DISABLING:I = 0x0

.field public static final WIMAX_ENABLED_STATE_ENABLED:I = 0x3

.field public static final WIMAX_ENABLED_STATE_ENABLING:I = 0x2

.field public static final WIMAX_ENABLED_STATE_UNKNOWN:I = 0x4

.field public static final WXCM_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wimax.wxcm.CONNECTION_CHANGE"

.field public static final WXCM_ERROR_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcmError"

.field public static final WXCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcm.STATE_CHANGED"

.field public static mProfile:I


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/htc/net/wimax/IWimaxController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    sput v0, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Lcom/htc/net/wimax/IWimaxController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxController;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxController"

    const-string v1, "WimaxController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 11
    .param p0, "rssi100x"    # I
    .param p1, "cinr100x"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "isKTProjectFlag":Z
    const/4 v4, 0x0

    .local v4, "isKDDIProjectFlag":Z
    if-eqz v5, :cond_f

    div-int/lit8 v6, p0, 0x64

    .local v6, "rssi":I
    div-int/lit8 v2, p1, 0x64

    .local v2, "cinr":I
    const/4 v8, 0x5

    new-array v1, v8, [[B

    const/4 v8, 0x0

    const/4 v9, 0x6

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const/4 v9, 0x6

    new-array v9, v9, [B

    fill-array-data v9, :array_1

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const/4 v9, 0x6

    new-array v9, v9, [B

    fill-array-data v9, :array_2

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const/4 v9, 0x6

    new-array v9, v9, [B

    fill-array-data v9, :array_3

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const/4 v9, 0x6

    new-array v9, v9, [B

    fill-array-data v9, :array_4

    aput-object v9, v1, v8

    .local v1, "antennaBarMatrix_KT":[[B
    const/4 v7, 0x0

    .local v7, "rssiIdx":I
    const/4 v3, 0x0

    .local v3, "cinrIdx":I
    const/16 v8, 0xf

    if-le v2, v8, :cond_2

    const/4 v3, 0x0

    :goto_0
    const/16 v8, -0x37

    if-le v6, v8, :cond_8

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_d

    :cond_0
    const-string v8, "WimaxController"

    const-string v9, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .end local v1    # "antennaBarMatrix_KT":[[B
    .end local v2    # "cinr":I
    .end local v3    # "cinrIdx":I
    .end local v7    # "rssiIdx":I
    :cond_1
    :goto_2
    return v3

    .restart local v1    # "antennaBarMatrix_KT":[[B
    .restart local v2    # "cinr":I
    .restart local v3    # "cinrIdx":I
    .restart local v7    # "rssiIdx":I
    :cond_2
    const/16 v8, 0xf

    if-lt v8, v2, :cond_3

    const/16 v8, 0xa

    if-le v2, v8, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0xa

    if-lt v8, v2, :cond_4

    const/4 v8, 0x3

    if-le v2, v8, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const/4 v8, 0x3

    if-lt v8, v2, :cond_5

    if-lez v2, :cond_5

    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    if-gtz v2, :cond_6

    const/4 v8, -0x3

    if-le v2, v8, :cond_6

    const/4 v3, 0x4

    goto :goto_0

    :cond_6
    const/4 v8, -0x3

    if-le v8, v2, :cond_7

    const/4 v3, 0x5

    goto :goto_0

    :cond_7
    const/4 v3, -0x1

    goto :goto_0

    :cond_8
    const/16 v8, -0x37

    if-lt v8, v6, :cond_9

    const/16 v8, -0x41

    if-le v6, v8, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/16 v8, -0x41

    if-lt v8, v6, :cond_a

    const/16 v8, -0x4b

    if-le v6, v8, :cond_a

    const/4 v7, 0x2

    goto :goto_1

    :cond_a
    const/16 v8, -0x4b

    if-lt v8, v6, :cond_b

    const/16 v8, -0x50

    if-le v6, v8, :cond_b

    const/4 v7, 0x3

    goto :goto_1

    :cond_b
    const/16 v8, -0x50

    if-lt v8, v6, :cond_c

    const/4 v7, 0x4

    goto :goto_1

    :cond_c
    const/4 v7, -0x1

    goto :goto_1

    :cond_d
    sget-boolean v8, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v8, :cond_e

    const-string v8, "WimaxController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[KT]antennaBarMatrix_KT["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v7

    aget-byte v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    aget-object v8, v1, v7

    aget-byte v3, v8, v3

    goto/16 :goto_2

    .end local v1    # "antennaBarMatrix_KT":[[B
    .end local v2    # "cinr":I
    .end local v3    # "cinrIdx":I
    .end local v6    # "rssi":I
    .end local v7    # "rssiIdx":I
    :cond_f
    if-eqz v4, :cond_22

    div-int/lit8 v6, p0, 0x64

    .restart local v6    # "rssi":I
    div-int/lit8 v8, p1, 0xa

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float v2, v8, v9

    .local v2, "cinr":F
    const/4 v8, 0x6

    new-array v0, v8, [[B

    const/4 v8, 0x0

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_5

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_6

    aput-object v9, v0, v8

    const/4 v8, 0x2

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_7

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_8

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_9

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_a

    aput-object v9, v0, v8

    .local v0, "antennaBarMatrix_KDDI":[[B
    const/4 v7, 0x0

    .restart local v7    # "rssiIdx":I
    const/4 v3, 0x0

    .restart local v3    # "cinrIdx":I
    const/16 v8, -0x5d

    if-lt v8, v6, :cond_11

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x0

    cmpl-float v8, v8, v2

    if-ltz v8, :cond_19

    const/4 v3, 0x0

    :goto_4
    const/4 v8, -0x1

    if-eq v3, v8, :cond_10

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1f

    :cond_10
    const-string v8, "WimaxController"

    const-string v9, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v8, -0x5c

    if-gt v8, v6, :cond_12

    const/16 v8, -0x5a

    if-gt v6, v8, :cond_12

    const/4 v7, 0x1

    goto :goto_3

    :cond_12
    const/16 v8, -0x59

    if-gt v8, v6, :cond_13

    const/16 v8, -0x56

    if-gt v6, v8, :cond_13

    const/4 v7, 0x2

    goto :goto_3

    :cond_13
    const/16 v8, -0x55

    if-gt v8, v6, :cond_14

    const/16 v8, -0x4c

    if-gt v6, v8, :cond_14

    const/4 v7, 0x3

    goto :goto_3

    :cond_14
    const/16 v8, -0x4b

    if-gt v8, v6, :cond_15

    const/16 v8, -0x42

    if-gt v6, v8, :cond_15

    const/4 v7, 0x4

    goto :goto_3

    :cond_15
    const/16 v8, -0x41

    if-gt v8, v6, :cond_16

    const/16 v8, -0x38

    if-gt v6, v8, :cond_16

    const/4 v7, 0x5

    goto :goto_3

    :cond_16
    const/16 v8, -0x37

    if-gt v8, v6, :cond_17

    const/16 v8, -0x2e

    if-gt v6, v8, :cond_17

    const/4 v7, 0x6

    goto :goto_3

    :cond_17
    const/16 v8, -0x2d

    if-gt v8, v6, :cond_18

    const/4 v7, 0x7

    goto :goto_3

    :cond_18
    const/4 v7, -0x1

    goto :goto_3

    :cond_19
    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1a

    const/high16 v8, 0x40800000    # 4.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1a

    const/4 v3, 0x1

    goto :goto_4

    :cond_1a
    const v8, 0x40833333    # 4.1f

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1b

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1b

    const/4 v3, 0x2

    goto :goto_4

    :cond_1b
    const v8, 0x4121999a    # 10.1f

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1c

    const/high16 v8, 0x41700000    # 15.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1c

    const/4 v3, 0x3

    goto :goto_4

    :cond_1c
    const v8, 0x4171999a    # 15.1f

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1d

    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1d

    const/4 v3, 0x4

    goto/16 :goto_4

    :cond_1d
    const v8, 0x41a0cccd    # 20.1f

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1e

    const/4 v3, 0x5

    goto/16 :goto_4

    :cond_1e
    const/4 v3, -0x1

    goto/16 :goto_4

    :cond_1f
    sget v8, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxController;->isVeeProfile(I)Z

    move-result v8

    if-eqz v8, :cond_20

    sget-boolean v8, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v8, :cond_1

    const-string v8, "WimaxController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[VEE] signal bar return level= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_20
    sget-boolean v8, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v8, :cond_21

    const-string v8, "WimaxController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Default)[KDDI]antennaBarMatrix_KDDI["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v3

    aget-byte v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    aget-object v8, v0, v3

    aget-byte v3, v8, v7

    goto/16 :goto_2

    .end local v0    # "antennaBarMatrix_KDDI":[[B
    .end local v2    # "cinr":F
    .end local v3    # "cinrIdx":I
    .end local v6    # "rssi":I
    .end local v7    # "rssiIdx":I
    :cond_22
    div-int/lit8 v6, p0, 0x64

    .restart local v6    # "rssi":I
    const/16 v8, -0x5d

    if-ge v6, v8, :cond_23

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_23
    const/16 v8, -0x4b

    if-ge v6, v8, :cond_24

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_24
    const/16 v8, -0x3c

    if-ge v6, v8, :cond_25

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_25
    const/16 v8, -0x3c

    if-gt v8, v6, :cond_26

    if-gtz v6, :cond_26

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x4t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method private debugChange()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "wimax_debug":Ljava/lang/String;
    const-string v1, "wimax.debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVeeProfile(I)Z
    .locals 2
    .param p0, "profile"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarmDhcpRenew()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmDhcpRenew()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelAlarmScanRetry()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmScanRetry()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connectToDcs()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->connectToDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createWimaxLock(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxController$WimaxLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/htc/net/wimax/WimaxController$WimaxLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/wimax/WimaxController$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;Lcom/htc/net/wimax/WimaxController$1;)V

    return-object v0
.end method

.method public dcIsConnected()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->dcIsConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectFromDcs()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->disconnectFromDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoardName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "boardName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getBoardName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRfChipName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rfChipName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getRfChipName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWimaxState()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isBackoffState()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isBackoffState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceReady()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isDeviceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWimaxEnabled()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mgtSetSsStarted(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->mgtSetSsStarted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlarmDhcpRenew(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmDhcpRenew(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlarmScanRetry(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmScanRetry(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxDunMode(Z)V
    .locals 1
    .param p1, "isDunMode"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxDunMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWimaxEnabledPersist(ZZ)Z
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "persist"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, -0x9

    goto :goto_0
.end method
