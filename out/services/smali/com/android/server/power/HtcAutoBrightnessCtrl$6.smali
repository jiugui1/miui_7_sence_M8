.class Lcom/android/server/power/HtcAutoBrightnessCtrl$6;
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
    .line 883
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 887
    if-nez p2, :cond_1

    .line 888
    const-string v2, "HABCtrl"

    const-string v3, "mPowerSaverReceiver intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 895
    const-string v2, "HABCtrl"

    const-string v3, "onReceive, action is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_3
    const-string v2, "com.htc.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 904
    const-string v2, "sys.psaver.bright"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "disable":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)V

    goto :goto_0

    .line 908
    .end local v1    # "disable":Ljava/lang/String;
    :cond_4
    const-string v2, "com.htc.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 909
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)V

    goto :goto_0

    .line 911
    :cond_5
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
