.class public final enum Lcom/kikin/BarIncomingHandler$MessageType;
.super Ljava/lang/Enum;
.source "BarIncomingHandler.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinMessageType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/BarIncomingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/BarIncomingHandler$MessageType;",
        ">;",
        "Lcom/kikin/interfaces/KikinMessageType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum HIDE_ACTION_BAR:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum KIKIN_BAR_IS_HIDING:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum KIKIN_BAR_RECT_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum ON_KIKIN_BAR_ANIMATION_FINSHED:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum ON_KIKIN_DISABLED:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum ON_QUERY_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum ON_QUERY_REWRITTEN:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum ON_VISIBILITY_RECEIVED:Lcom/kikin/BarIncomingHandler$MessageType;

.field public static final enum SAVE_KIKIN_BAR_STATE:Lcom/kikin/BarIncomingHandler$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "HIDE_ACTION_BAR"

    invoke-direct {v0, v1, v3}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->HIDE_ACTION_BAR:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "SAVE_KIKIN_BAR_STATE"

    invoke-direct {v0, v1, v4}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->SAVE_KIKIN_BAR_STATE:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "KIKIN_BAR_IS_HIDING"

    invoke-direct {v0, v1, v5}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->KIKIN_BAR_IS_HIDING:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "KIKIN_BAR_RECT_CHANGED"

    invoke-direct {v0, v1, v6}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->KIKIN_BAR_RECT_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "ON_QUERY_REWRITTEN"

    invoke-direct {v0, v1, v7}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->ON_QUERY_REWRITTEN:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "ON_QUERY_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->ON_QUERY_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "ON_VISIBILITY_RECEIVED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->ON_VISIBILITY_RECEIVED:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "ON_KIKIN_BAR_ANIMATION_FINSHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->ON_KIKIN_BAR_ANIMATION_FINSHED:Lcom/kikin/BarIncomingHandler$MessageType;

    new-instance v0, Lcom/kikin/BarIncomingHandler$MessageType;

    const-string v1, "ON_KIKIN_DISABLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kikin/BarIncomingHandler$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->ON_KIKIN_DISABLED:Lcom/kikin/BarIncomingHandler$MessageType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kikin/BarIncomingHandler$MessageType;

    sget-object v1, Lcom/kikin/BarIncomingHandler$MessageType;->HIDE_ACTION_BAR:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/BarIncomingHandler$MessageType;->SAVE_KIKIN_BAR_STATE:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/BarIncomingHandler$MessageType;->KIKIN_BAR_IS_HIDING:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/BarIncomingHandler$MessageType;->KIKIN_BAR_RECT_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/BarIncomingHandler$MessageType;->ON_QUERY_REWRITTEN:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/BarIncomingHandler$MessageType;->ON_QUERY_CHANGED:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kikin/BarIncomingHandler$MessageType;->ON_VISIBILITY_RECEIVED:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kikin/BarIncomingHandler$MessageType;->ON_KIKIN_BAR_ANIMATION_FINSHED:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kikin/BarIncomingHandler$MessageType;->ON_KIKIN_DISABLED:Lcom/kikin/BarIncomingHandler$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->$VALUES:[Lcom/kikin/BarIncomingHandler$MessageType;

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

.method public static getMessagType(I)Lcom/kikin/BarIncomingHandler$MessageType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    invoke-static {}, Lcom/kikin/BarIncomingHandler$MessageType;->values()[Lcom/kikin/BarIncomingHandler$MessageType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static length()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/kikin/BarIncomingHandler$MessageType;->values()[Lcom/kikin/BarIncomingHandler$MessageType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/BarIncomingHandler$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/kikin/BarIncomingHandler$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/BarIncomingHandler$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/kikin/BarIncomingHandler$MessageType;
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/BarIncomingHandler$MessageType;->$VALUES:[Lcom/kikin/BarIncomingHandler$MessageType;

    invoke-virtual {v0}, [Lcom/kikin/BarIncomingHandler$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/BarIncomingHandler$MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/kikin/BarIncomingHandler$MessageType;->ordinal()I

    move-result v0

    return v0
.end method
