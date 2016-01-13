.class final Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/UserBehaviorLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserBehaviorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# direct methods
.method private constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Lcom/htc/server/ulog/UserBehaviorLoggingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/ulog/UserBehaviorLoggingService;
    .param p2, "x1"    # Lcom/htc/server/ulog/UserBehaviorLoggingService$1;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 336
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UserBehaviorReceiver] receieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.updater.NOTIFY_SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.intent.action.SEND_UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4, v4, p2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method
