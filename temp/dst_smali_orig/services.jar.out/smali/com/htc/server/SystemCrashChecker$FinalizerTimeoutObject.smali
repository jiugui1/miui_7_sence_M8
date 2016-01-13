.class Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;
.super Ljava/lang/Object;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerTimeoutObject"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/SystemCrashChecker$1;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/32 v0, 0x9c40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
