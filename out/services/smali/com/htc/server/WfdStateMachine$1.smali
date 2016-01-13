.class Lcom/htc/server/WfdStateMachine$1;
.super Landroid/os/Handler;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0

    .prologue
    .line 2469
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2473
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2474
    .local v5, "state":I
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2475
    .local v2, "n":I
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2519
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2521
    :goto_0
    return-void

    .line 2477
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2479
    :try_start_0
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v6, v5}, Lcom/htc/wfdservice/IWfdServiceCallback;->onServiceStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2477
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2480
    :catch_0
    move-exception v4

    .line 2481
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2482
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 2483
    .local v3, "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 2484
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 2485
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2488
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2491
    .end local v1    # "i":I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_1

    .line 2493
    :try_start_1
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v6, v5}, Lcom/htc/wfdservice/IWfdServiceCallback;->onMirrorDisplayStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2491
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2494
    :catch_3
    move-exception v4

    .line 2495
    .restart local v4    # "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 2496
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_4
    move-exception v3

    .line 2497
    .restart local v3    # "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 2498
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v0

    .line 2499
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2502
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2505
    .end local v1    # "i":I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v2, :cond_2

    .line 2507
    :try_start_2
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v6, v5}, Lcom/htc/wfdservice/IWfdServiceCallback;->onConfiguringProgressChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 2505
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2508
    :catch_6
    move-exception v4

    .line 2509
    .restart local v4    # "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 2510
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_7
    move-exception v3

    .line 2511
    .restart local v3    # "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6

    .line 2512
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :catch_8
    move-exception v0

    .line 2513
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 2516
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
