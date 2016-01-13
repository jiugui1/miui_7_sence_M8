.class final enum Lcom/android/server/HtcHardwareService$SDTrayState;
.super Ljava/lang/Enum;
.source "HtcHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SDTrayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/HtcHardwareService$SDTrayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/HtcHardwareService$SDTrayState;

.field public static final enum SD_TRAY_STATE_EJECTED:Lcom/android/server/HtcHardwareService$SDTrayState;

.field public static final enum SD_TRAY_STATE_INSERTED:Lcom/android/server/HtcHardwareService$SDTrayState;

.field public static final enum SD_TRAY_STATE_UNKNOWN:Lcom/android/server/HtcHardwareService$SDTrayState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/android/server/HtcHardwareService$SDTrayState;

    const-string v1, "SD_TRAY_STATE_EJECTED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/HtcHardwareService$SDTrayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_EJECTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    .line 93
    new-instance v0, Lcom/android/server/HtcHardwareService$SDTrayState;

    const-string v1, "SD_TRAY_STATE_INSERTED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/HtcHardwareService$SDTrayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_INSERTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    .line 94
    new-instance v0, Lcom/android/server/HtcHardwareService$SDTrayState;

    const-string v1, "SD_TRAY_STATE_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/server/HtcHardwareService$SDTrayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_UNKNOWN:Lcom/android/server/HtcHardwareService$SDTrayState;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/HtcHardwareService$SDTrayState;

    sget-object v1, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_EJECTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_INSERTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_UNKNOWN:Lcom/android/server/HtcHardwareService$SDTrayState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/HtcHardwareService$SDTrayState;->$VALUES:[Lcom/android/server/HtcHardwareService$SDTrayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HtcHardwareService$SDTrayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/android/server/HtcHardwareService$SDTrayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcHardwareService$SDTrayState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/HtcHardwareService$SDTrayState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/server/HtcHardwareService$SDTrayState;->$VALUES:[Lcom/android/server/HtcHardwareService$SDTrayState;

    invoke-virtual {v0}, [Lcom/android/server/HtcHardwareService$SDTrayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HtcHardwareService$SDTrayState;

    return-object v0
.end method
