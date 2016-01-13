.class Lcom/android/server/power/HtcPowerSaver$5;
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
    .line 1107
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$5;->this$0:Lcom/android/server/power/HtcPowerSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1111
    if-nez p2, :cond_0

    .line 1112
    const-string v1, "HtcPowerSaver"

    const-string v2, "onReceive, intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1119
    const-string v1, "HtcPowerSaver"

    const-string v2, "onReceive, action is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_1
    # getter for: Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPowerSaver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1124
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

    .line 1127
    :cond_2
    const-string v1, "com.htc.AutoMotive.Service.ModeChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1128
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$5;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # invokes: Lcom/android/server/power/HtcPowerSaver;->checkAutoMotiveMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/power/HtcPowerSaver;->access$800(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    goto :goto_0

    .line 1130
    :cond_3
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
