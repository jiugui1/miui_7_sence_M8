.class Lcom/android/server/ConnectivityService$11;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x69

    const/16 v10, 0x43

    const/16 v9, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal.telephony.dualgsm_readytoswitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "phone_type"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "phoneType":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->getMobileDataTypeByPhone(I)I
    invoke-static {v5, v2}, Lcom/android/server/ConnectivityService;->access$27200(Lcom/android/server/ConnectivityService;I)I

    move-result v1

    .local v1, "mobileType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecieve: phoneType= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mobileType= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    if-ne v1, v9, :cond_1

    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v6

    invoke-virtual {v6, v11, v10, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "mobileType":I
    .end local v2    # "phoneType":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "mobileType":I
    .restart local v2    # "phoneType":I
    :cond_1
    if-ne v1, v10, :cond_2

    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v6

    invoke-virtual {v6, v11, v9, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpect mobile type= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "mobileType":I
    .end local v2    # "phoneType":I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.intent.ACTION_SINGAL_ACTIVE_READY_TO_SWITCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "slot_type"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "disconnectSlotType":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6, v0}, Lcom/android/server/ConnectivityService;->getReverseSlot(I)I

    move-result v6

    # invokes: Lcom/android/server/ConnectivityService;->getMobileDataTypeBySlot(I)I
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$27300(Lcom/android/server/ConnectivityService;I)I

    move-result v4

    .local v4, "revMobileType":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService;->getMobileDataSlotType()I

    move-result v6

    # invokes: Lcom/android/server/ConnectivityService;->getMobileDataTypeBySlot(I)I
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$27300(Lcom/android/server/ConnectivityService;I)I

    move-result v3

    .local v3, "preferMobileType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecieve intent from DCT: disconnectSlotType= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "set DataSub and non-block policy at revMobileType= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v6

    const/16 v7, 0x6c

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v5, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$11;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v6

    const/16 v7, 0x6e

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
