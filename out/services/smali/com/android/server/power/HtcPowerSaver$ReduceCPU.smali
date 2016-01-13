.class final Lcom/android/server/power/HtcPowerSaver$ReduceCPU;
.super Lcom/android/server/power/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReduceCPU"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V
    .locals 8
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1580
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/power/HtcPowerSaver;

    .line 1581
    const-string v2, "ReduceCPU"

    const-string v3, "powersaver_reduce_CPU"

    const-string v5, "sys.psaver.rdcpu"

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/HtcPowerSaver$Feature;-><init>(Lcom/android/server/power/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1577
    iput-object v7, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    .line 1578
    iput-object v7, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 1582
    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    .line 1583
    return-void
.end method

.method private initWakeLock()V
    .locals 4

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    .line 1588
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x80

    const/4 v2, 0x4

    const-string v3, "PSaver_Freq"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 1589
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$HtcCpuCtrl;->setReferenceCounted(Z)V

    .line 1590
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    .line 1600
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$1100(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: acquiring Ap Dvcs lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver;->access$1200(Lcom/android/server/power/HtcPowerSaver;)Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->nativeAcquireCpuApDvcsWakeLock()V

    .line 1602
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$1100(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: Ap Dvcs lock acquired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    .prologue
    .line 1608
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$1100(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: releasing Ap Dvcs lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver;->access$1200(Lcom/android/server/power/HtcPowerSaver;)Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->nativeReleaseCpuApDvcsWakeLock()V

    .line 1610
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$1100(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: Ap Dvcs lock released"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 1594
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$1100(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v0, 0x0

    return v0
.end method
