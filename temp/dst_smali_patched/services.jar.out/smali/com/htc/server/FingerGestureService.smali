.class public Lcom/htc/server/FingerGestureService;
.super Lcom/htc/service/IFingerGestureService$Stub;
.source "FingerGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/FingerGestureService$H;
    }
.end annotation


# static fields
.field private static final HANDLE_RESET_FINGERGESTURE_FLAG:I = 0x73

.field private static final TAG:Ljava/lang/String; = "FingerGestureService"

.field private static finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mHandler:Lcom/htc/server/FingerGestureService$H;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mInitComplete:Z

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/FingerGestureService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/htc/service/IFingerGestureService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/FingerGestureService;->mInitComplete:Z

    iput-object p1, p0, Lcom/htc/server/FingerGestureService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/server/FingerGestureService;->init()V

    iget-object v0, p0, Lcom/htc/server/FingerGestureService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/htc/server/FingerGestureService$1;

    invoke-direct {v1, p0}, Lcom/htc/server/FingerGestureService$1;-><init>(Lcom/htc/server/FingerGestureService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/FingerGestureService;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/FingerGestureService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/FingerGestureService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/server/FingerGestureService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Lcom/htc/server/FingerGestureService$H;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/server/FingerGestureService;->mHandler:Lcom/htc/server/FingerGestureService$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/FingerGestureService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/FingerGestureService;

    .prologue
    iget-object v0, p0, Lcom/htc/server/FingerGestureService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/FingerGestureService;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/FingerGestureService;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/FingerGestureService;->initInThread()V

    return-void
.end method

.method private addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/htc/server/FingerGestureService$2;

    const-string v1, "FingerGestureServices"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/FingerGestureService$2;-><init>(Lcom/htc/server/FingerGestureService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/FingerGestureService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initInThread()V
    .locals 2

    .prologue
    new-instance v0, Lcom/htc/server/FingerGestureService$H;

    invoke-direct {v0, p0}, Lcom/htc/server/FingerGestureService$H;-><init>(Lcom/htc/server/FingerGestureService;)V

    sput-object v0, Lcom/htc/server/FingerGestureService;->mHandler:Lcom/htc/server/FingerGestureService$H;

    iget-object v1, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/server/FingerGestureService;->mInitComplete:Z

    iget-object v0, p0, Lcom/htc/server/FingerGestureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public setFingerGestureEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    invoke-static {}, Lcom/htc/server/FingerGestureService;->getCallingUid()I

    move-result v2

    .local v2, "uid":I
    invoke-static {}, Lcom/htc/server/FingerGestureService;->getCallingPid()I

    move-result v1

    .local v1, "pid":I
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .local v0, "debug":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "setFingerGestureEnable"

    invoke-direct {p0, v3, v0}, Lcom/htc/server/FingerGestureService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "FingerGestureService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFingerGestureEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/server/FingerGestureService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v3, Lcom/htc/server/FingerGestureService;->mHandler:Lcom/htc/server/FingerGestureService$H;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/htc/server/FingerGestureService$H;->removeMessages(I)V

    return-void
.end method
