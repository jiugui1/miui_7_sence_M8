.class final Lcom/htc/server/HtcAppWifiOffload;
.super Ljava/lang/Object;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;,
        Lcom/htc/server/HtcAppWifiOffload$H;
    }
.end annotation


# static fields
.field private static final HTC_SETUPWIZARD_NAME:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final INTENT_INTERNETAPP_RESUMED:Ljava/lang/String; = "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

.field private static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final TAG:Ljava/lang/String; = "HtcAppWifiOffload"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

.field private volatile mInitComplete:Z

.field private mInternetApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAirplaneMode:Z

.field private mIsFunctionEnable:Z

.field private mIsSetupWizard:Z

.field private mLauncherApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNonInternetApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMgr:Landroid/content/pm/PackageManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mTriggeredApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForLauncher:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    .line 245
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    .line 246
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    .line 247
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    .line 248
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mWaitForLauncher:Z

    .line 251
    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    .line 252
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload;->init()V

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcAppWifiOffload;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload;->initInThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/server/HtcAppWifiOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/HtcAppWifiOffload;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/server/HtcAppWifiOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/server/HtcAppWifiOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcAppWifiOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mWaitForLauncher:Z

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 256
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    .line 257
    new-instance v1, Lcom/htc/server/HtcAppWifiOffload$1;

    const-string v2, "HtcAppWifiOffload"

    invoke-direct {v1, p0, v2}, Lcom/htc/server/HtcAppWifiOffload$1;-><init>(Lcom/htc/server/HtcAppWifiOffload;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    .line 265
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 266
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 267
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 269
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0

    .line 274
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void

    .line 274
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private initInThread()V
    .locals 4

    .prologue
    .line 282
    new-instance v1, Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-direct {v1, p0}, Lcom/htc/server/HtcAppWifiOffload$H;-><init>(Lcom/htc/server/HtcAppWifiOffload;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    .line 285
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;-><init>(Lcom/htc/server/HtcAppWifiOffload;Lcom/htc/server/HtcAppWifiOffload$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 296
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    .line 297
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit v2

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public noteActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "strPackageName"    # Ljava/lang/String;
    .param p2, "strActivityName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x1f6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 302
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eq v6, v2, :cond_0

    .line 306
    const-string v2, "com.google.android.gsf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const-string v2, "com.htc.android.htcsetupwizard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    iput-boolean v6, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    .line 313
    :cond_2
    const/4 v0, 0x0

    .line 314
    .local v0, "isLauncher":Z
    iget-object v3, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mWaitForLauncher:Z

    if-ne v6, v2, :cond_4

    if-ne v6, v0, :cond_4

    .line 323
    iput-boolean v6, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    .line 324
    iput-boolean v7, p0, Lcom/htc/server/HtcAppWifiOffload;->mWaitForLauncher:Z

    .line 328
    :cond_4
    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    if-eqz v2, :cond_0

    .line 333
    if-ne v6, v0, :cond_6

    .line 334
    iget-object v3, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 335
    :try_start_1
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 336
    const-string v2, "HtcAppWifiOffload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear triggeredApps due to <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 339
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    iput-boolean v7, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    .line 344
    :cond_6
    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    if-eq v6, v2, :cond_0

    .line 349
    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    if-eq v6, v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v2, v8}, Lcom/htc/server/HtcAppWifiOffload$H;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v2, v8}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 357
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 318
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 339
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public notePackageChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x1f8

    .line 363
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->removeMessages(I)V

    .line 365
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method
