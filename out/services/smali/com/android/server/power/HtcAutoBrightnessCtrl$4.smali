.class Lcom/android/server/power/HtcAutoBrightnessCtrl$4;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "HABCtrl"

    const-string v1, "mTPEAlgorithmTimeoutTask: TPE algorithm. restore."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->forceBrightnessUpdate(I)V

    .line 525
    return-void
.end method
