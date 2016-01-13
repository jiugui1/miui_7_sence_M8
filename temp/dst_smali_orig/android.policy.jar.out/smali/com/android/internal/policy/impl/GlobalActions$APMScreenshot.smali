.class public Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APMScreenshot"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;)Lcom/android/internal/policy/impl/GlobalActions;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    return-object v0
.end method


# virtual methods
.method public captureScreen()V
    .locals 8

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
