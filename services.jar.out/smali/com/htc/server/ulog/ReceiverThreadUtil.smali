.class public final Lcom/htc/server/ulog/ReceiverThreadUtil;
.super Ljava/lang/Object;
.source "ReceiverThreadUtil.java"


# static fields
.field private static sThreadHandlerUtiil:Lcom/htc/server/ulog/ReceiverThreadUtil;


# instance fields
.field private mHThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/htc/server/ulog/ReceiverThreadUtil;->mHThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UDove_1"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/ulog/ReceiverThreadUtil;->mHThread:Landroid/os/HandlerThread;

    .line 14
    iget-object v0, p0, Lcom/htc/server/ulog/ReceiverThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 16
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/ulog/ReceiverThreadUtil;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/htc/server/ulog/ReceiverThreadUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/ulog/ReceiverThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/ulog/ReceiverThreadUtil;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/htc/server/ulog/ReceiverThreadUtil;

    invoke-direct {v0}, Lcom/htc/server/ulog/ReceiverThreadUtil;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/ReceiverThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/ulog/ReceiverThreadUtil;

    .line 21
    :cond_0
    sget-object v0, Lcom/htc/server/ulog/ReceiverThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/ulog/ReceiverThreadUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createReceiverHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/htc/server/ulog/ReceiverThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 30
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
