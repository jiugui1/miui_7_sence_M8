.class public final enum Lcom/kikin/KikinServiceConnection$MessageType;
.super Ljava/lang/Enum;
.source "KikinServiceConnection.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinMessageType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/KikinServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/KikinServiceConnection$MessageType;",
        ">;",
        "Lcom/kikin/interfaces/KikinMessageType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/KikinServiceConnection$MessageType;

.field public static final enum REGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

.field public static final enum UNREGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/KikinServiceConnection$MessageType;

    const-string v1, "REGISTER_CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinServiceConnection$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceConnection$MessageType;->REGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    new-instance v0, Lcom/kikin/KikinServiceConnection$MessageType;

    const-string v1, "UNREGISTER_CLIENT"

    invoke-direct {v0, v1, v3}, Lcom/kikin/KikinServiceConnection$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceConnection$MessageType;->UNREGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/KikinServiceConnection$MessageType;

    sget-object v1, Lcom/kikin/KikinServiceConnection$MessageType;->REGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/KikinServiceConnection$MessageType;->UNREGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/KikinServiceConnection$MessageType;->$VALUES:[Lcom/kikin/KikinServiceConnection$MessageType;

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

.method public static getMessagType(I)Lcom/kikin/KikinServiceConnection$MessageType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    invoke-static {}, Lcom/kikin/KikinServiceConnection$MessageType;->values()[Lcom/kikin/KikinServiceConnection$MessageType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static length()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/kikin/KikinServiceConnection$MessageType;->values()[Lcom/kikin/KikinServiceConnection$MessageType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/KikinServiceConnection$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/kikin/KikinServiceConnection$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/KikinServiceConnection$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/kikin/KikinServiceConnection$MessageType;
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/KikinServiceConnection$MessageType;->$VALUES:[Lcom/kikin/KikinServiceConnection$MessageType;

    invoke-virtual {v0}, [Lcom/kikin/KikinServiceConnection$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/KikinServiceConnection$MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/kikin/KikinServiceConnection$MessageType;->ordinal()I

    move-result v0

    return v0
.end method
