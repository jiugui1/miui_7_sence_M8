.class Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions$APMScreenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

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
