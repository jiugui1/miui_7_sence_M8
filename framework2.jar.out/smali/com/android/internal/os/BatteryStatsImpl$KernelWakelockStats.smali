.class Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KernelWakelockStats"
.end annotation


# instance fields
.field public mCount:I

.field public mTotalTime:J

.field public mVersion:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V
    .locals 0
    .param p2, "count"    # I
    .param p3, "totalTime"    # J
    .param p5, "version"    # I

    .prologue
    .line 2596
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2597
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 2598
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 2599
    iput p5, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    .line 2600
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;)V
    .locals 4
    .param p1, "kws"    # Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .prologue
    .line 2604
    if-eqz p1, :cond_2

    .line 2606
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2607
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 2617
    :cond_0
    iget v0, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    if-ltz v0, :cond_1

    .line 2618
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    iget v1, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 2628
    :cond_1
    iget v0, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    .line 2630
    :cond_2
    return-void
.end method

.method public minus(Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;)V
    .locals 4
    .param p1, "kws"    # Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .prologue
    .line 2633
    if-eqz p1, :cond_0

    .line 2653
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    iget v1, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 2654
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 2657
    :cond_0
    return-void
.end method
