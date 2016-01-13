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

    .line 14
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    .line 15
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 16
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    .line 19
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 20
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 22
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 23
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 25
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 26
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 28
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 29
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 32
    sput v2, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    .line 33
    sput v2, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    .line 34
    sput v2, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    .line 35
    sput v2, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    .line 47
    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 49
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
    .line 12
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

    .line 156
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-lez v0, :cond_1

    .line 158
    invoke-static {v1}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 159
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-lez v0, :cond_2

    .line 162
    invoke-static {v2}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 163
    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 164
    :cond_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-lez v0, :cond_3

    .line 166
    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 167
    sput v3, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 168
    :cond_3
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-lez v0, :cond_0

    .line 170
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 171
    sput v4, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0
.end method

.method private static acquireWakeLock(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 202
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

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 181
    :cond_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 185
    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 187
    :cond_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 193
    :cond_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 197
    :pswitch_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 199
    :cond_4
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 176
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

    .line 263
    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v1, :cond_0

    .line 266
    invoke-static {p1}, Landroid/webkit/WebViewPerfUtil;->isAcquireByHigherPriority(I)Z

    move-result v0

    .line 267
    .local v0, "bAcquire":Z
    if-ne p1, v4, :cond_3

    .line 268
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

    .line 270
    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 271
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 272
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 274
    sput v4, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 276
    :cond_2
    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    .line 278
    :cond_3
    if-ne p1, v5, :cond_5

    .line 279
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

    .line 281
    sget v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 282
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 283
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 285
    sput v5, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 287
    :cond_4
    sget v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    goto :goto_0

    .line 288
    :cond_5
    if-ne p1, v6, :cond_7

    .line 289
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

    .line 291
    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 292
    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 293
    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 295
    sput v6, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 297
    :cond_6
    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto/16 :goto_0

    .line 298
    :cond_7
    if-ne p1, v7, :cond_9

    .line 299
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

    .line 301
    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 302
    invoke-static {v7}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 303
    invoke-static {v7}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 305
    sput v7, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 307
    :cond_8
    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto/16 :goto_0

    .line 309
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
    .line 374
    packed-switch p0, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 375
    :pswitch_0
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    .line 376
    :pswitch_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    goto :goto_0

    .line 377
    :pswitch_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto :goto_0

    .line 378
    :pswitch_3
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto :goto_0

    .line 374
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

    .line 60
    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    .line 62
    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x5

    const-string v2, "BrowserBenchmark_0"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 65
    const-string v1, "BrowserBenchmark_0"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 67
    const/4 v1, 0x4

    const-string v2, "BrowserMaxPerf_1"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 68
    const-string v1, "BrowserMaxPerf_1"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 70
    const-string v1, "BrowserPerf_8"

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 71
    const-string v1, "BrowserPerf_8"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 73
    const-string v1, "BrowserVsync_20"

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 74
    const-string v1, "BrowserVsync_20"

    invoke-virtual {v0, v5, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 75
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    .line 77
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private static isAcquireByHigherPriority(I)Z
    .locals 2
    .param p0, "acquire_level"    # I

    .prologue
    const/4 v0, 0x0

    .line 120
    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v1, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isInBrowserApp()Z
    .locals 2

    .prologue
    .line 112
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
    .line 104
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    return v0
.end method

.method public static isLoadPerfWebSite(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    if-eqz p0, :cond_2

    .line 81
    sget-object v4, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    array-length v1, v4

    .line 82
    .local v1, "nLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 84
    if-nez v0, :cond_1

    .line 85
    const-string v4, "driver.html"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const-string v3, "WebViewPerfUtil"

    const-string v4, "Perf WebSite Detect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 99
    .end local v0    # "i":I
    .end local v1    # "nLen":I
    :goto_1
    return v2

    .line 98
    :cond_2
    sput-boolean v3, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    move v2, v3

    .line 99
    goto :goto_1
.end method

.method public static isNeedPerf(Landroid/webkit/WebView;I)Z
    .locals 1
    .param p0, "v"    # Landroid/webkit/WebView;
    .param p1, "level"    # I

    .prologue
    .line 116
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
    .line 108
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
    .line 129
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 147
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 132
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

    .line 208
    packed-switch p0, :pswitch_data_0

    .line 254
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

    .line 257
    :goto_0
    return-void

    .line 211
    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 215
    :cond_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 218
    :cond_1
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 222
    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 226
    :cond_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    .line 227
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mZmCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 229
    :cond_3
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 233
    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    .line 234
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 237
    :cond_4
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_5

    .line 238
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 240
    :cond_5
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 244
    :pswitch_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_6

    .line 245
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 248
    :cond_6
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_7

    .line 249
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 251
    :cond_7
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto/16 :goto_0

    .line 208
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

    .line 317
    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v0, :cond_0

    .line 320
    if-ne p1, v3, :cond_2

    .line 321
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

    .line 322
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-eqz v0, :cond_0

    .line 326
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    .line 328
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v3, :cond_0

    .line 329
    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 330
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    .line 332
    :cond_2
    if-ne p1, v4, :cond_3

    .line 333
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

    .line 334
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-eqz v0, :cond_0

    .line 338
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    .line 340
    sget v0, Landroid/webkit/WebViewPerfUtil;->mZmCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v4, :cond_0

    .line 341
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 342
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    .line 344
    :cond_3
    if-ne p1, v5, :cond_4

    .line 345
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

    .line 346
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-eqz v0, :cond_0

    .line 350
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    .line 352
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v5, :cond_0

    .line 353
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 354
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto/16 :goto_0

    .line 356
    :cond_4
    if-ne p1, v6, :cond_5

    .line 357
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

    .line 358
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-eqz v0, :cond_0

    .line 362
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    .line 364
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v6, :cond_0

    .line 365
    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 366
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto/16 :goto_0

    .line 369
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
