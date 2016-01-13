.class Lcom/htc/server/FingerGestureService$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/FingerGestureService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/FingerGestureService;


# direct methods
.method constructor <init>(Lcom/htc/server/FingerGestureService;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/server/FingerGestureService$1;->this$0:Lcom/htc/server/FingerGestureService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 63
    :cond_0
    const-string v4, "FingerGestureService"

    const-string v5, "intent or intent.getExtras() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    # getter for: Lcom/htc/server/FingerGestureService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/FingerGestureService;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/htc/server/FingerGestureService$1;->this$0:Lcom/htc/server/FingerGestureService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/server/FingerGestureService;->setFingerGestureEnable(Z)V

    .line 69
    # getter for: Lcom/htc/server/FingerGestureService;->mHandler:Lcom/htc/server/FingerGestureService$H;
    invoke-static {}, Lcom/htc/server/FingerGestureService;->access$200()Lcom/htc/server/FingerGestureService$H;

    move-result-object v4

    const/16 v5, 0x73

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/FingerGestureService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Direction"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "direction":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "AbsoluteDirection"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "absoluteDirection":I
    const-string v4, "FingerGestureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT, Direction value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", absoluteDirection value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v3, "startNewFingerServiceIntent":Landroid/content/Intent;
    const-string v4, "com.htc.wifidisplay.MultiFingerSwipeService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    iget-object v4, p0, Lcom/htc/server/FingerGestureService$1;->this$0:Lcom/htc/server/FingerGestureService;

    # getter for: Lcom/htc/server/FingerGestureService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/server/FingerGestureService;->access$300(Lcom/htc/server/FingerGestureService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v3    # "startNewFingerServiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "FingerGestureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to start new Finger Service, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
