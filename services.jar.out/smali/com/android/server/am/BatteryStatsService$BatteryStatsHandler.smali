.class final Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
.super Landroid/os/Handler;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryStatsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    # getter for: Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "BatSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    # invokes: Lcom/android/server/am/BatteryStatsService;->resetScreenOffBatteryData()V
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$200(Lcom/android/server/am/BatteryStatsService;)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/BatteryStatsService;->removeScreenOffBatteryDataByUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/BatteryStatsService;->access$300(Lcom/android/server/am/BatteryStatsService;I)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/BatteryStatsService;->handleScreenOnOffStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/BatteryStatsService;->access$400(Lcom/android/server/am/BatteryStatsService;I)V

    goto :goto_0

    .line 244
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    # invokes: Lcom/android/server/am/BatteryStatsService;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$500(Lcom/android/server/am/BatteryStatsService;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
