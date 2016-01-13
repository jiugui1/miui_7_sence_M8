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

    .line 207
    const-string v1, "ro.build.project"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "buildproject":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "M7_UL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->M7_WITH_LTE:Z

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 213
    sput v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRatCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    .line 217
    return-void

    :cond_0
    move v1, v2

    .line 208
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "capabilities":[I
    const/4 v2, 0x0

    .line 391
    .local v2, "preferNetworkMode":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "build_account_main_flag"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, "account_main_flag":I
    if-ne v0, v6, :cond_0

    .line 393
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 394
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    .line 463
    :goto_0
    return-object v1

    .line 396
    :cond_0
    if-ne v0, v7, :cond_1

    .line 397
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_0

    .line 398
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    .line 399
    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    .line 401
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 402
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 403
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x5

    aput v3, v1, v5

    goto :goto_0

    .line 406
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 407
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 408
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    goto :goto_0

    .line 410
    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 411
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_1

    .line 412
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    .line 413
    aget v3, v1, v6

    const v4, -0x7ffffff0

    or-int/2addr v3, v4

    aput v3, v1, v6

    goto :goto_0

    .line 416
    :cond_4
    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    .line 417
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_2

    .line 418
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    .line 419
    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    .line 421
    :cond_5
    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    .line 422
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_3

    .line 423
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    .line 424
    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    .line 426
    :cond_6
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    .line 427
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 428
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    goto :goto_0

    .line 431
    :cond_7
    if-nez v2, :cond_8

    .line 432
    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 435
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 456
    :pswitch_0
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 457
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    goto/16 :goto_0

    .line 437
    :pswitch_1
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 438
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    goto/16 :goto_0

    .line 442
    :pswitch_2
    new-array v1, v7, [I

    .end local v1    # "capabilities":[I
    fill-array-data v1, :array_4

    .line 443
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x2

    aput v3, v1, v5

    .line 444
    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto/16 :goto_0

    .line 449
    :pswitch_3
    new-array v1, v6, [I

    .end local v1    # "capabilities":[I
    aput v5, v1, v5

    .line 450
    .restart local v1    # "capabilities":[I
    aget v3, v1, v5

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v5

    goto/16 :goto_0

    .line 397
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 411
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 417
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 422
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 435
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

    .line 442
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

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "capabilities":I
    const/4 v5, 0x0

    .line 269
    .local v5, "preferNetworkMode":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_GSM"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    .line 270
    .local v2, "main_phone_type_GSM":Z
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_CDMA"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    .local v1, "main_phone_type_CDMA":Z
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_main_phone_type_SubGSM"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v3

    .line 272
    .local v3, "main_phone_type_SubGSM":Z
    if-eqz v2, :cond_0

    .line 273
    or-int/lit8 v0, v0, 0x1

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    .line 276
    or-int/lit8 v0, v0, 0x2

    .line 278
    :cond_1
    if-eqz v3, :cond_2

    .line 279
    or-int/lit8 v0, v0, 0x4

    .line 283
    :cond_2
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 284
    const-string v6, "HtcTelephonyCapability"

    const-string v7, "traditional single GSM/CDMA/World-phone"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-nez v5, :cond_3

    .line 286
    const-string v6, "ro.telephony.default_network"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 289
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 301
    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    .line 311
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

    .line 314
    :cond_5
    const-string v6, "persist.radio.worldphone"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v9, :cond_6

    .line 315
    or-int/2addr v0, v10

    .line 346
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "build_phone_feature_stand_by"

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v4

    .line 348
    .local v4, "phone_feature_type_stand_by":I
    if-ne v4, v9, :cond_9

    .line 349
    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v0, v6

    .line 359
    :goto_2
    return v0

    .line 292
    .end local v4    # "phone_feature_type_stand_by":I
    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 293
    goto :goto_0

    .line 296
    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    .line 297
    goto :goto_0

    .line 321
    :cond_7
    if-nez v5, :cond_8

    .line 322
    const-string v6, "ro.telephony.default_network"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 325
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 328
    :pswitch_4
    or-int/2addr v0, v10

    .line 329
    goto :goto_1

    .line 351
    .restart local v4    # "phone_feature_type_stand_by":I
    :cond_9
    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    .line 352
    const/high16 v6, 0x20000000

    or-int/2addr v0, v6

    goto :goto_2

    .line 355
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

    .line 289
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

    .line 325
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

    .line 483
    const/4 v1, 0x0

    .line 486
    .local v1, "capabilities":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "radio_type"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    .line 488
    .local v2, "ret":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "support_lte"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    .line 502
    .local v0, "bSupportLte":Z
    packed-switch v2, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 506
    :pswitch_1
    or-int/lit8 v1, v1, 0x1

    .line 507
    goto :goto_0

    .line 510
    :pswitch_2
    or-int/lit8 v1, v1, 0x2

    .line 511
    goto :goto_0

    .line 514
    :pswitch_3
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :pswitch_4
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 502
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
    .line 478
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
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "capabilities":I
    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 366
    .local v0, "capabilities":I
    const-string v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 370
    :cond_0
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1
    .param p0, "builtCapabilities"    # [I

    .prologue
    .line 255
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
    .line 227
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
    .line 239
    if-eqz p1, :cond_1

    .line 240
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 241
    .local v3, "singleCapabilities":I
    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const/4 v4, 0x1

    .line 246
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "singleCapabilities":I
    :goto_1
    return v4

    .line 240
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "singleCapabilities":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "singleCapabilities":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
