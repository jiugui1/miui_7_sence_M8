.class public Lcom/android/internal/telephony/HtcMessageHelper;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;,
        Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    }
.end annotation


# static fields
.field private static final ACMS_AUTHZCODE_RESPONSE_PREFIX:Ljava/lang/String; = "AT&T FREE MESSAGE - This is an automated message, please ignore."

.field private static final COMMON_CMAS_DUP_CHECK_PERIOD:J = 0x5265c00L

.field public static final CT_CMD_ACCESS_NUMBER:Ljava/lang/String; = "10659401"

.field public static final CT_CMD_WAP_PUSH_PERMISSION:Ljava/lang/String; = "com.htc.permission.sms.CT_CMD_WAP_PUSH"

.field public static final CT_CMD_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "com.htc.sms.action.CT_CMD_WAP_PUSH_RECEIVED"

.field private static final DEBUG_SIGNATURE:Z = true

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final KEY_CDMA_SMS:Ljava/lang/String; = "cdma_sms_"

.field private static final KEY_CDMA_SMS_INDEX:Ljava/lang/String; = "cdma_sms_index"

.field private static final MAX_CDMA_SMS_FINGERPRINT_CACHE:I = 0x64

.field public static final RECEIVE_AUTHZCODE_PERMISSION:Ljava/lang/String; = "com.htc.permission.mms.ACCESS_ACMS_DATA"

.field private static final SMS_FINGERPRINT_CACHE_FILE_NAME:Ljava/lang/String; = "dup_sms_cache"

.field private static final SPRINT_EMS_ASCII_SEGMENT_LENGTH:I = 0x9a

.field private static final SPRINT_EMS_UNICODE_SEGMENT_LENGTH:I = 0x40

.field private static final SPRINT_MAX_SEGMENT_COUNT:I = 0x6

.field private static final SPRINT_REASSEMBLE_TAG:Ljava/lang/String; = "getSprintReassembleSmsInformation"

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final TMOUS_CMAS_DUP_CHECK_PERIOD:J = 0x2932e00L

.field private static final VERIZON_MAX_CMASID_COUNT:I = 0xffff

.field private static VZWSIGNATURE:[Ljava/lang/String;

.field private static mCmasIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sCompositeKddiEmoji00:Ljava/lang/String;

.field static sCompositeKddiEmoji01:Ljava/lang/String;

.field static sCompositeKddiEmoji02:Ljava/lang/String;

.field static sCompositeKddiEmoji03:Ljava/lang/String;

.field static sCompositeKddiEmoji04:Ljava/lang/String;

.field static sCompositeKddiEmoji05:Ljava/lang/String;

.field static sCompositeKddiEmoji06:Ljava/lang/String;

.field static sCompositeKddiEmoji07:Ljava/lang/String;

.field static sCompositeKddiEmoji08:Ljava/lang/String;

.field static sCompositeKddiEmoji09:Ljava/lang/String;

.field static sCompositeKddiEmoji10:Ljava/lang/String;

.field static sCompositeKddiEmoji11:Ljava/lang/String;

.field static sCompositeKddiEmoji12:Ljava/lang/String;

.field static sCompositeKddiEmoji13:Ljava/lang/String;

.field static sCompositeKddiEmoji14:Ljava/lang/String;

.field static sCompositeKddiEmoji15:Ljava/lang/String;

.field static sCompositeKddiEmoji16:Ljava/lang/String;

.field static sCompositeKddiEmoji17:Ljava/lang/String;

.field static sCompositeKddiEmoji18:Ljava/lang/String;

.field static sCompositeKddiEmoji19:Ljava/lang/String;

.field static sCompositeKddiEmoji20:Ljava/lang/String;

.field static sCountryCodeListCT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sDecompositeKddiEmoji00:Ljava/lang/String;

.field static sDecompositeKddiEmoji01:Ljava/lang/String;

.field static sDecompositeKddiEmoji02:Ljava/lang/String;

.field static sDecompositeKddiEmoji03:Ljava/lang/String;

.field static sDecompositeKddiEmoji04:Ljava/lang/String;

.field static sDecompositeKddiEmoji05:Ljava/lang/String;

.field static sDecompositeKddiEmoji06:Ljava/lang/String;

.field static sDecompositeKddiEmoji07:Ljava/lang/String;

.field static sDecompositeKddiEmoji08:Ljava/lang/String;

.field static sDecompositeKddiEmoji09:Ljava/lang/String;

.field static sDecompositeKddiEmoji10:Ljava/lang/String;

.field static sDecompositeKddiEmoji11:Ljava/lang/String;

.field static sDecompositeKddiEmoji12:Ljava/lang/String;

.field static sDecompositeKddiEmoji13:Ljava/lang/String;

.field static sDecompositeKddiEmoji14:Ljava/lang/String;

.field static sDecompositeKddiEmoji15:Ljava/lang/String;

.field static sDecompositeKddiEmoji16:Ljava/lang/String;

.field static sDecompositeKddiEmoji17:Ljava/lang/String;

.field static sDecompositeKddiEmoji18:Ljava/lang/String;

.field static sDecompositeKddiEmoji19:Ljava/lang/String;

.field static sDecompositeKddiEmoji20:Ljava/lang/String;

.field private static sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.verizon.permissions.qos"

    aput-object v1, v0, v3

    const-string v1, "com.verizon.permissions.appdirectedsms"

    aput-object v1, v0, v4

    const-string v1, "com.verizon.permissions.vzwappapn"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.verizon.permissions.sso"

    aput-object v2, v0, v1

    const-string v1, "com.verizon.permissions.securesettings"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "853"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "852"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "886"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji00:Ljava/lang/String;

    .line 2117
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb11

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji00:Ljava/lang/String;

    .line 2119
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji01:Ljava/lang/String;

    .line 2120
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb0e

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji01:Ljava/lang/String;

    .line 2122
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji02:Ljava/lang/String;

    .line 2123
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5d5

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji02:Ljava/lang/String;

    .line 2125
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji03:Ljava/lang/String;

    .line 2126
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeafa

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji03:Ljava/lang/String;

    .line 2128
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji04:Ljava/lang/String;

    .line 2129
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb10

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji04:Ljava/lang/String;

    .line 2131
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji05:Ljava/lang/String;

    .line 2132
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb0f

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji05:Ljava/lang/String;

    .line 2134
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji06:Ljava/lang/String;

    .line 2135
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe4cc

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji06:Ljava/lang/String;

    .line 2137
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji07:Ljava/lang/String;

    .line 2138
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb12

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji07:Ljava/lang/String;

    .line 2140
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji08:Ljava/lang/String;

    .line 2141
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5d6

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji08:Ljava/lang/String;

    .line 2143
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji09:Ljava/lang/String;

    .line 2144
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe573

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji09:Ljava/lang/String;

    .line 2146
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji10:Ljava/lang/String;

    .line 2147
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb84

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji10:Ljava/lang/String;

    .line 2149
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_b

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji11:Ljava/lang/String;

    .line 2150
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe522

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji11:Ljava/lang/String;

    .line 2152
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji12:Ljava/lang/String;

    .line 2153
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe523

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji12:Ljava/lang/String;

    .line 2155
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji13:Ljava/lang/String;

    .line 2156
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe524

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji13:Ljava/lang/String;

    .line 2158
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji14:Ljava/lang/String;

    .line 2159
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe525

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji14:Ljava/lang/String;

    .line 2161
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_f

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji15:Ljava/lang/String;

    .line 2162
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe526

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji15:Ljava/lang/String;

    .line 2164
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji16:Ljava/lang/String;

    .line 2165
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe527

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji16:Ljava/lang/String;

    .line 2167
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_11

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji17:Ljava/lang/String;

    .line 2168
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe528

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji17:Ljava/lang/String;

    .line 2170
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_12

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji18:Ljava/lang/String;

    .line 2171
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe529

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji18:Ljava/lang/String;

    .line 2173
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_13

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji19:Ljava/lang/String;

    .line 2174
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe52a

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji19:Ljava/lang/String;

    .line 2176
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji20:Ljava/lang/String;

    .line 2177
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5ac

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji20:Ljava/lang/String;

    return-void

    .line 2116
    :array_0
    .array-data 2
        -0xdds
        -0xd2s
    .end array-data

    .line 2119
    :array_1
    .array-data 2
        -0xdcs
        -0xdbs
    .end array-data

    .line 2122
    :array_2
    .array-data 2
        -0xdbs
        -0xcds
    .end array-data

    .line 2125
    :array_3
    .array-data 2
        -0xdas
        -0xces
    .end array-data

    .line 2128
    :array_4
    .array-data 2
        -0xd9s
        -0xdes
    .end array-data

    .line 2131
    :array_5
    .array-data 2
        -0xd7s
        -0xccs
    .end array-data

    .line 2134
    :array_6
    .array-data 2
        -0xd6s
        -0xd0s
    .end array-data

    .line 2137
    :array_7
    .array-data 2
        -0xd5s
        -0xces
    .end array-data

    .line 2140
    :array_8
    .array-data 2
        -0xces
        -0xcbs
    .end array-data

    .line 2143
    :array_9
    .array-data 2
        -0xcbs
        -0xcds
    .end array-data

    .line 2146
    :array_a
    .array-data 2
        0x23s
        0x20e3s
    .end array-data

    .line 2149
    :array_b
    .array-data 2
        0x31s
        0x20e3s
    .end array-data

    .line 2152
    :array_c
    .array-data 2
        0x32s
        0x20e3s
    .end array-data

    .line 2155
    :array_d
    .array-data 2
        0x33s
        0x20e3s
    .end array-data

    .line 2158
    :array_e
    .array-data 2
        0x34s
        0x20e3s
    .end array-data

    .line 2161
    :array_f
    .array-data 2
        0x35s
        0x20e3s
    .end array-data

    .line 2164
    :array_10
    .array-data 2
        0x36s
        0x20e3s
    .end array-data

    .line 2167
    :array_11
    .array-data 2
        0x37s
        0x20e3s
    .end array-data

    .line 2170
    :array_12
    .array-data 2
        0x38s
        0x20e3s
    .end array-data

    .line 2173
    :array_13
    .array-data 2
        0x39s
        0x20e3s
    .end array-data

    .line 2176
    :array_14
    .array-data 2
        0x30s
        0x20e3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2048
    return-void
.end method

.method public static addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 932
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 933
    .local v9, "msgRef":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 934
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 935
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 937
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 939
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 940
    .local v10, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 941
    .local v2, "cls":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 942
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 943
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 946
    :cond_0
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 947
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "tp_mr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 949
    const-string v13, "action"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_1
    if-eqz v5, :cond_2

    .line 952
    const-string v13, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 955
    const-string v13, "pkg_name"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 958
    const-string v13, "class_name"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_4
    const/4 v11, 0x0

    .line 963
    .local v11, "retUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 965
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 967
    sget-object v13, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 972
    .end local v4    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-object v11

    .line 968
    :catch_0
    move-exception v7

    .line 969
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert pending list failure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static addVzwCmasMessageIDorSerialNumberToTreeMap(IJ)V
    .locals 3
    .param p0, "newId"    # I
    .param p1, "date"    # J

    .prologue
    .line 232
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keep CMAS id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public static appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 16
    .param p0, "oriString"    # Ljava/lang/CharSequence;
    .param p1, "isAscii"    # Z

    .prologue
    .line 1375
    if-eqz p1, :cond_0

    const/16 v8, 0x9a

    .line 1376
    .local v8, "seglen":I
    :goto_0
    const/4 v2, 0x6

    .line 1377
    .local v2, "maxseg":I
    const/4 v10, 0x0

    .line 1378
    .local v10, "strlen":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1381
    .local v4, "newString":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 1382
    const/4 v13, 0x0

    .line 1433
    :goto_1
    return-object v13

    .line 1375
    .end local v2    # "maxseg":I
    .end local v4    # "newString":Ljava/lang/String;
    .end local v8    # "seglen":I
    .end local v10    # "strlen":I
    :cond_0
    const/16 v8, 0x40

    goto :goto_0

    .line 1388
    .restart local v2    # "maxseg":I
    .restart local v4    # "newString":Ljava/lang/String;
    .restart local v8    # "seglen":I
    .restart local v10    # "strlen":I
    :cond_1
    const/4 v0, 0x1

    .local v0, "currentseg":I
    :goto_2
    if-gt v0, v2, :cond_2

    .line 1390
    add-int/lit8 v13, v0, -0x1

    mul-int v12, v13, v8

    .line 1391
    .local v12, "thisSegmentStart":I
    mul-int v5, v0, v8

    .line 1395
    .local v5, "nextSegmentStart":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 1396
    if-lt v5, v10, :cond_3

    .line 1420
    .end local v5    # "nextSegmentStart":I
    .end local v12    # "thisSegmentStart":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    div-int v14, v13, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    rem-int/2addr v13, v8

    if-lez v13, :cond_7

    const/4 v13, 0x1

    :goto_3
    add-int v7, v14, v13

    .line 1424
    .local v7, "segcount":I
    new-array v9, v7, [Ljava/lang/String;

    .line 1425
    .local v9, "strarray":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1426
    .local v3, "newAppendedString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_9

    .line 1427
    add-int/lit8 v13, v7, -0x1

    if-ne v1, v13, :cond_8

    .line 1428
    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1399
    .end local v1    # "i":I
    .end local v3    # "newAppendedString":Ljava/lang/StringBuilder;
    .end local v7    # "segcount":I
    .end local v9    # "strarray":[Ljava/lang/String;
    .restart local v5    # "nextSegmentStart":I
    .restart local v12    # "thisSegmentStart":I
    :cond_3
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "char at checkPos "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move v11, v5

    .line 1406
    .local v11, "thisSegmentEnd":I
    :cond_4
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/HtcMessageHelper;->isMiddleWord(C)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1410
    :goto_6
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "emptyPos/checkPos: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-lt v11, v12, :cond_6

    if-ge v11, v5, :cond_6

    .line 1415
    add-int/lit8 v1, v11, 0x1

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v5, :cond_6

    .line 1416
    add-int/lit8 v13, v11, 0x1

    const/16 v14, 0x20

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1408
    .end local v1    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 1409
    if-ge v11, v12, :cond_4

    goto :goto_6

    .line 1417
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1420
    .end local v5    # "nextSegmentStart":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "thisSegmentEnd":I
    .end local v12    # "thisSegmentStart":I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1430
    .restart local v1    # "i":I
    .restart local v3    # "newAppendedString":Ljava/lang/StringBuilder;
    .restart local v7    # "segcount":I
    .restart local v9    # "strarray":[Ljava/lang/String;
    :cond_8
    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    add-int/lit8 v15, v1, 0x1

    mul-int/2addr v15, v8

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1433
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method private static final calculateOperatorString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2422
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 2448
    :cond_0
    :goto_0
    return-object v1

    .line 2423
    :cond_1
    const/4 v1, 0x0

    .line 2425
    .local v1, "name":Ljava/lang/String;
    instance-of v4, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    if-eqz v4, :cond_5

    move-object v0, p0

    .line 2426
    check-cast v0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 2428
    .local v0, "info":Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-eqz v4, :cond_0

    .line 2429
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2430
    .local v2, "showPlmn":Z
    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2431
    .local v3, "showSpn":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2432
    const-string v4, "%s(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2433
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 2434
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2435
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 2436
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2437
    :cond_4
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2438
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2441
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/OperatorInfo;
    .end local v2    # "showPlmn":Z
    .end local v3    # "showSpn":Z
    :cond_5
    instance-of v4, p0, Lcom/android/internal/telephony/OperatorInfo;

    if-eqz v4, :cond_6

    move-object v0, p0

    .line 2442
    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 2444
    .local v0, "info":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    .line 2445
    goto :goto_0

    .line 2446
    .end local v0    # "info":Lcom/android/internal/telephony/OperatorInfo;
    :cond_6
    const-string v4, "SMS"

    const-string v5, "no opt info!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 551
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 553
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 565
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, p1, p2, v4, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z

    move-result v3

    :goto_0
    return v3

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packageInfo found for UID/PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static check3GppCmasDuplication(Landroid/content/Context;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I
    .param p2, "sn"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 438
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v6, 0x0

    .line 442
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "address = ?  AND protocol = ?  AND is_cdma_format = ?  AND date > ?"

    .line 447
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 448
    .local v8, "validTimeMillis":J
    const-wide/32 v0, 0x5265c00

    sub-long/2addr v8, v0

    .line 449
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 456
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 457
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detecte duplicated CMAS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pdu"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    .line 467
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "validTimeMillis":J
    :goto_0
    return v0

    .line 461
    :catch_0
    move-exception v7

    .line 462
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception when checking CMAS duplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    .line 467
    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "validTimeMillis":J
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static checkAcmsReqId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 2687
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportAcms()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2753
    :cond_0
    :goto_0
    return v0

    .line 2689
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AT&T FREE MESSAGE - This is an automated message, please ignore."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2691
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2693
    :cond_3
    const-string v0, "SMS"

    const-string v2, "Received ACMS SMS!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string v0, "AT&T FREE MESSAGE - This is an automated message, please ignore."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2698
    .local v13, "tmp":Ljava/lang/String;
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 2699
    const-string v0, "SMS"

    const-string v2, "Invalid ACMS SMS! Without -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    const/4 v0, 0x0

    goto :goto_0

    .line 2703
    :cond_4
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2704
    .local v11, "param":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v12, v11, v0

    .line 2705
    .local v12, "requestId":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v7, v11, v0

    .line 2708
    .local v7, "authZCode":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2709
    :cond_5
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ACMS SMS!["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const/4 v0, 0x0

    goto :goto_0

    .line 2713
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 2714
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://acms/request-id/active/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2717
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2719
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2723
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2724
    :cond_7
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This requestId not exist in history!requestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    const/4 v0, 0x0

    .line 2750
    if-eqz v8, :cond_0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2728
    :cond_8
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2731
    .local v6, "activeFlag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2732
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Provider return requestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], activeFlag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/4 v0, 0x0

    .line 2750
    if-eqz v8, :cond_0

    goto :goto_1

    .line 2741
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.REQUEST_AUTHZCODE_DONE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "requestId"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2743
    const-string v0, "authZCode"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2744
    const-string v0, "com.htc.permission.mms.ACCESS_ACMS_DATA"

    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2746
    const/4 v0, 0x1

    .line 2750
    if-eqz v8, :cond_0

    goto :goto_1

    .line 2747
    .end local v6    # "activeFlag":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 2748
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SMS"

    const-string v2, "exception"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2750
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2753
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2750
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z
    .locals 11
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "matching"    # [Landroid/content/pm/Signature;
    .param p4, "delayWhenNotMatch"    # Z

    .prologue
    const/4 v9, 0x1

    .line 571
    if-eqz p3, :cond_0

    array-length v10, p3

    if-nez v10, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v9

    .line 574
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 575
    .local v2, "callingSignatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 576
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 577
    .local v8, "sig":Landroid/content/pm/Signature;
    move-object v1, p3

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 578
    .local v7, "matchSig":Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 577
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 576
    .end local v7    # "matchSig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 587
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :cond_4
    if-eqz p4, :cond_5

    .line 589
    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private static checkCdmaSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    .line 724
    const/4 v14, 0x0

    .line 730
    .local v14, "result":Z
    const/high16 v18, 0x40000

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 731
    const/16 v18, 0x0

    .line 779
    :goto_0
    return v18

    .line 741
    :cond_0
    :try_start_0
    const-string v18, "dup_sms_cache"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 742
    .local v15, "sp":Landroid/content/SharedPreferences;
    const-string v18, "cdma_sms_index"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 744
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v16

    .line 745
    .local v16, "timestamp":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v18

    move/from16 v0, v18

    int-to-long v10, v0

    .line 746
    .local v10, "messageId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 747
    .local v9, "messageBody":Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v9, ""

    .line 748
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 749
    .local v13, "originatingAddress":Ljava/lang/String;
    if-nez v13, :cond_2

    const-string v13, ""

    .line 750
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "callBackNumber":Ljava/lang/String;
    if-nez v3, :cond_3

    const-string v3, ""

    .line 754
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "lastFingerprint":Ljava/lang/String;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_4

    .line 757
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 758
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cdma_sms_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 759
    .local v12, "oldFingerPrint":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 760
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Detect duplicated CDMA SMS, which timestamp = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", message id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v14, 0x1

    .line 767
    .end local v6    # "i":I
    .end local v12    # "oldFingerPrint":Ljava/lang/String;
    :cond_4
    if-nez v14, :cond_5

    .line 768
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 769
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v7, v7, 0x1

    .line 770
    rem-int/lit8 v7, v7, 0x64

    .line 771
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cdma_sms_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 772
    const-string v18, "cdma_sms_index"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 773
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "callBackNumber":Ljava/lang/String;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "index":I
    .end local v8    # "lastFingerprint":Ljava/lang/String;
    .end local v9    # "messageBody":Ljava/lang/String;
    .end local v10    # "messageId":J
    .end local v13    # "originatingAddress":Ljava/lang/String;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "timestamp":J
    :cond_5
    :goto_2
    move/from16 v18, v14

    .line 779
    goto/16 :goto_0

    .line 757
    .restart local v3    # "callBackNumber":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "lastFingerprint":Ljava/lang/String;
    .restart local v9    # "messageBody":Ljava/lang/String;
    .restart local v10    # "messageId":J
    .restart local v12    # "oldFingerPrint":Ljava/lang/String;
    .restart local v13    # "originatingAddress":Ljava/lang/String;
    .restart local v15    # "sp":Landroid/content/SharedPreferences;
    .restart local v16    # "timestamp":J
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 775
    .end local v3    # "callBackNumber":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "lastFingerprint":Ljava/lang/String;
    .end local v9    # "messageBody":Ljava/lang/String;
    .end local v10    # "messageId":J
    .end local v12    # "oldFingerPrint":Ljava/lang/String;
    .end local v13    # "originatingAddress":Ljava/lang/String;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "timestamp":J
    :catch_0
    move-exception v4

    .line 776
    .local v4, "e":Ljava/lang/Exception;
    const-string v18, "SMS"

    const-string v19, "exception when checking CDMA SMS duplication"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/gsm/CBMessage;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "cb"    # Lcom/android/internal/telephony/gsm/CBMessage;

    .prologue
    .line 371
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwCmasDuplicateCheck()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v4

    .line 377
    .local v4, "id":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 378
    .local v2, "date":J
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "cbbody":Ljava/lang/String;
    :goto_1
    const-string v7, "SMS"

    const-string v8, "call check checkVzwCmasDuplicationAndInsert"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v4, v2, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkVzwCmasDuplicationAndInsert(IJ)Z

    move-result v7

    .line 421
    .end local v1    # "cbbody":Ljava/lang/String;
    .end local v2    # "date":J
    .end local v4    # "id":I
    :goto_2
    return v7

    .line 376
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v4

    goto :goto_0

    .line 378
    .restart local v2    # "date":J
    .restart local v4    # "id":I
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 384
    .end local v2    # "date":J
    .end local v4    # "id":I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTmoUsCmasDuplicateCheck()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 385
    if-eqz p2, :cond_3

    .line 386
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v6

    .line 387
    .local v6, "sn":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 388
    .restart local v2    # "date":J
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "cbBody":Ljava/lang/String;
    const-string v7, "SMS"

    const-string v8, "call check checkTmousGsmCmasDuplicationAndInsert"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {p0, v6, v2, v3, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->checkTmousGsmCmasDuplicationAndInsert(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v7

    goto :goto_2

    .line 392
    .end local v0    # "cbBody":Ljava/lang/String;
    .end local v2    # "date":J
    .end local v6    # "sn":I
    :cond_3
    const-string v7, "SMS"

    const-string v8, "cb is null! discard this message!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v7, 0x1

    goto :goto_2

    .line 398
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupport3GppCmasDuplicateCheck()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 399
    if-eqz p2, :cond_5

    .line 400
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v5

    .line 401
    .local v5, "messageId":I
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v6

    .line 402
    .restart local v6    # "sn":I
    const-string v7, "SMS"

    const-string v8, "check GSM CMAS Duplication!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {p0, v5, v6}, Lcom/android/internal/telephony/HtcMessageHelper;->check3GppCmasDuplication(Landroid/content/Context;II)Z

    move-result v7

    goto :goto_2

    .line 410
    .end local v5    # "messageId":I
    .end local v6    # "sn":I
    :cond_5
    if-nez p1, :cond_6

    .line 411
    const/4 v7, 0x0

    goto :goto_2

    .line 413
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 414
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMarkedOldCmasMessage(Landroid/content/Context;)V

    .line 421
    :cond_7
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v7

    goto :goto_2
.end method

.method private static checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 293
    const/4 v12, 0x0

    .line 299
    .local v12, "result":Z
    const/4 v10, 0x1

    .line 300
    .local v10, "isCdma":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v11

    .line 301
    .local v11, "msg_id":I
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 310
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "protocol = ?  AND is_cdma_format = ? "

    .line 315
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( exp > ? ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v1

    .line 328
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 330
    .local v7, "currentTimeMillis":J
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 338
    .end local v7    # "currentTimeMillis":J
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 340
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 342
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detecte duplicated CMAS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    const/4 v12, 0x1

    .line 348
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return v12

    .line 321
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    .restart local v7    # "currentTimeMillis":J
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    .end local v7    # "currentTimeMillis":J
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 352
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking CMAS duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static checkGsmSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 687
    const/4 v8, 0x0

    .line 690
    .local v8, "result":Z
    :try_start_0
    const-string v3, "address = ? AND date = ? AND body = ?"

    .line 692
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 697
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 699
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 700
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v8, 0x1

    .line 704
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 706
    :catch_0
    move-exception v7

    .line 707
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    .line 658
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateSmsMechanism()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 662
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    if-eqz v0, :cond_1

    .line 663
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCdmaSmsDuplicationDetect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCdmaSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z

    move-result v0

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportGsmSmsDuplicationDetect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkGsmSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    goto :goto_0

    .line 672
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkTmousGsmCmasDuplicationAndInsert(Landroid/content/Context;IJLjava/lang/String;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sn"    # I
    .param p2, "date"    # J
    .param p4, "cbBody"    # Ljava/lang/String;

    .prologue
    .line 489
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new incoming CMAS message for check is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    if-nez p4, :cond_2

    const/4 v2, 0x1

    .line 541
    :cond_1
    :goto_0
    return v2

    .line 494
    :cond_2
    const/4 v8, 0x0

    .line 496
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "body = ?  and date > ?"

    .line 498
    .local v5, "selection":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 499
    .local v9, "currentTimeMillis":J
    const-wide/32 v2, 0x2932e00

    sub-long/2addr v9, v2

    .line 500
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v6, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 502
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 503
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 504
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detecte duplicated CMAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    const/4 v2, 0x1

    .line 510
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 507
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "currentTimeMillis":J
    :catch_0
    move-exception v11

    .line 508
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when checking CMAS duplication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 515
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 516
    .local v16, "oldDate":J
    sub-long v18, p2, v16

    .line 518
    .local v18, "period":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v18, v2

    if-gtz v2, :cond_5

    .line 519
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got duplicate message ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 510
    .end local v16    # "oldDate":J
    .end local v18    # "period":J
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 522
    .restart local v16    # "oldDate":J
    .restart local v18    # "period":J
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 527
    .end local v16    # "oldDate":J
    .end local v18    # "period":J
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v13, "expiredSnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 529
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v20, p2, v2

    .line 530
    .local v20, "peroid":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v20, v2

    if-lez v2, :cond_7

    .line 531
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 534
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v20    # "peroid":J
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 535
    .local v15, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 539
    .end local v15    # "key":Ljava/lang/Integer;
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 510
    .end local v13    # "expiredSnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "currentTimeMillis":J
    :cond_a
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1
.end method

.method public static checkVzwCmasDuplicationAndInsert(IJ)Z
    .locals 4
    .param p0, "newId"    # I
    .param p1, "date"    # J

    .prologue
    .line 268
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW new CMAS id for check is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 271
    .local v0, "mapSize":I
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Vzw duplicate message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x1

    .line 281
    :goto_0
    return v1

    .line 276
    :cond_0
    const v1, 0xffff

    if-lt v0, v1, :cond_1

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->removeOldestVzwCmasKey()V

    .line 279
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->addVzwCmasMessageIDorSerialNumberToTreeMap(IJ)V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteMarkedOldCmasMessage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "currentTimeMillis":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( c_type =  0 ) AND (exp < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "selectionForDeleteOldCmas":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public static deleteMsgRefFromPendingList(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgRef"    # I

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 921
    :goto_0
    return v0

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete pending list failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeShiftJis(Ljava/lang/String;)[B
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1208
    if-nez p0, :cond_0

    .line 1225
    :goto_0
    return-object v5

    .line 1212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1213
    .local v0, "charCount":I
    const-string v6, "SJIS"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 1214
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1217
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1216
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1222
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SJIS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v2

    .line 1224
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "encodeShiftJis"

    const-string v7, "SJIS encode failed: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static forcePlusCodeTo011()Z
    .locals 1

    .prologue
    .line 2384
    const/4 v0, 0x0

    return v0
.end method

.method public static getCodePointFromSurrogatePair([C)I
    .locals 7
    .param p0, "pair"    # [C

    .prologue
    const v6, 0xdc00

    const v5, 0xd800

    const/4 v3, 0x0

    .line 1939
    const/4 v2, 0x0

    .line 1941
    .local v2, "result":I
    aget-char v0, p0, v3

    .line 1942
    .local v0, "hi_char":C
    const/4 v4, 0x1

    aget-char v1, p0, v4

    .line 1945
    .local v1, "lo_char":C
    if-lt v0, v5, :cond_0

    const v4, 0xdbff

    if-le v0, v4, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return v3

    .line 1949
    :cond_1
    if-lt v1, v6, :cond_0

    const v4, 0xdfff

    if-gt v1, v4, :cond_0

    .line 1953
    sub-int v3, v0, v5

    mul-int/lit16 v3, v3, 0x400

    sub-int v4, v1, v6

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v2, v3, v4

    move v3, v2

    .line 1959
    goto :goto_0
.end method

.method private static getIccOperator(I)Ljava/lang/String;
    .locals 3
    .param p0, "iccType"    # I

    .prologue
    .line 2806
    const/4 v0, 0x0

    .line 2807
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 2808
    .local v1, "tm":Lcom/htc/service/HtcTelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualSlotDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2809
    invoke-virtual {v1, p0}, Lcom/htc/service/HtcTelephonyManager;->getIccOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 2817
    :goto_0
    return-object v0

    .line 2812
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageRef"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 839
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "action"

    aput-object v0, v2, v1

    const-string v0, "uri"

    aput-object v0, v2, v3

    const-string v0, "pkg_name"

    aput-object v0, v2, v5

    const-string v0, "class_name"

    aput-object v0, v2, v13

    const/4 v0, 0x4

    const-string v1, "tp_mr"

    aput-object v1, v2, v0

    .line 846
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 851
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 852
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 855
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, "action":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 858
    .local v12, "uriStr":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 859
    .local v11, "pkg":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, "cls":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .end local v9    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v9, v10

    .line 869
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "cls":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "uriStr":Ljava/lang/String;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 872
    :cond_2
    return-object v9

    .line 869
    :catchall_0
    move-exception v0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v8    # "cls":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "uriStr":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getKddiEmailSignalAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    const-string v0, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    return-object v0
.end method

.method public static getKddiEmailSignalPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1353
    const-string v0, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    return-object v0
.end method

.method public static getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;
    .locals 14
    .param p0, "userdata"    # [B
    .param p1, "skipEsnCheck"    # Z

    .prologue
    .line 1274
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 1284
    .local v9, "resultString":Ljava/lang/String;
    const/16 v11, 0x10

    new-array v5, v11, [B

    fill-array-data v5, :array_0

    .line 1294
    .local v5, "repKddislamdownData":[B
    const/4 v11, 0x1

    new-array v6, v11, [B

    const/4 v11, 0x0

    const/16 v12, 0x2f

    aput-byte v12, v6, v11

    .line 1295
    .local v6, "repKddislamdownData2":[B
    const/4 v11, 0x2

    new-array v7, v11, [B

    fill-array-data v7, :array_1

    .line 1298
    .local v7, "repKddislamdownData3":[B
    array-length v11, v5

    add-int/lit8 v11, v11, 0x7

    new-array v8, v11, [B

    .line 1306
    .local v8, "resultData":[B
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    .line 1307
    const/4 v4, 0x0

    .line 1312
    .local v4, "offset":I
    :goto_0
    const/4 v1, 0x0

    .line 1313
    .local v1, "destPos":I
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1314
    array-length v11, v5

    add-int/2addr v1, v11

    .line 1315
    array-length v11, p0

    sub-int/2addr v11, v4

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 1317
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v2, "df":Ljava/text/DecimalFormat;
    add-int/lit8 v11, v4, 0x2

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "countValue":Ljava/lang/String;
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    add-int/lit8 v1, v1, 0x2

    .line 1328
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v6, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1329
    add-int/lit8 v1, v1, 0x1

    .line 1330
    add-int/lit8 v11, v4, 0x3

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 1331
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unread: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1333
    add-int/lit8 v1, v1, 0x2

    .line 1334
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v7, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1338
    .end local v0    # "countValue":Ljava/lang/String;
    .end local v2    # "df":Ljava/text/DecimalFormat;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v8

    const-string v13, "SJIS"

    invoke-direct {v10, v8, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    .end local v9    # "resultString":Ljava/lang/String;
    .local v10, "resultString":Ljava/lang/String;
    :try_start_1
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 1345
    .end local v10    # "resultString":Ljava/lang/String;
    .restart local v9    # "resultString":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1309
    .end local v1    # "destPos":I
    .end local v4    # "offset":I
    :cond_1
    const/4 v4, 0x2

    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 1341
    .restart local v1    # "destPos":I
    :catch_0
    move-exception v3

    .line 1342
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SJIS decode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1341
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "resultString":Ljava/lang/String;
    .restart local v10    # "resultString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "resultString":Ljava/lang/String;
    .restart local v9    # "resultString":Ljava/lang/String;
    goto :goto_2

    .line 1284
    :array_0
    .array-data 1
        -0x6dt
        0x60t
        -0x74t
        -0x42t
        -0x7et
        -0x58t
        -0x6et
        0x6dt
        -0x7et
        -0x19t
        -0x7et
        -0x47t
        0xdt
        0xat
        -0x6at
        -0x5et
    .end array-data

    .line 1295
    :array_1
    .array-data 1
        -0x74t
        -0x71t
    .end array-data
.end method

.method public static getLfCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2343
    if-nez p0, :cond_1

    .line 2344
    const/4 v2, 0x0

    .line 2353
    :cond_0
    return v2

    .line 2346
    :cond_1
    const/4 v2, 0x0

    .line 2347
    .local v2, "lfCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2348
    .local v0, "characterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2349
    const/16 v3, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2350
    add-int/lit8 v2, v2, 0x1

    .line 2348
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 2626
    const-string v0, ""

    .line 2627
    .local v0, "optName":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualSlotDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2628
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/service/HtcTelephonyManager;->getNetworkOperatorNameExt(I)Ljava/lang/String;

    move-result-object v0

    .line 2639
    :cond_0
    :goto_0
    return-object v0

    .line 2630
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 2631
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2632
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 2633
    const-string v1, "gsm.gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2634
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 2635
    const-string v1, "gsm.cdma.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;
    .locals 6
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 598
    .local v2, "psName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 606
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 618
    .end local v1    # "packages":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 610
    .restart local v1    # "packages":[Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packages with UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhoneTypeFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2652
    const/4 v0, 0x0

    .line 2653
    .local v0, "phoneType":I
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualSlotDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2654
    const-string v1, "phone_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2658
    :goto_0
    return v0

    .line 2656
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1230
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1231
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .line 1232
    .local v0, "byteSize":I
    div-int/lit16 v3, v0, 0x8c

    rem-int/lit16 v2, v0, 0x8c

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1234
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1235
    if-lez v0, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x8c

    sub-int/2addr v2, v0

    :goto_1
    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1237
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1238
    return-object v1

    .line 1232
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1235
    :cond_1
    const/16 v2, 0x8c

    goto :goto_1
.end method

.method public static getSprintReassembleSmsInformation(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    .locals 28
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1696
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "start to parse"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 1699
    :cond_0
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Null text or length too shhort, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/16 v19, 0x0

    .line 1927
    :goto_0
    return-object v19

    .line 1703
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    .line 1705
    .local v23, "totalLength":I
    const-string v25, "("

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1706
    .local v15, "indexOfFirstOpenParenthesis":I
    const/4 v10, -0x1

    .line 1708
    .local v10, "indexOfFirstCloseParenthesis":I
    const-string v25, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1709
    .local v13, "indexOfFirstOpenBraces":I
    const/4 v8, -0x1

    .line 1711
    .local v8, "indexOfFirstCloseBraces":I
    const-string v25, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1712
    .local v14, "indexOfFirstOpenBrackets":I
    const/4 v9, -0x1

    .line 1714
    .local v9, "indexOfFirstCloseBrackets":I
    const-string v25, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1715
    .local v11, "indexOfFirstForwardSlash":I
    const-string v25, "of"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1717
    .local v12, "indexOfFirstOf":I
    const/4 v6, -0x1

    .line 1719
    .local v6, "indexOfContent":I
    const/4 v3, -0x1

    .line 1720
    .local v3, "currentSegment":I
    const/16 v24, -0x1

    .line 1723
    .local v24, "totalSegment":I
    if-eqz v15, :cond_2

    if-eqz v13, :cond_2

    if-nez v14, :cond_10

    .line 1724
    :cond_2
    const/16 v16, -0x1

    .line 1725
    .local v16, "indexOfOpen":I
    const/4 v5, -0x1

    .line 1728
    .local v5, "indexOfClose":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_3

    .line 1729
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without forward slash, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v19, 0x0

    goto :goto_0

    .line 1734
    :cond_3
    if-nez v15, :cond_5

    .line 1735
    const-string v25, ")"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1737
    move/from16 v16, v15

    .line 1738
    move v5, v10

    .line 1752
    :cond_4
    :goto_1
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 1753
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/16 v19, 0x0

    goto :goto_0

    .line 1739
    :cond_5
    if-nez v13, :cond_6

    .line 1740
    const-string v25, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1742
    move/from16 v16, v13

    .line 1743
    move v5, v8

    goto :goto_1

    .line 1744
    :cond_6
    if-nez v14, :cond_4

    .line 1745
    const-string v25, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1747
    move/from16 v16, v14

    .line 1748
    move v5, v9

    goto :goto_1

    .line 1758
    :cond_7
    if-le v11, v5, :cond_8

    .line 1759
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 forward parenthesis behind close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1765
    :cond_8
    add-int/lit8 v25, v5, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_9

    add-int/lit8 v25, v16, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_a

    .line 1767
    :cond_9
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without current segment or total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1772
    :cond_a
    add-int/lit8 v17, v5, 0x1

    .line 1773
    .local v17, "indexOfRightOfClose":I
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    const-string v25, " "

    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 1774
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfRightOfClose : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalLength : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 1777
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "right of close : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_b
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 space is not after close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1782
    :cond_c
    add-int/lit8 v6, v5, 0x2

    .line 1785
    move/from16 v0, v23

    if-lt v6, v0, :cond_d

    .line 1786
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 has no content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1792
    :cond_d
    add-int/lit8 v25, v16, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1801
    add-int/lit8 v25, v11, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .line 1894
    .end local v5    # "indexOfClose":I
    .end local v16    # "indexOfOpen":I
    .end local v17    # "indexOfRightOfClose":I
    :cond_e
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_1e

    .line 1895
    :cond_f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Can\'t get some information, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1793
    .restart local v5    # "indexOfClose":I
    .restart local v16    # "indexOfOpen":I
    .restart local v17    # "indexOfRightOfClose":I
    :catch_0
    move-exception v20

    .line 1794
    .local v20, "nfe1":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1802
    .end local v20    # "nfe1":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v21

    .line 1803
    .local v21, "nfe2":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1807
    .end local v5    # "indexOfClose":I
    .end local v16    # "indexOfOpen":I
    .end local v17    # "indexOfRightOfClose":I
    .end local v21    # "nfe2":Ljava/lang/NumberFormatException;
    :cond_10
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_11

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_e

    .line 1811
    :cond_11
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_12

    .line 1812
    const-string v4, "/"

    .line 1813
    .local v4, "delim":Ljava/lang/String;
    move v7, v11

    .line 1827
    .local v7, "indexOfDelim":I
    :goto_3
    const/16 v25, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 1834
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    add-int/lit8 v25, v23, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_15

    .line 1835
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 forward slash is the last character, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1814
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_12
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_13

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_13

    .line 1815
    const-string v4, "of"

    .line 1816
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v12

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1817
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_13
    if-ge v11, v12, :cond_14

    .line 1818
    const-string v4, "/"

    .line 1819
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v11

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1821
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_14
    const-string v4, "of"

    .line 1822
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v12

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1828
    :catch_2
    move-exception v20

    .line 1829
    .restart local v20    # "nfe1":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1837
    .end local v20    # "nfe1":Ljava/lang/NumberFormatException;
    :cond_15
    const-string v25, "of"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    add-int/lit8 v25, v23, -0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_16

    .line 1838
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 without of is the last word, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1844
    :cond_16
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 1845
    add-int/lit8 v18, v7, 0x1

    .line 1851
    .local v18, "indexOfTotalSegment":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 1852
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1847
    .end local v18    # "indexOfTotalSegment":I
    :cond_17
    add-int/lit8 v18, v7, 0x2

    .restart local v18    # "indexOfTotalSegment":I
    goto :goto_4

    .line 1856
    :cond_18
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1857
    :cond_19
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1862
    :cond_1a
    move/from16 v6, v18

    .line 1863
    :goto_5
    move/from16 v0, v23

    if-ge v6, v0, :cond_1b

    const-string v25, " "

    add-int/lit8 v26, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    .line 1864
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1867
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 1870
    move/from16 v0, v23

    if-lt v6, v0, :cond_1c

    .line 1871
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1877
    :cond_1c
    add-int/lit8 v25, v18, 0x1

    move/from16 v0, v25

    if-ne v0, v6, :cond_1d

    .line 1878
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfTotalSegment : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find space between segment & content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1886
    :cond_1d
    add-int/lit8 v25, v6, -0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v24

    goto/16 :goto_2

    .line 1887
    :catch_3
    move-exception v21

    .line 1888
    .restart local v21    # "nfe2":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1899
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    .end local v18    # "indexOfTotalSegment":I
    .end local v21    # "nfe2":Ljava/lang/NumberFormatException;
    :cond_1e
    if-eqz v3, :cond_1f

    if-nez v24, :cond_20

    .line 1900
    :cond_1f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment or totalSegment is 0, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1904
    :cond_20
    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_21

    .line 1905
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "totalSegment size more than one byte, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1909
    :cond_21
    move/from16 v0, v24

    if-le v3, v0, :cond_22

    .line 1910
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment greater than totalSegment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1914
    :cond_22
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    .local v22, "sb":Ljava/lang/StringBuilder;
    const-string v25, "("

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    const-string v25, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    const-string v25, ") "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    new-instance v19, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;-><init>()V

    .line 1923
    .local v19, "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    .line 1924
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->totalSegment:I

    .line 1925
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "originPort"    # I
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z
    .param p6, "phoneType"    # I

    .prologue
    .line 146
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSurrogatePairFromCodePoint(I)[C
    .locals 8
    .param p0, "codePoint"    # I

    .prologue
    const v7, 0xdc00

    const v6, 0xd800

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1970
    const/high16 v3, 0x10000

    sub-int v0, p0, v3

    .line 1971
    .local v0, "cp2":I
    const v3, 0xfffff

    if-le v0, v3, :cond_1

    move-object v1, v2

    .line 1992
    :cond_0
    :goto_0
    return-object v1

    .line 1976
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 1977
    .local v1, "pair":[C
    shr-int/lit8 v3, v0, 0xa

    and-int/lit16 v3, v3, 0x3ff

    add-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 1978
    and-int/lit16 v3, v0, 0x3ff

    add-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v1, v5

    .line 1981
    aget-char v3, v1, v4

    if-lt v3, v6, :cond_2

    aget-char v3, v1, v4

    const v4, 0xdbff

    if-le v3, v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 1982
    goto :goto_0

    .line 1985
    :cond_3
    aget-char v3, v1, v5

    if-lt v3, v7, :cond_4

    aget-char v3, v1, v5

    const v4, 0xdfff

    if-le v3, v4, :cond_0

    :cond_4
    move-object v1, v2

    .line 1986
    goto :goto_0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;
    .locals 6
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 623
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 627
    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 629
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 634
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 645
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 637
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packageInfo found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 7
    .param p0, "smsc"    # [B
    .param p1, "pdu"    # [B
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "bFirstOfAll"    # Z
    .param p5, "bLastOfAll"    # Z

    .prologue
    .line 154
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 155
    .local v0, "sm":Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 156
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 158
    :cond_0
    return-void
.end method

.method public static insertDummyDataForTwoCharacterLf(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 2363
    if-nez p0, :cond_0

    .line 2364
    const/4 v3, 0x0

    .line 2374
    :goto_0
    return-object v3

    .line 2367
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2368
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getLfCount(Ljava/lang/String;)I

    move-result v1

    .line 2370
    .local v1, "lfCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2371
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2374
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isCDMAHideLanguageIndicator()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1618
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->getIccOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1619
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isNetworkRoaming(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaPccwRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1621
    :cond_1
    const-string v1, "SMS"

    const-string v2, "Hide Language Indicator"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v1, 0x1

    .line 1624
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCDMAHidePriorityIndicator()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1655
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->getIccOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isNetworkRoaming(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaPccwRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1658
    :cond_1
    const-string v1, "SMS"

    const-string v2, "Hide Priority Indicator"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v1, 0x1

    .line 1661
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCDMAHideReplyOption()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1672
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->getIccOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1674
    const-string v1, "SMS"

    const-string v2, "Hide Reply Option"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v1, 0x1

    .line 1677
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCdmaMo()Z
    .locals 3

    .prologue
    .line 2865
    const/4 v1, 0x0

    .line 2867
    .local v1, "isCdmaMo":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2868
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2869
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isCdmaMo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2874
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 2871
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isCdmaPccwRoaming()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1631
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1632
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorExt(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "45429"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1641
    const/4 v2, 0x1

    .line 1644
    :goto_1
    return v2

    .line 1633
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1634
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1644
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isCtIccCard(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 2783
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    const-string v0, "46003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2785
    const/4 v0, 0x1

    .line 2788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualSlotDevice()Z
    .locals 1

    .prologue
    .line 2666
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcMessageAp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2885
    const-string v0, "com.htc.sense.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInHtcBlockedList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2567
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2568
    .local v7, "builder":Landroid/net/Uri$Builder;
    const/4 v10, 0x0

    .line 2569
    .local v10, "htcBlockList":Z
    const/4 v6, 0x0

    .line 2571
    .local v6, "blocked":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportPhoneNumBlockListCheck()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2573
    const/4 v10, 0x1

    .line 2574
    const-string v0, "contactblocklist"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2575
    const-string v0, "number"

    invoke-virtual {v7, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2582
    :goto_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2584
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 2586
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2588
    if-eqz v10, :cond_3

    .line 2589
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2592
    const/4 v6, 0x1

    .line 2593
    const-string v0, "SMS"

    const-string v2, "This number is Blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2606
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2612
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    return v6

    .line 2579
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v0, "blocklist"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2580
    const-string v0, "number"

    invoke-virtual {v7, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2598
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2599
    const/4 v6, 0x1

    .line 2600
    const-string v0, "SMS"

    const-string v2, "This number is Blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2603
    :catch_0
    move-exception v9

    .line 2604
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2606
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2609
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 2610
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2606
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static isKddi3gppCb(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 989
    const/16 v1, 0x1100

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1103

    if-eq p0, v1, :cond_0

    const v1, 0xac00

    if-ne p0, v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    const v1, 0xa000

    if-lt p0, v1, :cond_2

    const v1, 0xafff

    if-le p0, v1, :cond_0

    .line 1001
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKddiBcsmsTestMode()Z
    .locals 3

    .prologue
    .line 1133
    const-string v1, "kddi.lab.test"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "testMode":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isKddiOptionService(I)Z
    .locals 1
    .param p0, "typeId"    # I

    .prologue
    .line 1259
    const v0, 0xef40

    if-lt p0, v0, :cond_0

    const v0, 0xef7e

    if-gt p0, v0, :cond_0

    .line 1260
    const/4 v0, 0x1

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOtherService(I)Z
    .locals 1
    .param p0, "typeId"    # I

    .prologue
    .line 1266
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 1267
    const/4 v0, 0x1

    .line 1269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiRoaming()Z
    .locals 4

    .prologue
    .line 1358
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, "mccMnc":Ljava/lang/String;
    const-string v1, "isKddiRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    if-eqz v0, :cond_0

    const-string v1, "440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1361
    :cond_0
    const/4 v1, 0x0

    .line 1363
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isKddiSmsTypeCmail(I)Z
    .locals 2
    .param p0, "typeId"    # I

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "isCmail":Z
    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    .line 1246
    const/4 v0, 0x1

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    const/16 v1, 0x103

    if-lt p0, v1, :cond_2

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_2

    .line 1248
    const/4 v0, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    const/16 v1, 0x202

    if-lt p0, v1, :cond_3

    const v1, 0xef39

    if-gt p0, v1, :cond_3

    .line 1250
    const/4 v0, 0x1

    goto :goto_0

    .line 1251
    :cond_3
    const v1, 0xef7f

    if-lt p0, v1, :cond_0

    .line 1252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMiddleWord(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 1437
    const/16 v1, 0x61

    if-gt v1, p0, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-gt v1, p0, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1439
    .local v0, "bEnglishChar":Z
    :goto_0
    return v0

    .line 1437
    .end local v0    # "bEnglishChar":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsWapPush(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2473
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2474
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2475
    .local v1, "mime":Ljava/lang/String;
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2478
    const/4 v2, 0x1

    .line 2480
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 5
    .param p0, "phoneType"    # I

    .prologue
    .line 2762
    const/4 v0, 0x0

    .line 2763
    .local v0, "isRoaming":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualSlotDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2764
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/service/HtcTelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v0

    .line 2773
    :cond_0
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is roaming? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return v0

    .line 2767
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 2769
    .local v1, "nowPhoneType":I
    if-ne v1, p0, :cond_0

    .line 2770
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNumberBlocked(Landroid/content/Context;Landroid/content/Intent;[Landroid/telephony/SmsMessage;Lcom/android/internal/telephony/TencentSecurityManager;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "secureMgr"    # Lcom/android/internal/telephony/TencentSecurityManager;

    .prologue
    .line 2495
    const/4 v2, 0x0

    .line 2496
    .local v2, "slot":I
    const/4 v6, -0x1

    .line 2497
    .local v6, "msgType":I
    const/4 v4, 0x0

    .line 2498
    .local v4, "phoneNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2499
    .local v10, "htcBlocked":Z
    const/4 v3, 0x0

    .line 2500
    .local v3, "optName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2501
    .local v5, "content":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2502
    .local v14, "phoneType":I
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    if-eqz p2, :cond_4

    .line 2504
    const/4 v6, 0x0

    .line 2505
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 2506
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->isInHtcBlockedList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 2509
    const-string v15, "isBlocked"

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2511
    if-nez v10, :cond_3

    .line 2515
    move-object/from16 v0, p2

    array-length v13, v0

    .line 2516
    .local v13, "pduCnt":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2517
    .local v7, "body":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_2

    .line 2518
    aget-object v1, p2, v11

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2509
    .end local v7    # "body":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v13    # "pduCnt":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2521
    .restart local v7    # "body":Ljava/lang/StringBuilder;
    .restart local v11    # "i":I
    .restart local v13    # "pduCnt":I
    :cond_2
    const-string v1, "phone_slot"

    const/16 v15, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2522
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/HtcMessageHelper;->getPhoneTypeFromIntent(Landroid/content/Intent;)I

    move-result v14

    .line 2524
    invoke-static {v14}, Lcom/android/internal/telephony/HtcMessageHelper;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v3

    .line 2525
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p3

    .line 2526
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TencentSecurityManager;->isBlockedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 2552
    .end local v7    # "body":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v13    # "pduCnt":I
    :goto_2
    return v1

    .line 2530
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 2532
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/HtcMessageHelper;->isMmsWapPush(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2535
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    .line 2536
    const-string v1, "com.google.android.mms.util.HtcMmsUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2537
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v15, Landroid/content/Intent;

    aput-object v15, v12, v1

    const/4 v1, 0x1

    const-class v15, Lcom/android/internal/telephony/TencentSecurityManager;

    aput-object v15, v12, v1

    .line 2541
    .local v12, "params":[Ljava/lang/Class;
    const-string v1, "isTencentBlockedMmsWapPush"

    invoke-virtual {v8, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    .line 2543
    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "params":[Ljava/lang/Class;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    .line 2544
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    .line 2546
    :cond_6
    const-string v1, "SMS"

    const-string v15, "fail to get method isTencentBlockedMmsWapPush"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    :cond_7
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    .line 2548
    :catch_0
    move-exception v9

    .line 2549
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static isPhoneNumberContainCountryCodeInCtList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2849
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 2855
    :cond_0
    :goto_0
    return v2

    .line 2850
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2851
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2852
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSystemAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1453
    const/4 v1, 0x0

    .line 1455
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1459
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1460
    const/4 v2, 0x1

    .line 1462
    :cond_0
    return v2

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    const-string v4, "exception when get packageinfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVerizonAvsAuthorized(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1563
    const-string v2, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1564
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1565
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1569
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1571
    if-eqz v7, :cond_1

    .line 1572
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVS query cursor count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1585
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1586
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1587
    .local v6, "apiIds":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v2, "VZWSMS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1588
    const/4 v2, 0x1

    .line 1601
    if-eqz v7, :cond_0

    .line 1602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1605
    .end local v6    # "apiIds":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1593
    :cond_1
    :try_start_1
    const-string v2, "SMS"

    const-string v3, "AVS query cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1601
    if-eqz v7, :cond_2

    .line 1602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v9

    .line 1594
    goto :goto_0

    .line 1596
    :catch_0
    move-exception v8

    .line 1597
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SMS"

    const-string v3, "AVS query exception !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1601
    if-eqz v7, :cond_3

    .line 1602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v2, v9

    .line 1599
    goto :goto_0

    .line 1601
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 1602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_4
    throw v2

    :cond_5
    if-eqz v7, :cond_6

    .line 1602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v2, v9

    .line 1605
    goto :goto_0
.end method

.method public static isVerizonConsignAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1478
    const/4 v6, 0x0

    .line 1479
    .local v6, "rtResult":Z
    sget-object v11, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    array-length v10, v11

    .line 1480
    .local v10, "vzwSignatureAPLen":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1483
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-array v7, v10, [[Landroid/content/pm/Signature;

    .line 1484
    .local v7, "signVzws":[[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 1486
    const/4 v11, 0x0

    aput-object v11, v7, v2

    .line 1490
    :try_start_0
    sget-object v11, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    aget-object v11, v11, v2

    const/16 v12, 0x40

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aput-object v11, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "SMS"

    const-string v12, "get V signature exception"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1498
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    .line 1500
    .local v8, "signs":[Landroid/content/pm/Signature;
    const/16 v11, 0x40

    :try_start_1
    invoke-virtual {v5, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v8, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1508
    :goto_2
    if-eqz v8, :cond_1

    .line 1509
    :try_start_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AP sig count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    array-length v0, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1513
    .local v0, "apSigcount":I
    const/4 v11, 0x1

    if-ge v0, v11, :cond_2

    .line 1514
    const/4 v6, 0x0

    .line 1544
    .end local v0    # "apSigcount":I
    .end local v6    # "rtResult":Z
    :cond_1
    :goto_3
    return v6

    .line 1501
    .restart local v6    # "rtResult":Z
    :catch_1
    move-exception v1

    .line 1502
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "SMS"

    const-string v12, "get AP signature exception"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1518
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apSigcount":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    if-ge v4, v0, :cond_1

    .line 1519
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_6

    .line 1521
    :try_start_3
    aget-object v11, v7, v2

    if-nez v11, :cond_4

    .line 1522
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sig in V AP:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is null, continue"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1527
    :cond_4
    aget-object v11, v7, v2

    array-length v9, v11

    .line 1528
    .local v9, "vzwSigCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6
    if-ge v3, v9, :cond_3

    .line 1529
    aget-object v11, v8, v4

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    aget-object v11, v8, v4

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v2

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1531
    const-string v11, "SMS"

    const-string v12, "check success"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/4 v6, 0x1

    goto :goto_3

    .line 1534
    :cond_5
    const-string v11, "SMS"

    const-string v12, "check failed"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1528
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1518
    .end local v3    # "j":I
    .end local v9    # "vzwSigCount":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1540
    .end local v0    # "apSigcount":I
    .end local v4    # "k":I
    :catch_2
    move-exception v1

    .line 1541
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1173
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1200
    :goto_0
    return-object v1

    .line 1174
    :cond_1
    const/4 v8, 0x0

    .line 1175
    .local v8, "sb":Ljava/lang/StringBuilder;
    sget-object v12, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1176
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 1177
    .local v7, "offset":I
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1178
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 1179
    .local v9, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1180
    .local v2, "end":I
    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 1181
    .local v6, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    sget-object v10, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 1182
    .local v10, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1183
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v5, v12}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1184
    .local v11, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 1185
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_2

    iget-wide v12, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 1186
    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1187
    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 1189
    .local v4, "len":I
    add-int v12, v2, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    add-int/2addr v7, v4

    goto :goto_1

    .line 1195
    .end local v2    # "end":I
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v4    # "len":I
    .end local v6    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local v9    # "start":I
    .end local v10    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .end local v11    # "url":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 1196
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "body":Ljava/lang/String;
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Replace Cmail body> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "body":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p1

    .line 1200
    goto/16 :goto_0
.end method

.method public static kddiCheck3gpp2CbDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 1095
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateCbMechanism()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    .line 1099
    .local v0, "msg_id":I
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckCbDuplication(Landroid/content/Context;I)Z

    move-result v1

    .line 1103
    .end local v0    # "msg_id":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static kddiCheck3gppCbDuplication(Landroid/content/Context;[B)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1054
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateCbMechanism()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1055
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1056
    .local v0, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is UMTS format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is ETWS Primary format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP Service Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddi3gppCb(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1062
    const/4 v1, -0x1

    .line 1069
    .local v1, "sn":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isGsmFormat()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1073
    :cond_0
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1078
    :cond_1
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serial Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {p0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckCbDuplication(Landroid/content/Context;I)Z

    move-result v2

    .line 1083
    .end local v0    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v1    # "sn":I
    :cond_2
    return v2

    .line 1074
    .restart local v0    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v1    # "sn":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1076
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    goto :goto_0
.end method

.method private static kddiCheckCbDuplication(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg_id"    # I

    .prologue
    .line 1013
    const/4 v8, 0x0

    .line 1015
    .local v8, "result":Z
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 1021
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "protocol = ? "

    .line 1022
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1025
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1027
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1029
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect duplicated JEA: 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    const/4 v8, 0x1

    .line 1036
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1043
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 1036
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1039
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1040
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking JEA duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 790
    const/4 v11, 0x0

    .line 791
    .local v11, "result":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 792
    .local v6, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .line 802
    .local v8, "date":J
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 806
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "address = ? AND date = ? "

    .line 808
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 812
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 814
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 816
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    const/4 v11, 0x1

    .line 821
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 828
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v11

    .line 821
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 824
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 825
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiFormatCmailBody(Landroid/content/Context;Landroid/telephony/SmsMessage;)V
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 1146
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMtCmail()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1150
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1151
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 1153
    .local v0, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v1

    .line 1162
    .local v1, "smsId":I
    const/16 v3, 0x101

    if-eq v1, v3, :cond_2

    const/16 v3, 0x102

    if-eq v1, v3, :cond_2

    const/16 v3, 0x201

    if-ne v1, v3, :cond_0

    .line 1165
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .param p0, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiBcsmsTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1117
    const-string v1, "SMS"

    const-string v2, "Under KDDI BCSMS Test Mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    :goto_0
    return v0

    .line 1119
    :cond_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discarded BCSMS category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kddiReplaceKddiEmojiWithKddiUcs2(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    .locals 10
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2065
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2066
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    .line 2110
    :goto_0
    return-object v5

    .line 2069
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    .line 2071
    .local v2, "endPosition":I
    const/4 v8, 0x2

    new-array v7, v8, [C

    .line 2073
    .local v7, "singleEmoji":[C
    new-instance v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    .line 2076
    .local v5, "result":Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_4

    .line 2077
    const/4 v8, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2078
    const/4 v8, 0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2084
    invoke-static {v7}, Lcom/android/internal/telephony/HtcMessageHelper;->getCodePointFromSurrogatePair([C)I

    move-result v1

    .line 2088
    .local v1, "codePoint":I
    if-nez v1, :cond_2

    .line 2089
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2076
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2092
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiEmojiToKddiUcs2(I)I

    move-result v4

    .line 2093
    .local v4, "kddiUcs2":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 2094
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2095
    .local v0, "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    .line 2097
    add-int/lit8 v3, v3, 0x1

    .line 2098
    goto :goto_2

    .line 2099
    .end local v0    # "chars":[C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2104
    .end local v1    # "codePoint":I
    .end local v4    # "kddiUcs2":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2105
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2108
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    goto :goto_0
.end method

.method public static kddiReplaceKddiUcs2WithStandardEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2299
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, p0

    .line 2331
    :goto_0
    return-object v3

    .line 2303
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2304
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2310
    .local v1, "msgLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 2312
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiUcs2ToStandardEmoji(C)I

    move-result v5

    .line 2314
    .local v5, "standardEmoji":I
    if-ltz v5, :cond_3

    .line 2316
    const v6, 0xffff

    if-gt v5, v6, :cond_2

    .line 2317
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2310
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2319
    :cond_2
    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->getSurrogatePairFromCodePoint(I)[C

    move-result-object v2

    .line 2323
    .local v2, "pair":[C
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2326
    .end local v2    # "pair":[C
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2330
    .end local v5    # "standardEmoji":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2331
    .local v3, "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static kddiReplaceStandardEmojiWithKddiEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2003
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiReplaceStandardEmojiWithKddiUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2006
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2007
    :cond_0
    const-string v6, ""

    .line 2045
    :goto_0
    return-object v6

    .line 2010
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2011
    .local v2, "endPosition":I
    new-array v5, v9, [C

    .line 2013
    .local v5, "singleEmoji":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2015
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_4

    .line 2019
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiUcs2ToKddiEmoji(C)I

    move-result v1

    .line 2023
    .local v1, "codePoint":I
    const/4 v5, 0x0

    .line 2024
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 2026
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->getSurrogatePairFromCodePoint(I)[C

    move-result-object v5

    .line 2028
    if-eqz v5, :cond_2

    .line 2034
    :cond_2
    if-nez v5, :cond_3

    .line 2035
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2015
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2037
    :cond_3
    new-array v0, v9, [C

    aget-char v6, v5, v7

    aput-char v6, v0, v7

    aget-char v6, v5, v8

    aput-char v6, v0, v8

    .line 2038
    .local v0, "chars":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2045
    .end local v0    # "chars":[C
    .end local v1    # "codePoint":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static kddiReplaceStandardEmojiWithKddiUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 2186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, p0

    .line 2287
    :goto_0
    return-object v5

    .line 2190
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2191
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    .line 2192
    .local v2, "endPosition":I
    const/4 v8, 0x2

    new-array v7, v8, [C

    .line 2198
    .local v7, "singleEmoji":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_5

    .line 2199
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v7, v11

    .line 2200
    const/4 v8, 0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2206
    invoke-static {v7}, Lcom/android/internal/telephony/HtcMessageHelper;->getCodePointFromSurrogatePair([C)I

    move-result v1

    .line 2210
    .local v1, "codePoint":I
    if-nez v1, :cond_3

    .line 2212
    aget-char v8, v7, v11

    invoke-static {v8}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2214
    .local v4, "kddiUcs2":I
    if-eq v4, v10, :cond_2

    .line 2216
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2217
    .local v0, "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    .end local v0    # "chars":[C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2220
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2224
    .end local v4    # "kddiUcs2":I
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2226
    .restart local v4    # "kddiUcs2":I
    if-eq v4, v10, :cond_4

    .line 2228
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2229
    .restart local v0    # "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    add-int/lit8 v3, v3, 0x1

    .line 2231
    goto :goto_2

    .line 2233
    .end local v0    # "chars":[C
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2239
    .end local v1    # "codePoint":I
    .end local v4    # "kddiUcs2":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 2242
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2244
    .restart local v4    # "kddiUcs2":I
    if-eq v4, v10, :cond_7

    .line 2245
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2246
    .restart local v0    # "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    .end local v0    # "chars":[C
    .end local v4    # "kddiUcs2":I
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2259
    .local v5, "resultString":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji00:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji00:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2260
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji01:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji01:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2261
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji02:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji02:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2262
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji03:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji03:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2263
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji04:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji04:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2264
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji05:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji05:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2265
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji06:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji06:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2266
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji07:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji07:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2267
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji08:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji08:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2268
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji09:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji09:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2269
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji10:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji10:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2271
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji11:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji11:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2272
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji12:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji12:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2273
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji13:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji13:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2274
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji14:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji14:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2275
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji15:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji15:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2276
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji16:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji16:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2277
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji17:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji17:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2278
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji18:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji18:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2279
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji19:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji19:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2280
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji20:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji20:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2287
    goto/16 :goto_0

    .line 2248
    .end local v5    # "resultString":Ljava/lang/String;
    .restart local v4    # "kddiUcs2":I
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "phonenumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 2399
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_2

    .line 2401
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 2402
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :goto_0
    return-void

    .line 2404
    :cond_1
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2406
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2407
    .local v1, "phonelen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    .local v0, "partialphone":Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removeOldestVzwCmasKey()V
    .locals 12

    .prologue
    .line 186
    const-string v9, "SMS"

    const-string v10, "Remove Oldest key"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    .line 188
    .local v2, "length":I
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 190
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-array v9, v2, [Ljava/lang/Integer;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Integer;

    .line 191
    .local v0, "array":[Ljava/lang/Integer;
    const-wide/16 v5, 0x0

    .line 192
    .local v5, "minDate":J
    const/4 v7, -0x1

    .line 196
    .local v7, "minKey":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 197
    aget-object v9, v0, v1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 198
    .local v4, "mId":I
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 203
    .local v3, "mDate":Ljava/lang/Long;
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_1

    .line 204
    move v7, v4

    .line 205
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    .line 210
    move v7, v4

    .line 211
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    .line 218
    .end local v3    # "mDate":Ljava/lang/Long;
    .end local v4    # "mId":I
    :cond_2
    if-lez v7, :cond_3

    .line 219
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    return-void
.end method

.method public static removePrefixZeroFromPhoneNumberIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 2828
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRemovePrefixZeroFromPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2829
    if-eqz p0, :cond_0

    const-string v0, "+00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2833
    :cond_0
    return-object p0
.end method

.method public static replacePlusWith010(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2899
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2905
    :cond_0
    return-object p0
.end method

.method public static sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageRef"    # I
    .param p2, "fillIn"    # Landroid/content/Intent;

    .prologue
    .line 883
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 884
    .local v1, "retIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 886
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 887
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_1
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not broadcast intent TP-MR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
