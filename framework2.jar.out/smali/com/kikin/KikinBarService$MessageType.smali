.class public final enum Lcom/kikin/KikinBarService$MessageType;
.super Ljava/lang/Enum;
.source "KikinBarService.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinMessageType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/KikinBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/KikinBarService$MessageType;",
        ">;",
        "Lcom/kikin/interfaces/KikinMessageType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/KikinBarService$MessageType;

.field public static final enum ACTIVITY_RESTARTED:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum CAB_WINDOW_TOKEN:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum DO_SEARCH:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum GET_VISIBILITY:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum HIDE_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum ON_ACTION_BAR_HEIGHT_CHANGE:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum PLAY_KIKIN_SOUND:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum SHOW_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

.field public static final enum SHOW_KIKIN_DISABLED_TOAST:Lcom/kikin/KikinBarService$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "SHOW_KIKIN_BAR"

    invoke-direct {v0, v1, v3}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    .line 55
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "HIDE_KIKIN_BAR"

    invoke-direct {v0, v1, v4}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->HIDE_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    .line 56
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "DO_SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->DO_SEARCH:Lcom/kikin/KikinBarService$MessageType;

    .line 57
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "ACTIVITY_RESTARTED"

    invoke-direct {v0, v1, v6}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->ACTIVITY_RESTARTED:Lcom/kikin/KikinBarService$MessageType;

    .line 58
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "GET_VISIBILITY"

    invoke-direct {v0, v1, v7}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->GET_VISIBILITY:Lcom/kikin/KikinBarService$MessageType;

    .line 59
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "ON_ACTION_BAR_HEIGHT_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->ON_ACTION_BAR_HEIGHT_CHANGE:Lcom/kikin/KikinBarService$MessageType;

    .line 60
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "SHOW_KIKIN_DISABLED_TOAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_DISABLED_TOAST:Lcom/kikin/KikinBarService$MessageType;

    .line 61
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "PLAY_KIKIN_SOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->PLAY_KIKIN_SOUND:Lcom/kikin/KikinBarService$MessageType;

    .line 62
    new-instance v0, Lcom/kikin/KikinBarService$MessageType;

    const-string v1, "CAB_WINDOW_TOKEN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinBarService$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->CAB_WINDOW_TOKEN:Lcom/kikin/KikinBarService$MessageType;

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kikin/KikinBarService$MessageType;

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->HIDE_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->DO_SEARCH:Lcom/kikin/KikinBarService$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->ACTIVITY_RESTARTED:Lcom/kikin/KikinBarService$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->GET_VISIBILITY:Lcom/kikin/KikinBarService$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/KikinBarService$MessageType;->ON_ACTION_BAR_HEIGHT_CHANGE:Lcom/kikin/KikinBarService$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_DISABLED_TOAST:Lcom/kikin/KikinBarService$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kikin/KikinBarService$MessageType;->PLAY_KIKIN_SOUND:Lcom/kikin/KikinBarService$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kikin/KikinBarService$MessageType;->CAB_WINDOW_TOKEN:Lcom/kikin/KikinBarService$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/KikinBarService$MessageType;->$VALUES:[Lcom/kikin/KikinBarService$MessageType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMessageType(I)Lcom/kikin/KikinBarService$MessageType;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 86
    invoke-static {}, Lcom/kikin/KikinBarService$MessageType;->values()[Lcom/kikin/KikinBarService$MessageType;

    move-result-object v0

    invoke-static {}, Lcom/kikin/KikinServiceConnection$MessageType;->length()I

    move-result v1

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/KikinBarService$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/kikin/KikinBarService$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/KikinBarService$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/kikin/KikinBarService$MessageType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kikin/KikinBarService$MessageType;->$VALUES:[Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {v0}, [Lcom/kikin/KikinBarService$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/KikinBarService$MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/kikin/KikinBarService$MessageType;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/kikin/KikinServiceConnection$MessageType;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
