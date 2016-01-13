.class public final Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field private mGpuSpeedTimes:[J

.field mNesting:I

.field private mRelGpuSpeedTimes:[J

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalGpuSpeedTimes:[J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field private mUnplugGpuSpeedTimes:[J

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    .local p4, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v2, 0x0

    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v1

    .local v1, "steps":I
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 7
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    .local p4, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "bins":I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    .local v3, "steps":I
    if-ltz v0, :cond_0

    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    :cond_0
    const-string v4, "BatSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GpuTimer Contructure11 warning bins="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    if-lt v0, v3, :cond_2

    move v4, v0

    :goto_0
    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v4, v3

    goto :goto_0

    .restart local v1    # "i":I
    :cond_3
    if-ge v0, v3, :cond_4

    move v2, v0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method private checkTimerPoolSize()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "tmpSize":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "BatSI"

    const-string v2, "Timer Pool size <=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v6, v9, v11

    .local v6, "realtime":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    .local v1, "batteryRealtime":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    sub-long v3, v1, v9

    .local v3, "heldTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    int-to-long v11, v0

    div-long v11, v3, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    :cond_0
    iput-wide v1, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v3    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;)V
    .locals 9
    .param p1, "gTimer"    # Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .prologue
    if-eqz p1, :cond_5

    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->add(Lcom/android/internal/os/BatteryStatsImpl$Timer;)V

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v6, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    iget-wide v6, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    const/4 v3, 0x0

    .local v3, "unplugGpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v3, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v4, v4

    if-le v3, v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v3, v4

    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    add-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, "gpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v0, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v4, v4

    if-le v0, v4, :cond_2

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v0, v4

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    add-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .local v2, "relGpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v2, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v4, v4

    if-le v2, v4, :cond_4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v2, v4

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    add-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "gpuSpeedTimesSize":I
    .end local v1    # "i":I
    .end local v2    # "relGpuSpeedTimesSize":I
    .end local v3    # "unplugGpuSpeedTimesSize":I
    :cond_5
    return-void
.end method

.method public addGpuSpeedStepTimes([J)V
    .locals 10
    .param p1, "values"    # [J

    .prologue
    const-wide/16 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    .local v3, "totalLen":I
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    new-array v5, v3, [J

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aput-wide v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v3, v5

    :cond_3
    const-wide/16 v0, 0x0

    .local v0, "amt":J
    array-length v4, p1

    .local v4, "valueLen":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    aget-wide v0, p1, v2

    cmp-long v5, v0, v8

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v6, v5, v2

    add-long/2addr v6, v0

    aput-wide v6, v5, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    add-long p1, v2, v4

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v4, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    sub-long v0, p1, v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->checkTimerPoolSize()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v0, v4

    :cond_1
    add-long/2addr v0, v2

    return-wide v0
.end method

.method detach()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getTimeAtGpuSpeedStep(II)J
    .locals 3
    .param p1, "speedStep"    # I
    .param p2, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v2, v2

    if-ge p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method isRunningLocked()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public minus(Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;)V
    .locals 9
    .param p1, "gTimer"    # Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .prologue
    if-eqz p1, :cond_5

    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->minus(Lcom/android/internal/os/BatteryStatsImpl$Timer;)V

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v6, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    iget-wide v6, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    const/4 v3, 0x0

    .local v3, "unplugGpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v3, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v4, v4

    if-le v3, v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    array-length v3, v4

    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, "gpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v0, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v4, v4

    if-le v0, v4, :cond_2

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v0, v4

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .local v2, "relGpuSpeedTimesSize":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v2, v4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v4, v4

    if-le v2, v4, :cond_4

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v2, v4

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v5, v5, v1

    iget-object v7, p1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "gpuSpeedTimesSize":I
    .end local v1    # "i":I
    .end local v2    # "relGpuSpeedTimesSize":I
    .end local v3    # "unplugGpuSpeedTimesSize":I
    :cond_5
    return-void
.end method

.method public plug(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJJ)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->updateGpuSpeedStepTimes()V

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    :cond_0
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "bins":I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    .local v3, "steps":I
    if-ltz v0, :cond_0

    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    :cond_0
    const-string v4, "BatSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GpuTimer readSummaryFromParcelLocked warning bins="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    if-lt v0, v3, :cond_2

    move v4, v0

    :goto_0
    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v4, v3

    goto :goto_0

    .restart local v1    # "i":I
    :cond_3
    if-ge v0, v3, :cond_4

    move v2, v0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z
    .locals 8
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "detachIfReset"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-gtz v4, :cond_0

    move v0, v2

    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :goto_1
    invoke-super {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v2, :cond_2

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "canDetach":Z
    .end local v1    # "i":I
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0    # "canDetach":Z
    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    :cond_3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    return-void
.end method

.method startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v1, :cond_1

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    :cond_2
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mCount:I

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    :cond_3
    return-void
.end method

.method stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .local v2, "realtime":J
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    .local v0, "batteryRealtime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mCount:I

    :cond_2
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->updateGpuSpeedStepTimes()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->computeRunTimeLocked(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalTime:J

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    goto :goto_1
.end method

.method public unplug(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->unplug(JJJ)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v0, :cond_1

    const/4 v0, 0x0

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    goto :goto_0
.end method

.method public updateGpuSpeedStepTimes()V
    .locals 12

    .prologue
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-nez v7, :cond_1

    const/4 v7, 0x0

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    :goto_0
    const-wide/16 v5, 0x0

    .local v5, "temp":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v3, v7

    .local v3, "mGpuSpeedLen":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v4, v7

    .local v4, "mRelGpuSpeedLen":I
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    if-ge v1, v4, :cond_2

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v5, v7, v1

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    const-string v7, "BatSI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error current Gpu time ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") < last Gpu time ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v9, v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v8, v7, v1

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v10, v10, v1

    sub-long/2addr v8, v10

    aput-wide v8, v7, v1

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aput-wide v5, v7, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "mGpuSpeedLen":I
    .end local v4    # "mRelGpuSpeedLen":I
    .end local v5    # "temp":J
    :cond_1
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedTimes([J)[J
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$800([J)[J

    goto :goto_0

    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "mGpuSpeedLen":I
    .restart local v4    # "mRelGpuSpeedLen":I
    .restart local v5    # "temp":J
    :cond_2
    move v2, v0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    invoke-virtual {p0, v7}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->addGpuSpeedStepTimes([J)V

    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v0, v2

    .local v0, "bins":I
    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    :cond_0
    const-string v2, "BatSI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GpuTimer writeSummaryFromParcelLocked warning bins="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v0, v2

    .local v0, "bins":I
    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    :cond_0
    const-string v2, "BatSI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GpuTimer writeToParcel warning bins="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
