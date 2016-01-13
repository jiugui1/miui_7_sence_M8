.class public final Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
.super Landroid/os/Handler;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/UserBehaviorLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserBehaviorHandler"
.end annotation


# static fields
.field private static final ADD_EVENT_LOG:I = 0x5

.field private static final ADD_HTC_UB_LOG:I = 0x0

.field private static final AP_REQUEST_SEND:I = 0xa

.field private static final CUSTOMIZATION_ACTION:I = 0x8

.field private static final FINISH_BOOTING:I = 0xb

.field private static final FLUSH:I = 0x2

.field private static final INIT:I = 0x9

.field private static final SET_POLICY:I = 0x7

.field private static final STOP:I = 0x4

.field private static final UPLOAD:I = 0x1


# instance fields
.field private mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

.field private mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

.field private mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

.field final synthetic this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# direct methods
.method public constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Landroid/os/Looper;Lcom/htc/server/ulog/HTCUBLogStore;Lcom/htc/server/ulog/EventLogStore;Lcom/htc/server/ulog/PolicyStore;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ubEventLog"    # Lcom/htc/server/ulog/HTCUBLogStore;
    .param p4, "eventLog"    # Lcom/htc/server/ulog/EventLogStore;
    .param p5, "policy"    # Lcom/htc/server/ulog/PolicyStore;

    .prologue
    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iput-object p4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    iput-object p5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    return-void
.end method

.method private handleApRequestSend(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsEngROM:Z
    invoke-static {v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$300(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->getInstance()Lcom/htc/server/HtcDeviceInfoManager;

    move-result-object v0

    .local v0, "deviceManager":Lcom/htc/server/HtcDeviceInfoManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->synchronizedFlush()V

    .end local v0    # "deviceManager":Lcom/htc/server/HtcDeviceInfoManager;
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, "message":Landroid/os/Message;
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unique msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unique_msg"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.intent.action.SEND_UP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "unique_msg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v3

    const-string v4, "unique_msg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v8, v6, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "message":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    # getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v3

    invoke-virtual {v3, v7, v6, v6}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/server/ulog/HTCUBLogStore;->addLog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .local v0, "uniqueMsg":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "uniqueMsg":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "uniqueMsg":Ljava/lang/String;
    :cond_1
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UserBehaviorHandler]: In UPLOAD case, Upload type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/server/ulog/HTCUBLogStore;->upload(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/server/ulog/EventLogStore;->upload(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "uniqueMsg":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/HTCUBLogStore;->flush()V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/EventLogStore;->flush()V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/htc/utils/ulog/ParcelableULogData;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/utils/ulog/ParcelableULogData;

    invoke-virtual {v2, v1}, Lcom/htc/server/ulog/EventLogStore;->addLog(Lcom/htc/utils/ulog/ParcelableULogData;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/server/ulog/PolicyStore;->setPolicyAndNotify(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/PolicyStore;->insertPolicyFromCustomizationBroadcast()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/PolicyStore;->init()V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->handleApRequestSend(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/EventLogStore;->onBootUp()V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/HTCUBLogStore;->onBootUp()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
