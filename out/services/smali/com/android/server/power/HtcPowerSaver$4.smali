.class Lcom/android/server/power/HtcPowerSaver$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$4;->this$0:Lcom/android/server/power/HtcPowerSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1079
    if-nez p2, :cond_0

    .line 1080
    const-string v1, "HtcPowerSaver"

    const-string v2, "onReceive, intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1087
    const-string v1, "HtcPowerSaver"

    const-string v2, "onReceive, action is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_1
    # getter for: Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPowerSaver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1092
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_2
    const-string v1, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1096
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$4;->this$0:Lcom/android/server/power/HtcPowerSaver;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z
    invoke-static {v1, v2}, Lcom/android/server/power/HtcPowerSaver;->access$502(Lcom/android/server/power/HtcPowerSaver;Z)Z

    .line 1097
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$4;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # setter for: Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z
    invoke-static {v1, v4}, Lcom/android/server/power/HtcPowerSaver;->access$602(Lcom/android/server/power/HtcPowerSaver;Z)Z

    .line 1098
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$4;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # invokes: Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver;->access$700(Lcom/android/server/power/HtcPowerSaver;)V

    goto :goto_0

    .line 1099
    :cond_3
    const-string v1, "com.htc.intent.action.HtcPowerSaver.DismissEPSAutoDialogOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1100
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$4;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # setter for: Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z
    invoke-static {v1, v4}, Lcom/android/server/power/HtcPowerSaver;->access$602(Lcom/android/server/power/HtcPowerSaver;Z)Z

    goto :goto_0

    .line 1102
    :cond_4
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
