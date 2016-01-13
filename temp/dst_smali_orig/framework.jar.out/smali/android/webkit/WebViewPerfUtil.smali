.class public Landroid/webkit/WebViewPerfUtil;
.super Ljava/lang/Object;
.source "WebViewPerfUtil.java"


# static fields
.field public static final LEVEL_WAKELOCK_BENCHMARK:I = 0x1

.field private static final LEVEL_WAKELOCK_NONE:I = 0x0

.field public static final LEVEL_WAKELOCK_PERFORMANCE:I = 0x3

.field public static final LEVEL_WAKELOCK_VSYNC:I = 0x4

.field public static final LEVEL_WAKELOCK_ZOOM:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "WebViewPerfUtil"

.field private static final SUNSPIDER_INDEX:I

.field public static final WebSite_Enable_Perf:[Ljava/lang/String;

.field private static bInPerfWebSite:Z

.field private static bInit:Z

.field private static mBmCnt:I

.field private static mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentWakeLockLevel:I

.field private static mPfCnt:I

.field private static mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mVsCnt:I

.field private static mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mZmCnt:I

.field private static mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    sput v2, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    sput v2, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    sput v2, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    sput v2, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "www.webkit.org/perf/sunspider-"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "browsermark.rightware.com/browsermark/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "v8.googlecode.com/svn/data/benchmarks/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "www.craftymind.com/factory/"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireLowerPriorityWakeLockIfExisted()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-lez v0, :cond_1

    invoke-static {v1}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-lez v0, :cond_2

    invoke-static {v2}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    :cond_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-lez v0, :cond_3

    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    sput v3, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    :cond_3
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-lez v0, :cond_0

    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    sput v4, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0
.end method

.method private static acquireWakeLock(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no acquire level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_4
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V
    .locals 8
    .param p0, "v"    # Landroid/webkit/WebView;
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/webkit/WebViewPerfUtil;->isAcquireByHigherPriority(I)Z

    move-result v0

    .local v0, "bAcquire":Z
    if-ne p1, v4, :cond_3

    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Benchmark Wake Lock, Benchmark Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    sput v4, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    :cond_2
    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_5

    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Benchmark Wake Lock, Zoom Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    sput v5, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    :cond_4
    sget v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    goto :goto_0

    :cond_5
    if-ne p1, v6, :cond_7

    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Performance Wake Lock, Perf Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    sput v6, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    :cond_6
    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto/16 :goto_0

    :cond_7
    if-ne p1, v7, :cond_9

    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Vsync Wake Lock, Vsync Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    invoke-static {v7}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    invoke-static {v7}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    sput v7, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    :cond_8
    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto/16 :goto_0

    :cond_9
    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no wakelock level("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getCnt(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    :pswitch_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    goto :goto_0

    :pswitch_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto :goto_0

    :pswitch_3
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x100

    const/4 v3, 0x2

    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x5

    const-string v2, "BrowserBenchmark_0"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserBenchmark_0"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v1, 0x4

    const-string v2, "BrowserMaxPerf_1"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserMaxPerf_1"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserPerf_8"

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserPerf_8"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserVsync_20"

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const-string v1, "BrowserVsync_20"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private static isAcquireByHigherPriority(I)Z
    .locals 2
    .param p0, "acquire_level"    # I

    .prologue
    const/4 v0, 0x0

    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isInBrowserApp()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.sense.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInPerfWebSite()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    return v0
.end method

.method public static isLoadPerfWebSite(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    sget-object v4, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    array-length v1, v4

    .local v1, "nLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    if-nez v0, :cond_1

    const-string v4, "driver.html"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "WebViewPerfUtil"

    const-string v4, "Perf WebSite Detect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .end local v0    # "i":I
    .end local v1    # "nLen":I
    :goto_1
    return v2

    :cond_2
    sput-boolean v3, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    move v2, v3

    goto :goto_1
.end method

.method public static isNeedPerf(Landroid/webkit/WebView;I)Z
    .locals 1
    .param p0, "v"    # Landroid/webkit/WebView;
    .param p1, "level"    # I

    .prologue
    if-eqz p0, :cond_1

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->isInBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Landroid/webkit/WebViewPerfUtil;->isReadLaterWebView(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReadLaterWebView(Landroid/webkit/WebView;)Z
    .locals 2
    .param p0, "v"    # Landroid/webkit/WebView;

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PureReaderManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static releaseLowerPriorityWakeLock(I)V
    .locals 1
    .param p0, "new_level"    # I

    .prologue
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static releaseWakeLock(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no release level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_1
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_3
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_4
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_5
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_6

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_6
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_7
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V
    .locals 7
    .param p0, "v"    # Landroid/webkit/WebView;
    .param p1, "level"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_2

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Benchmark Wake Lock, Benchmark Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v3, :cond_0

    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Benchmark Wake Lock, Zoom Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v4, :cond_0

    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Performance Wake Lock, Perf Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v5, :cond_0

    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v6, :cond_5

    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Vsync Wake Lock, Vsync Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v6, :cond_0

    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no wakelock level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
