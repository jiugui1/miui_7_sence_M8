.class final Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_ON:Z


# instance fields
.field private mActualBacklight:I

.field private mActualOn:Z

.field private mChangeInProgress:Z

.field private mCurrentButtonValue:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingOn:Z

.field private final mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 428
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 434
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 435
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 436
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    .line 437
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 440
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    .line 494
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerState$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 478
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 479
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChangeInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentButtonValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  new BL ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/power/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1600()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const-string v0, "  new BL filter =-2147483648"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public setState(ZI)Z
    .locals 6
    .param p1, "on"    # Z
    .param p2, "backlight"    # I

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    :try_start_0
    sget v0, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    .line 449
    .local v0, "buttonValue":I
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v3, :cond_3

    .line 450
    :cond_0
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    const-string v3, "XAN-DPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhotonicModulator: on="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", backlight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 455
    iput p2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 457
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v3, :cond_2

    .line 458
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 459
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 473
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v3, :cond_5

    :goto_1
    monitor-exit v2

    return v1

    .line 463
    :cond_3
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    if-eq v3, v0, :cond_2

    if-ltz v0, :cond_2

    .line 464
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    const-string v3, "XAN-DPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoMod:bValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_4
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$1500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 469
    iput v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I

    goto :goto_0

    .line 474
    .end local v0    # "buttonValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 473
    .restart local v0    # "buttonValue":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method
