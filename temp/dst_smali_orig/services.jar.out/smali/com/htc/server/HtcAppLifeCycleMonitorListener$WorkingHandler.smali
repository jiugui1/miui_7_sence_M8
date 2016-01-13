.class Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcAppLifeCycleMonitorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppLifeCycleMonitorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitorListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, "startTimeMillis":J
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const-string v4, "HtcAppLifeCycleMonitorListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow operation for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;
    invoke-static {v4}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$000(Lcom/htc/server/HtcAppLifeCycleMonitorListener;)Lcom/htc/server/HtcAppLifeCycleMonitor;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_2

    const-string v4, "HtcAppLifeCycleMonitorListener"

    const-string v5, "MSG_ON_INIT msg.obj = null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HtcAppLifeCycleMonitorListener"

    const-string v5, "Call initialize"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;
    invoke-static {v4}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$000(Lcom/htc/server/HtcAppLifeCycleMonitorListener;)Lcom/htc/server/HtcAppLifeCycleMonitor;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcAppLifeCycleMonitorListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call initialize fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v3, "topApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->updateProcessChanged(Lcom/android/server/am/HtcWrapProcessRecord;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v3    # "topApp":Lcom/android/server/am/HtcWrapProcessRecord;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcAppLifeCycleMonitorListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call onProcessChanged fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/HtcWrapProcessRecord;

    .restart local v3    # "topApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->updateProcessChanged(Lcom/android/server/am/HtcWrapProcessRecord;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v3    # "topApp":Lcom/android/server/am/HtcWrapProcessRecord;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcAppLifeCycleMonitorListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call onProcessChanged fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
