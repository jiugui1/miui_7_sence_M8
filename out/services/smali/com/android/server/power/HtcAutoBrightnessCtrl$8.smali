.class Lcom/android/server/power/HtcAutoBrightnessCtrl$8;
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
    .line 1195
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$8;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$8;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    const-string v0, "HABCtrl"

    const-string v1, "mAudioStreamingTimeoutTask: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$8;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->resetAudioStreamingMode()V
    invoke-static {v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$2200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    .line 1203
    return-void
.end method
