.class public Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;
.super Ljava/lang/Object;
.source "DataProfileMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable$1;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DPMAP"

.field static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    .line 26
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable$1;->$SwitchMap$com$android$internal$telephony$HtcBuildUtils$LteConfigEnum:[I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 54
    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 57
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 73
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DPMAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 94
    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 97
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 112
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 123
    const/16 v1, 0x13

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 126
    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    goto/16 :goto_0

    .line 131
    :pswitch_2
    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 134
    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 137
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 152
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 164
    const/16 v1, 0x13

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 167
    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    goto/16 :goto_0

    .line 171
    :pswitch_3
    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 174
    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 177
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 190
    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    goto/16 :goto_0

    .line 195
    :pswitch_4
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 207
    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 212
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 224
    const/4 v1, 0x3

    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 229
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    const/4 v2, 0x2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 241
    const/4 v1, 0x3

    const/4 v2, 0x2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 246
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const/4 v2, 0x3

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    goto/16 :goto_0

    .line 261
    :pswitch_5
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    goto/16 :goto_0

    .line 275
    :pswitch_6
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 287
    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 31
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x7
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0xb
        0x6
    .end array-data

    .line 57
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0xb
        0x6
        0x3
        0x7
    .end array-data

    .line 73
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0xb
        0x6
        0x3
        0x7
    .end array-data

    .line 97
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x15
    .end array-data

    .line 112
    :array_5
    .array-data 4
        0xd
        0x7
    .end array-data

    .line 137
    :array_6
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x15
    .end array-data

    .line 152
    :array_7
    .array-data 4
        0xd
        0x1
        0x7
    .end array-data

    .line 177
    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x7
    .end array-data

    .line 195
    :array_9
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x7
    .end array-data

    .line 212
    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x7
    .end array-data

    .line 229
    :array_b
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x7
    .end array-data

    .line 246
    :array_c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x7
    .end array-data

    .line 261
    :array_d
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x3
        0x7
    .end array-data

    .line 275
    :array_e
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x3
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method public static dump()V
    .locals 5

    .prologue
    .line 353
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    .local v0, "entry":Ljava/util/Map$Entry;
    const-string v2, "DPMAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public static get(I)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .locals 1
    .param p0, "apnid"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->get(II)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v0

    return-object v0
.end method

.method public static get(II)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .locals 3
    .param p0, "apnid"    # I
    .param p1, "apnindex"    # I

    .prologue
    .line 333
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "DPMAP"

    const-string v1, "get: mMap=null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .line 343
    :goto_0
    return-object v0

    .line 338
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    goto :goto_0

    .line 343
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    goto :goto_0
.end method

.method static put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    .locals 3
    .param p0, "apnid"    # I
    .param p1, "apnindex"    # I
    .param p2, "value"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .prologue
    .line 301
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "DPMAP"

    const-string v1, "put: mMap=null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_1
    const-string v0, "DPMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put: duplicate key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static put(ILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    .locals 1
    .param p0, "apnid"    # I
    .param p1, "value"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 319
    return-void
.end method

.method static put([IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    .locals 2
    .param p0, "apnid_array"    # [I
    .param p1, "apnindex"    # I
    .param p2, "value"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 325
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->put(IILcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method
