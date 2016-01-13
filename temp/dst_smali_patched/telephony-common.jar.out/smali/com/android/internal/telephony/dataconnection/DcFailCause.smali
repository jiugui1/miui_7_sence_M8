.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum VSNCP_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static bCustomizeFailCauseListIsPermenent:Z

.field protected static mCustomerId:Ljava/lang/String;

.field private static sCustomizeFailCauseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "NONE"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "OPERATOR_BARRED"

    const/4 v10, 0x1

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "INSUFFICIENT_RESOURCES"

    const/4 v10, 0x2

    const/16 v11, 0x1a

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "MISSING_UNKNOWN_APN"

    const/4 v10, 0x3

    const/16 v11, 0x1b

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v10, 0x4

    const/16 v11, 0x1c

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "USER_AUTHENTICATION"

    const/4 v10, 0x5

    const/16 v11, 0x1d

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ACTIVATION_REJECT_GGSN"

    const/4 v10, 0x6

    const/16 v11, 0x1e

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v10, 0x7

    const/16 v11, 0x1f

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v10, 0x8

    const/16 v11, 0x20

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v10, 0x9

    const/16 v11, 0x21

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v10, 0xa

    const/16 v11, 0x22

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "NSAPI_IN_USE"

    const/16 v10, 0xb

    const/16 v11, 0x23

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "REGULAR_DEACTIVATION"

    const/16 v10, 0xc

    const/16 v11, 0x24

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ONLY_IPV4_ALLOWED"

    const/16 v10, 0xd

    const/16 v11, 0x32

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ONLY_IPV6_ALLOWED"

    const/16 v10, 0xe

    const/16 v11, 0x33

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v10, 0xf

    const/16 v11, 0x34

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "PROTOCOL_ERRORS"

    const/16 v10, 0x10

    const/16 v11, 0x6f

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "REGISTRATION_FAIL"

    const/16 v10, 0x11

    const/4 v11, -0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "GPRS_REGISTRATION_FAIL"

    const/16 v10, 0x12

    const/4 v11, -0x2

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "SIGNAL_LOST"

    const/16 v10, 0x13

    const/4 v11, -0x3

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "PREF_RADIO_TECH_CHANGED"

    const/16 v10, 0x14

    const/4 v11, -0x4

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "RADIO_POWER_OFF"

    const/16 v10, 0x15

    const/4 v11, -0x5

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "TETHERED_CALL_ACTIVE"

    const/16 v10, 0x16

    const/4 v11, -0x6

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "ERROR_UNSPECIFIED"

    const/16 v10, 0x17

    const v11, 0xffff

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "VSNCP_PDN_GW_REJ"

    const/16 v10, 0x18

    const/16 v11, 0xb

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "UNKNOWN"

    const/16 v10, 0x19

    const/high16 v11, 0x10000

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "RADIO_NOT_AVAILABLE"

    const/16 v10, 0x1a

    const v11, 0x10001

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "UNACCEPTABLE_NETWORK_PARAMETER"

    const/16 v10, 0x1b

    const v11, 0x10002

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const/16 v10, 0x1c

    const v11, 0x10003

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "LOST_CONNECTION"

    const/16 v10, 0x1d

    const v11, 0x10004

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v9, "RESET_BY_FRAMEWORK"

    const/16 v10, 0x1e

    const v11, 0x10005

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v8, 0x1f

    new-array v8, v8, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x9

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xa

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xb

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xc

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xd

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xe

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0xf

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x10

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x11

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x12

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x13

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x14

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x15

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x16

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x17

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x18

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->VSNCP_PDN_GW_REJ:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x19

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x1b

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x1c

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x1d

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    const/16 v9, 0x1e

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v10, v8, v9

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v8, 0x0

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mCustomerId:Ljava/lang/String;

    const/4 v8, 0x0

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    .local v1, "arr$":[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v1, v6

    .local v4, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v4    # "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "customize_error_cause_list"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "customizeFailCauseListString":Ljava/lang/String;
    sget-boolean v8, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v8, :cond_2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const-string v2, "P"

    :cond_2
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr":[Ljava/lang/String;
    const-string v8, "T"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    sput-boolean v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->bCustomizeFailCauseListIsPermenent:Z

    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    array-length v8, v0

    if-ge v5, v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    aget-object v9, v0, v5

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .restart local v5    # "i":I
    :cond_4
    const-string v8, "DcFailedCause"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cust list="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , isPermenet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->bCustomizeFailCauseListIsPermenent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "customizeFailCauseListString":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "DcFailedCause"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot read customization value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->bCustomizeFailCauseListIsPermenent:Z

    .local v0, "ret":Z
    :goto_0
    if-ne v0, v1, :cond_0

    const-string v1, "DcFailedCause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cust list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sCustomizeFailCauseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , isPermenet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->bCustomizeFailCauseListIsPermenent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ret":Z
    :cond_0
    :goto_1
    return v0

    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->bCustomizeFailCauseListIsPermenent:Z

    if-nez v2, :cond_2

    move v0, v1

    .restart local v0    # "ret":Z
    :cond_2
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public isRestartRadioFail()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method