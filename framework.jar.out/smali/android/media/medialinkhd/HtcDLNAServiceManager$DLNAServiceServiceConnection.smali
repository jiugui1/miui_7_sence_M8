.class public Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLNAServiceServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method public constructor <init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 2546
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$200(Ljava/lang/String;)V

    .line 2559
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-static {p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v3

    # setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$302(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2560
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onServiceConnected] mService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", classname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2563
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2564
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2565
    .local v0, "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 2566
    invoke-interface {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2567
    :cond_0
    monitor-exit v3

    .line 2615
    :goto_0
    return-void

    .line 2568
    .end local v0    # "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2600
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$600(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I

    move-result v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
    invoke-static {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$700(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2601
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$600(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I

    move-result v3

    const-string v4, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    .line 2602
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$600(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I

    move-result v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I
    invoke-static {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$800(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setFilterType(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2608
    :goto_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2610
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2611
    :try_start_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2612
    .restart local v0    # "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_2

    .line 2613
    invoke-interface {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    .line 2614
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2603
    :catch_0
    move-exception v1

    .line 2605
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 2623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$200(Ljava/lang/String;)V

    .line 2624
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onServiceDisconnected] classname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2627
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2628
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v1, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$302(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2631
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2632
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2633
    .local v0, "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_1

    .line 2634
    invoke-interface {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2636
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v1, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$502(Landroid/media/medialinkhd/HtcDLNAServiceManager;Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2637
    monitor-exit v2

    .line 2638
    return-void

    .line 2637
    .end local v0    # "clientListener":Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
