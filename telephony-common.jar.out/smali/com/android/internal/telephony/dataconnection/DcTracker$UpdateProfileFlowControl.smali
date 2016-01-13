.class public final enum Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateProfileFlowControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

.field public static final enum NOT_UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

.field public static final enum UPDATE_ONLY_WHEN_APN_CHANGED:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

.field public static final enum UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

.field public static final enum UPDATE_PROFILE_LTE_EHRPD:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

.field public static final enum WITH_SETUP_DATA:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    const-string v1, "WITH_SETUP_DATA"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->WITH_SETUP_DATA:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 403
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    const-string v1, "NOT_UPDATE_PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->NOT_UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 404
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    const-string v1, "UPDATE_PROFILE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 405
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    const-string v1, "UPDATE_ONLY_WHEN_APN_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_ONLY_WHEN_APN_CHANGED:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 406
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    const-string v1, "UPDATE_PROFILE_LTE_EHRPD"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_PROFILE_LTE_EHRPD:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 401
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->WITH_SETUP_DATA:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->NOT_UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_ONLY_WHEN_APN_CHANGED:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_PROFILE_LTE_EHRPD:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

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
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static FlowControlFromInt(I)Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;
    .locals 4
    .param p0, "fc"    # I

    .prologue
    .line 409
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->UPDATE_PROFILE:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    .line 411
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    move-result-object v2

    aget-object v1, v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "DCT"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfileFlowControl;

    return-object v0
.end method
