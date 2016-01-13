.class Landroid/webkit/WebCoreThreadWatchdog;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final HEARTBEAT_PERIOD:I = 0x2710

.field public static HOST_TYPE_JWEBCOREJAVABRIDGE:I = 0x0

.field public static HOST_TYPE_WEBVIEWCORE:I = 0x0

.field private static final HTC_DEBUG:Z

.field private static final IS_ALIVE:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "WebCoreThreadWatchdog"

.field private static final SUBSEQUENT_TIMEOUT_PERIOD:I = 0x3a98

.field private static final TIMED_OUT:I = 0x65

.field private static final TIMEOUT_PERIOD:I = 0x2bf20

.field private static sHostType:I

.field private static sInstance:Landroid/webkit/WebCoreThreadWatchdog;

.field private static sMsgId:I

.field private static sStartTime:D


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mWebCoreThreadHandler:Landroid/os/Handler;

.field private mWebViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/WebCoreThreadWatchdog;->HTC_DEBUG:Z

    sput v1, Landroid/webkit/WebCoreThreadWatchdog;->sHostType:I

    sput v1, Landroid/webkit/WebCoreThreadWatchdog;->sMsgId:I

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/webkit/WebCoreThreadWatchdog;->sStartTime:D

    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebCoreThreadWatchdog;->HOST_TYPE_WEBVIEWCORE:I

    const/4 v0, 0x1

    sput v0, Landroid/webkit/WebCoreThreadWatchdog;->HOST_TYPE_JWEBCOREJAVABRIDGE:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "webCoreThreadHandler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebCoreThreadWatchdog;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebCoreThreadWatchdog;

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebCoreThreadWatchdog;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebCoreThreadWatchdog;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Landroid/webkit/WebCoreThreadWatchdog;->sHostType:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    sget v0, Landroid/webkit/WebCoreThreadWatchdog;->sMsgId:I

    return v0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    sget-wide v0, Landroid/webkit/WebCoreThreadWatchdog;->sStartTime:D

    return-wide v0
.end method

.method static synthetic access$600(Landroid/webkit/WebCoreThreadWatchdog;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebCoreThreadWatchdog;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    return-object v0
.end method

.method private addWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebViewClassic;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createHandler()V
    .locals 2

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog$1;-><init>(Landroid/webkit/WebCoreThreadWatchdog;)V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized pause()V
    .locals 2

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->pauseWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pauseWatchdog()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static regiestMonitoringMessage(II)V
    .locals 2
    .param p0, "hostType"    # I
    .param p1, "msgId"    # I

    .prologue
    sput p0, Landroid/webkit/WebCoreThreadWatchdog;->sHostType:I

    sput p1, Landroid/webkit/WebCoreThreadWatchdog;->sMsgId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Landroid/webkit/WebCoreThreadWatchdog;->sStartTime:D

    return-void
.end method

.method public static declared-synchronized registerWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .param p0, "w"    # Landroid/webkit/WebViewClassic;

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->addWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebViewClassic;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized resume()V
    .locals 2

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->resumeWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resumeWatchdog()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized start(Landroid/os/Handler;)Landroid/webkit/WebCoreThreadWatchdog;
    .locals 4
    .param p0, "webCoreThreadHandler"    # Landroid/os/Handler;

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    const-string v3, "WebCoreThreadWatchdog"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unRegisterMonitoringMessage()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Landroid/webkit/WebCoreThreadWatchdog;->sStartTime:D

    sub-double v0, v2, v4

    .local v0, "duration":D
    sget-boolean v2, Landroid/webkit/WebCoreThreadWatchdog;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "WebCoreThreadWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WebCoreThreadWatchdog::MonitoringMessage] HostType=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/webkit/WebCoreThreadWatchdog;->sHostType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  msg=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/webkit/WebCoreThreadWatchdog;->sMsgId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] over 1 sec. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput v6, Landroid/webkit/WebCoreThreadWatchdog;->sHostType:I

    sput v6, Landroid/webkit/WebCoreThreadWatchdog;->sMsgId:I

    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/webkit/WebCoreThreadWatchdog;->sStartTime:D

    return-void
.end method

.method public static declared-synchronized unregisterWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .param p0, "w"    # Landroid/webkit/WebViewClassic;

    .prologue
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->removeWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Landroid/webkit/WebCoreThreadWatchdog;->createHandler()V

    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xc5

    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
