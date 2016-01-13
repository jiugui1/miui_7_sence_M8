.class Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FuncDescriptor"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mParamTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mName:Ljava/lang/String;

    .line 1327
    iput-object p2, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mParamTypes:[Ljava/lang/Class;

    .line 1328
    return-void
.end method
