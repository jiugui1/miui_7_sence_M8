.class Lcom/android/server/power/HtcAutoBrightnessCtrl$5;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


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
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$5;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_1

    const-string v1, "HABCtrl"

    const-string v2, "AudioStreamingReceiver intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.htc.Audio.Streaming.ModeChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$5;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->checkAudioStreamingMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/power/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V

    goto :goto_0
.end method
