.class public final enum Lcom/android/server/HtcHardwareService$VendorName;
.super Ljava/lang/Enum;
.source "HtcHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VendorName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/HtcHardwareService$VendorName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/HtcHardwareService$VendorName;

.field public static final enum VENDOR_MAXIMUM:Lcom/android/server/HtcHardwareService$VendorName;

.field public static final enum VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

.field public static final enum VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/android/server/HtcHardwareService$VendorName;

    const-string v1, "VENDOR_SPRINT"

    invoke-direct {v0, v1, v2}, Lcom/android/server/HtcHardwareService$VendorName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

    .line 85
    new-instance v0, Lcom/android/server/HtcHardwareService$VendorName;

    const-string v1, "VENDOR_TSMC"

    invoke-direct {v0, v1, v3}, Lcom/android/server/HtcHardwareService$VendorName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;

    .line 86
    new-instance v0, Lcom/android/server/HtcHardwareService$VendorName;

    const-string v1, "VENDOR_MAXIMUM"

    invoke-direct {v0, v1, v4}, Lcom/android/server/HtcHardwareService$VendorName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_MAXIMUM:Lcom/android/server/HtcHardwareService$VendorName;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/HtcHardwareService$VendorName;

    sget-object v1, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_MAXIMUM:Lcom/android/server/HtcHardwareService$VendorName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/HtcHardwareService$VendorName;->$VALUES:[Lcom/android/server/HtcHardwareService$VendorName;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HtcHardwareService$VendorName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/android/server/HtcHardwareService$VendorName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcHardwareService$VendorName;

    return-object v0
.end method

.method public static values()[Lcom/android/server/HtcHardwareService$VendorName;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/HtcHardwareService$VendorName;->$VALUES:[Lcom/android/server/HtcHardwareService$VendorName;

    invoke-virtual {v0}, [Lcom/android/server/HtcHardwareService$VendorName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HtcHardwareService$VendorName;

    return-object v0
.end method
