.class public final enum Lcom/kikin/KikinBarState;
.super Ljava/lang/Enum;
.source "KikinBarState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/KikinBarState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/KikinBarState;

.field public static final enum FULL_CLOSE:Lcom/kikin/KikinBarState;

.field public static final enum FULL_OPEN:Lcom/kikin/KikinBarState;

.field public static final enum HALF_OPEN:Lcom/kikin/KikinBarState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/KikinBarState;

    const-string v1, "FULL_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarState;->FULL_OPEN:Lcom/kikin/KikinBarState;

    new-instance v0, Lcom/kikin/KikinBarState;

    const-string v1, "HALF_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/kikin/KikinBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    new-instance v0, Lcom/kikin/KikinBarState;

    const-string v1, "FULL_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/kikin/KikinBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kikin/KikinBarState;

    sget-object v1, Lcom/kikin/KikinBarState;->FULL_OPEN:Lcom/kikin/KikinBarState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kikin/KikinBarState;->$VALUES:[Lcom/kikin/KikinBarState;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/KikinBarState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/kikin/KikinBarState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/KikinBarState;

    return-object v0
.end method

.method public static values()[Lcom/kikin/KikinBarState;
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/KikinBarState;->$VALUES:[Lcom/kikin/KikinBarState;

    invoke-virtual {v0}, [Lcom/kikin/KikinBarState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/KikinBarState;

    return-object v0
.end method
