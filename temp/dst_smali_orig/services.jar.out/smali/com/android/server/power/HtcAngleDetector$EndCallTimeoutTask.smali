.class Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndCallTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcAngleDetector;Lcom/android/server/power/HtcAngleDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p2, "x1"    # Lcom/android/server/power/HtcAngleDetector$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;-><init>(Lcom/android/server/power/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "EndCallTimeoutTask: timeout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$EndCallTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_1
    return-void
.end method
