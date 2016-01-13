.class Lcom/android/server/am/BatteryStatsService$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$3;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 186
    if-nez p2, :cond_1

    .line 187
    const-string v2, "BatSS"

    const-string v3, "onReceive, intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 194
    const-string v2, "BatSS"

    const-string v3, "onReceive, action is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    # getter for: Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    const-string v2, "BatSS"

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

    .line 202
    :cond_3
    const-string v2, "com.htc.server.battery.action.clearbatterydata"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$3;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$3;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$3;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 211
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string v2, "BatSS"

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
