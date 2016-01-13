.class public Lcom/android/internal/telephony/HtcTelephonyCapability;
.super Ljava/lang/Object;
.source "HtcTelephonyCapability.java"


# static fields
.field public static BUILT_ACCOUNT_CAPABILITIES:[I = null

.field public static final BUILT_ACCOUNT_FEATURE_FLAG_ICC_FOR_DATA_ONLY:I = -0x80000000

.field public static final BUILT_ACCOUNT_MAIN_FLAG_NV:I = 0x2

.field public static final BUILT_ACCOUNT_MAIN_FLAG_RUIM:I = 0x4

.field public static final BUILT_ACCOUNT_MAIN_FLAG_UICC:I = 0x10

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM:I = 0x1

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM_RUIM:I = 0x8

.field public static final BUILT_DATA_CAPABILITIES:I

.field public static final BUILT_DATA_MAIN_FLAG_DEFAULT:I = 0x1

.field public static final BUILT_DATA_MAIN_FLAG_MM:I = 0x2

.field public static final BUILT_PHONE_CAPABILITIES:I

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY:I = 0x40000000

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_SINGLE_STAND_BY:I = 0x20000000

.field public static final BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE:I = -0x80000000

.field public static final BUILT_PHONE_MAIN_FLAG_CDMA:I = 0x2

.field public static final BUILT_PHONE_MAIN_FLAG_GSM:I = 0x1

.field public static final BUILT_PHONE_MAIN_FLAG_GSM1:I = 0x4

.field public static final BUILT_RAT_CAPABILITIES:I

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA:I = 0x2

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_UMTS:I = 0x1

.field public static final BUILT_RIL_CAPABILITIES:I

.field public static final BUILT_RIL_MAIN_FLAG_AT_BASED:I = 0x1

.field public static final BUILT_RIL_MAIN_FLAG_QMI:I = 0x2

.field public static final BUILT_SMS_CAPABILITIES:I

.field public static final BUILT_TABLET_CAPABILITIES:I

.field public static final BUILT_TABLET_FEATURE_PHONE_ENABLED:I = -0x80000000

.field public static final BUILT_TABLET_FEATURE_WIFI_ONLY:I = 0x40000000

.field private static final M7_WITH_LTE:Z

.field private static final PROP_KEY_BUILD_PROJECT:Ljava/lang/String; = "ro.build.project"

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyCapability"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v1, "ro.build.project"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "buildproject":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "M7_UL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->M7_WITH_LTE:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    sput v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRatCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "capabilities":[I
    const/4 v2, 0x0

    .local v2, "preferNetworkMode":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "build_account_main_flag"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .local v0, "account_main_flag":I
    if-ne v0, v6, :cond_0

    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    :goto_0
    return-object v1

    :cond_0
    if-ne v0, v7, :cond_1

    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_0

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x5

    aput v3, v1, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_1

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    aget v3, v1, v6

    const v4, -0x7ffffff0

    or-int/2addr v3, v4

    aput v3, v1, v6

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_2

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_3

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_4

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static final getBuiltPhoneCapabilities()I
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .local v0, "capabilities":I
    const/4 v5, 0x0

    .local v5, "preferNetworkMode":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_GSM"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "main_phone_type_GSM":Z
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_CDMA"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "main_phone_type_CDMA":Z
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_SubGSM"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "main_phone_type_SubGSM":Z
    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    const-string v6, "HtcTelephonyCapability"

    const-string v7, "traditional single GSM/CDMA/World-phone"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    const-string v6, "ro.telephony.default_network"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "radio_type"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "radio_type"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_7

    :cond_5
    const-string v6, "persist.radio.worldphone"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v9, :cond_6

    or-int/2addr v0, v10

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_phone_feature_stand_by"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v4

    .local v4, "phone_feature_type_stand_by":I
    if-ne v4, v9, :cond_9

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v0, v6

    :goto_2
    return v0

    .end local v4    # "phone_feature_type_stand_by":I
    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_7
    if-nez v5, :cond_8

    const-string v6, "ro.telephony.default_network"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    :pswitch_4
    or-int/2addr v0, v10

    goto :goto_1

    .restart local v4    # "phone_feature_type_stand_by":I
    :cond_9
    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    const/high16 v6, 0x20000000

    or-int/2addr v0, v6

    goto :goto_2

    :cond_a
    const-string v6, "HtcTelephonyCapability"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The project is not dual project , phone_feature_type_stand_by = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final getBuiltRatCapabilities()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "capabilities":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "radio_type"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    .local v2, "ret":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "support_lte"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "bSupportLte":Z
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static final getBuiltRilCapabilities()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_ril_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final getBuiltSmsCapabilities()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, "capabilities":I
    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "capabilities":I
    const-string v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1
    .param p0, "builtCapabilities"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCapabilitiesEnabled(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "builtCapabilities"    # I

    .prologue
    and-int v0, p1, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledInMultiCapabilities(I[I)Z
    .locals 5
    .param p0, "capabilities"    # I
    .param p1, "builtMultiCapabilities"    # [I

    .prologue
    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .local v3, "singleCapabilities":I
    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "singleCapabilities":I
    :goto_1
    return v4

    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "singleCapabilities":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "singleCapabilities":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
