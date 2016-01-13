.class public final enum Lcom/kikin/KikinServiceState;
.super Ljava/lang/Enum;
.source "KikinServiceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/KikinServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/KikinServiceState;

.field public static final enum BUILD_DISABLED:Lcom/kikin/KikinServiceState;

.field public static final enum BUILD_ENABLED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_CANCELED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_DECLINED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_DISABLED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_ENABLED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_ENABLE_CANCELED:Lcom/kikin/KikinServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "BUILD_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->BUILD_ENABLED:Lcom/kikin/KikinServiceState;

    .line 22
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "BUILD_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->BUILD_DISABLED:Lcom/kikin/KikinServiceState;

    .line 25
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_ENABLED:Lcom/kikin/KikinServiceState;

    .line 28
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_DISABLED:Lcom/kikin/KikinServiceState;

    .line 31
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_DECLINED"

    invoke-direct {v0, v1, v7}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_DECLINED:Lcom/kikin/KikinServiceState;

    .line 37
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_CANCELED:Lcom/kikin/KikinServiceState;

    .line 43
    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_ENABLE_CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_ENABLE_CANCELED:Lcom/kikin/KikinServiceState;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kikin/KikinServiceState;

    sget-object v1, Lcom/kikin/KikinServiceState;->BUILD_ENABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/KikinServiceState;->BUILD_DISABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_ENABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_DISABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_DECLINED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/KikinServiceState;->USER_CANCELED:Lcom/kikin/KikinServiceState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kikin/KikinServiceState;->USER_ENABLE_CANCELED:Lcom/kikin/KikinServiceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/KikinServiceState;->$VALUES:[Lcom/kikin/KikinServiceState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/KikinServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/kikin/KikinServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/KikinServiceState;

    return-object v0
.end method

.method public static values()[Lcom/kikin/KikinServiceState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/kikin/KikinServiceState;->$VALUES:[Lcom/kikin/KikinServiceState;

    invoke-virtual {v0}, [Lcom/kikin/KikinServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/KikinServiceState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
