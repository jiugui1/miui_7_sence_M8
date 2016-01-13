.class Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->captureScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;)Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v7, v6, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v6, v6, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v6, p0, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    move-object v5, p0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2$1;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v6

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6, v5}, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
