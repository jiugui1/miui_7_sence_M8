.class public final enum Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;
.super Ljava/lang/Enum;
.source "KikinCallbackHandlerExceptionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

.field public static final enum INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

.field public static final enum INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    const-string v1, "INVALID_CALLBACK_HANDLER"

    invoke-direct {v0, v1, v2}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    new-instance v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    const-string v1, "INVALID_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    sget-object v1, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->$VALUES:[Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    return-object v0
.end method

.method public static values()[Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->$VALUES:[Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-virtual {v0}, [Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    return-object v0
.end method
