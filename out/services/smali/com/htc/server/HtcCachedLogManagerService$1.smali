.class Lcom/htc/server/HtcCachedLogManagerService$1;
.super Ljava/lang/Object;
.source "HtcCachedLogManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcCachedLogManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcCachedLogManagerService;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcCachedLogManagerService;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/server/HtcCachedLogManagerService$1;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 52
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$1;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    # getter for: Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;
    invoke-static {v3}, Lcom/htc/server/HtcCachedLogManagerService;->access$000(Lcom/htc/server/HtcCachedLogManagerService;)Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, p0, v4, v5}, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    sget-boolean v3, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-nez v3, :cond_0

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v3, "HtcCachedLogMgr"

    const-string v4, "logCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$1;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    iget-object v4, v3, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    monitor-enter v4

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$1;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    iget-object v3, v3, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .local v0, "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_start_1
    invoke-interface {v0}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onLogCallbackInfo()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HtcCachedLogMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLogCallbackInfo fail."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
