.class synthetic Lcom/kikin/exception/KikinCallbackHandlerException$1;
.super Ljava/lang/Object;
.source "KikinCallbackHandlerException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/exception/KikinCallbackHandlerException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kikin$exception$KikinCallbackHandlerExceptionEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->values()[Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kikin/exception/KikinCallbackHandlerException$1;->$SwitchMap$com$kikin$exception$KikinCallbackHandlerExceptionEnum:[I

    :try_start_0
    sget-object v0, Lcom/kikin/exception/KikinCallbackHandlerException$1;->$SwitchMap$com$kikin$exception$KikinCallbackHandlerExceptionEnum:[I

    sget-object v1, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-virtual {v1}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/kikin/exception/KikinCallbackHandlerException$1;->$SwitchMap$com$kikin$exception$KikinCallbackHandlerExceptionEnum:[I

    sget-object v1, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-virtual {v1}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
