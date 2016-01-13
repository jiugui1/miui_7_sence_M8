.class Landroid/media/MediaFocusControl$RccEventDispatcherEntry;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RccEventDispatcherEntry"
.end annotation


# instance fields
.field private mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/IRccEventDispatcher;)V
    .locals 4
    .param p2, "rcb"    # Landroid/media/IRccEventDispatcher;

    .prologue
    iput-object p1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    invoke-interface {v1}, Landroid/media/IRccEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RccEvent]RccEventDispatcherEntry() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    # getter for: Landroid/media/MediaFocusControl;->mRccEventLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$3500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "MediaFocusControl"

    const-string v2, "[RccEvent]binderDied"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mRccEventDispatcherEntry:Landroid/media/MediaFocusControl$RccEventDispatcherEntry;
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$3600(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$RccEventDispatcherEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mRccEventDispatcherEntry:Landroid/media/MediaFocusControl$RccEventDispatcherEntry;
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$3600(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$RccEventDispatcherEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->unlinkToDeath()V

    iget-object v0, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mRccEventDispatcherEntry:Landroid/media/MediaFocusControl$RccEventDispatcherEntry;
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$3602(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RccEventDispatcherEntry;)Landroid/media/MediaFocusControl$RccEventDispatcherEntry;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->unlinkToDeath()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIRccEventDispatcher()Landroid/media/IRccEventDispatcher;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    return-object v0
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl$RccEventDispatcherEntry;->mRccEventDispatcher:Landroid/media/IRccEventDispatcher;

    invoke-interface {v1}, Landroid/media/IRccEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RccEvent]Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in RccEventDispatcherEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
