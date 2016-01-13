.class Lcom/android/server/ConnectivityService$DualMode;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualMode"
.end annotation


# static fields
.field private static final DM_EVENT_ENTRY:I = 0x1

.field private static final DM_EVENT_EXIT:I = 0x0

.field private static final DM_EVENT_NONE:I = -0x1

.field private static final EXIT_TIME_OUT:J = 0x4e20L


# instance fields
.field private dualModeState:I

.field exitSystemTime:J

.field private previousActiveDefaultNetwork:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ConnectivityService$DualMode;->exitSystemTime:J

    iput v2, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    iput v2, p0, Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService$DualMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$DualMode;

    .prologue
    iget v0, p0, Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService$DualMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$DualMode;

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService$DualMode;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$DualMode;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$DualMode;->handleDualModeSwitch(Landroid/os/Message;)V

    return-void
.end method

.method private handleDualModeSwitch(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "dmNet":Landroid/net/NetworkStateTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    .end local v0    # "dmNet":Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local v0    # "dmNet":Landroid/net/NetworkStateTracker;
    :pswitch_1
    const-string v1, "ConnectivityService"

    const-string v2, "[Dual mode]:receive DM_EVENT_EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$DualMode;->exitSystemTime:J

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    :cond_1
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisableDualmode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v1, ""

    .local v1, "property":Ljava/lang/String;
    :try_start_0
    const-string v3, "wimax.dualmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get dualmode enabled failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->isWimaxDualMode:Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isIgnore1xrtt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v1, ""

    .local v1, "property":Ljava/lang/String;
    :try_start_0
    const-string v3, "wimax.dualmode.1xrtt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get 1xrtt enabled failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->isWimaxDualMode:Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1
.end method
