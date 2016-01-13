.class public Lcom/htc/server/HtcBatteryAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcBatteryAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;,
        Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;
    }
.end annotation


# static fields
.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_TOP_APP_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcBatteryAmsListener"


# instance fields
.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

.field private mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

.field private m_nCurrentUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    .line 24
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    .line 25
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    .line 28
    iput-object p1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 29
    new-instance v0, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    const-string v1, "HtcBatteryAmsListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;-><init>(Lcom/htc/server/HtcBatteryAmsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    .line 30
    iget-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;->start()V

    .line 31
    new-instance v0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    invoke-virtual {v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;-><init>(Lcom/htc/server/HtcBatteryAmsListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    .line 32
    return-void
.end method


# virtual methods
.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "topApp"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    return-void
.end method

.method updateBatteryUsage(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 5
    .param p1, "topApp"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v4, -0x1

    .line 73
    const/4 v0, -0x1

    .line 75
    .local v0, "newUid":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 79
    :cond_0
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-ne v1, v0, :cond_2

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    .line 82
    const-string v1, "HtcBatteryAmsListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top package changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-eq v1, v4, :cond_4

    .line 86
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStopGpu(I)V

    .line 87
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStopDisplay(I)V

    .line 89
    :cond_4
    iput v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    .line 90
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-eq v1, v4, :cond_1

    .line 91
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStartGpu(I)V

    .line 92
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStartDisplay(I)V

    goto :goto_0
.end method
