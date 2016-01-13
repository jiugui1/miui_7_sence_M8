.class Lvenom/common/FlashLight$FlashTimer;
.super Ljava/lang/Object;
.source "FlashLight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvenom/common/FlashLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashTimer"
.end annotation


# instance fields
.field private isActive:Z

.field private mThreadExceutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lvenom/common/FlashLight;


# direct methods
.method private constructor <init>(Lvenom/common/FlashLight;)V
    .locals 1

    iput-object p1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lvenom/common/FlashLight;Lvenom/common/FlashLight$FlashTimer;)V
    .locals 0

    invoke-direct {p0, p1}, Lvenom/common/FlashLight$FlashTimer;-><init>(Lvenom/common/FlashLight;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v1}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    const-string v1, "sys.flashlight"

    iget-object v2, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v2}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v1}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    iget-object v2, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v2}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lvenom/common/FlashLight;->setBrightness(IZ)V
    invoke-static {v1, v2, v3}, Lvenom/common/FlashLight;->access$2(Lvenom/common/FlashLight;IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "m0narX_flashlight"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mBrightness = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v3}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but requested Brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    invoke-static {v1, v0}, Lvenom/common/FlashLight;->access$3(Lvenom/common/FlashLight;I)V

    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lvenom/common/FlashLight;->access$4(Lvenom/common/FlashLight;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # invokes: Lvenom/common/FlashLight;->stopWakeLock()V
    invoke-static {v1}, Lvenom/common/FlashLight;->access$5(Lvenom/common/FlashLight;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    iput-boolean v4, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lvenom/common/FlashLight$FlashTimer;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v0}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvenom/common/FlashLight$FlashTimer;->mThreadExceutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lvenom/common/FlashLight$FlashTimer;->mThreadExceutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    iget-object v0, p0, Lvenom/common/FlashLight$FlashTimer;->mThreadExceutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvenom/common/FlashLight$FlashTimer;->isActive:Z

    return-void
.end method
