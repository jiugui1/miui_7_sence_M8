.class Lcom/android/server/AppOpsService$2;
.super Landroid/os/Handler;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->initHintFeature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppOpsService$HintDialogData;

    .local v1, "data":Lcom/android/server/AppOpsService$HintDialogData;
    new-instance v3, Lcom/android/server/AppOpsService$HintDialog;

    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {v3, v8, v1}, Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V

    .local v3, "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v8

    iget v10, v1, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    if-nez v5, :cond_0

    new-instance v5, Landroid/util/ArrayMap;

    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v8

    iget v10, v1, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    invoke-virtual {v8, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v8, v1, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v5, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$800(Lcom/android/server/AppOpsService$HintDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    const/16 v8, 0xa

    invoke-virtual {p0, v12, v8, v11, v3}, Lcom/android/server/AppOpsService$2;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .end local v1    # "data":Lcom/android/server/AppOpsService$HintDialogData;
    .end local v3    # "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    :pswitch_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v8, -0x1

    .local v0, "countDown":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/AppOpsService$HintDialog;

    .restart local v3    # "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    if-nez v0, :cond_2

    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_1

    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hint auto dismiss for c="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v10

    iget v10, v10, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " u="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v10

    iget v10, v10, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v8

    iget-object v9, v8, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    :cond_2
    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/android/server/AppOpsService$HintDialog;->access$800(Lcom/android/server/AppOpsService$HintDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # invokes: Lcom/android/server/AppOpsService;->getDisallowButtonString(I)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/AppOpsService;->access$100(Lcom/android/server/AppOpsService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v12, v0, v11, v3}, Lcom/android/server/AppOpsService$2;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/AppOpsService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v0    # "countDown":I
    .end local v3    # "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    .local v7, "pid":I
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v9

    monitor-enter v9

    :try_start_3
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "notifier":Ljava/lang/Object;
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$HintDialog;

    .local v2, "dialog":Lcom/android/server/AppOpsService$HintDialog;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$HintDialog;->dismiss()V

    goto :goto_1

    .end local v2    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    .end local v6    # "notifier":Ljava/lang/Object;
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    .restart local v6    # "notifier":Ljava/lang/Object;
    :catchall_3
    move-exception v8

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v8

    .end local v6    # "notifier":Ljava/lang/Object;
    :cond_4
    iget-object v8, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/AppOpsService;->access$700(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$2;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
