.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;,
        Lcom/android/internal/telephony/dataconnection/ApnSetting$RatType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static classIdMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pdnLabelMapping:Ljava/util/HashMap;
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


# instance fields
.field public active:Z

.field public apn:Ljava/lang/String;

.field public apn_maxconn:I

.field public apn_maxconn_t:I

.field public authType:I

.field public bearer:I

.field public carrier:Ljava/lang/String;

.field public carrierEnabled:Z

.field class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

.field public dns_pri:Ljava/lang/String;

.field public dns_sec:Ljava/lang/String;

.field public id:I

.field public mApnsettingIndex:I

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public numeric:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pdn_label:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public rat_type:I

.field public roamingProtocol:Ljava/lang/String;

.field timer:I

.field public types:[Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    sput-object v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ota"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "pam"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3rdumts"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "ota"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "pam"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "3rdumts"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "2"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "5"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "0"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    sput-object v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "2"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_kddi"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "admin"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun1_kddi"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun2_kddi"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "ims"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "internet_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "dun1_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "dun2_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_ckt"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "internet_ckt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_mpcs"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims_mpcs"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "internet_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "ims_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ota"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "pam"

    sget-object v3, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "ota"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const-string v3, "pam"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "class_id"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .param p17, "radioTech"    # I
    .param p18, "rat_type"    # I
    .param p19, "carrierEnabled"    # Z
    .param p20, "timer"    # I
    .param p21, "dns_pri"    # Ljava/lang/String;
    .param p22, "dns_sec"    # Ljava/lang/String;
    .param p23, "pdn_label"    # Ljava/lang/String;
    .param p24, "apn_maxconn"    # I
    .param p25, "apn_maxconn_t"    # I
    .param p26, "wait_time"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iput p12, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    move/from16 v0, p24

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn:I

    move/from16 v0, p25

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn_t:I

    move/from16 v0, p26

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->wait_time:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iput p12, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method public static ClassIdToPdnLabel(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v2, "DATA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: classIdMapping="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClassId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: cannot find mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public static PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .locals 3
    .param p0, "pdn_label"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const-string v1, "DATA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: pdnLabelMapping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pdn_label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: cannot find mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdnLabelMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 22
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v21, 0x2

    .local v21, "version":I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "a":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .end local v19    # "a":[Ljava/lang/String;
    .end local v21    # "version":I
    :cond_1
    const/16 v21, 0x1

    .restart local v21    # "version":I
    goto :goto_1

    .restart local v19    # "a":[Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .local v13, "authType":I
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .local v14, "typeArray":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v19

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v15, "IP"

    .local v15, "protocol":Ljava/lang/String;
    const-string v16, "IP"

    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .local v17, "carrierEnabled":Z
    const/16 v18, 0x0

    .local v18, "bearer":I
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    const/4 v5, 0x1

    aget-object v5, v19, v5

    const/4 v6, 0x2

    aget-object v6, v19, v6

    const/4 v7, 0x3

    aget-object v7, v19, v7

    const/4 v8, 0x7

    aget-object v8, v19, v8

    const/16 v9, 0x8

    aget-object v9, v19, v9

    const/16 v10, 0x9

    aget-object v10, v19, v10

    const/4 v11, 0x4

    aget-object v11, v19, v11

    const/4 v12, 0x5

    aget-object v12, v19, v12

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v17    # "carrierEnabled":Z
    .end local v18    # "bearer":I
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_2

    .end local v20    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xd

    aget-object v1, v19, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v19, v1

    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v19, v1

    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    :try_start_1
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .restart local v17    # "carrierEnabled":Z
    :goto_4
    const/16 v1, 0x11

    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .restart local v18    # "bearer":I
    goto :goto_3

    .end local v17    # "carrierEnabled":Z
    .end local v18    # "bearer":I
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/Exception;
    const/16 v17, 0x1

    .restart local v17    # "carrierEnabled":Z
    goto :goto_4
.end method

.method public static maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2a

    const/4 v3, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "entitle"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    .end local v3    # "t":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "t":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "t":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getApnIndex()I
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apnsetting getApnIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    return v0
.end method

.method public getCarrierEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    return v0
.end method

.method public getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn:I

    return v0
.end method

.method public getMaxConn_T()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn_t:I

    return v0
.end method

.method public getRadioTech()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    return v0
.end method

.method public getRatType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    return v0
.end method

.method public getSupportIpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportRoamingIpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    return v0
.end method

.method public getWaitTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->wait_time:I

    return v0
.end method

.method logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "DATA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "DATA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    return-void
.end method

.method public setApnID(I)V
    .locals 2
    .param p1, "mId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apnsetting setApnID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->logd(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    return-void
.end method

.method public setApnIndex(I)V
    .locals 2
    .param p1, "apnSettingIndex"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apnsetting setApnIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", (Orig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->logd(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnsettingIndex:I

    return-void
.end method

.method public setApnNumeric(Ljava/lang/String;)V
    .locals 2
    .param p1, "mNumeric"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apnsetting setApnCarrier ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCarrier"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setCarrierEnable(Z)V
    .locals 0
    .param p1, "carrierEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    return-void
.end method

.method public setClassID(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)V
    .locals 0
    .param p1, "class_id"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    return-void
.end method

.method public setHttpPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPort"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProxy"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "pdn_label"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    return-void
.end method

.method public setMMSC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmsc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    return-void
.end method

.method public setMaxConn(I)V
    .locals 0
    .param p1, "apn_maxconn"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn:I

    return-void
.end method

.method public setMaxConn_T(I)V
    .locals 0
    .param p1, "apn_maxconn_t"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn_t:I

    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmsPort"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmsProxy"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    return-void
.end method

.method public setServiceType([Ljava/lang/String;)V
    .locals 0
    .param p1, "servicetypes"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    return-void
.end method

.method public setSupportIpVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "bringInSupportIPversion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setSupportRoamingIpVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "bringInSupportRoamingIPversion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method public setTimer(I)V
    .locals 0
    .param p1, "timer"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    return-void
.end method

.method public setWaitTime(I)V
    .locals 0
    .param p1, "wait_time"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->wait_time:I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Class_id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Enable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RatType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Proxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSProxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Class_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->class_id:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RatType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Timer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", carrierEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AuthType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ", Protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RoamingProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CarrierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
