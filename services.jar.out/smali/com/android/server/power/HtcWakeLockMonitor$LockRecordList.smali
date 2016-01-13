.class final Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
.super Ljava/util/ArrayList;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockRecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private skipScan:Z

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 1

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p2, "x1"    # Lcom/android/server/power/HtcWakeLockMonitor$1;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->dump()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/os/IBinder;

    .prologue
    .line 826
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->calcRatio()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getAbnormalPkg()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .prologue
    .line 826
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V

    return-void
.end method

.method private addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 863
    monitor-enter p0

    .line 864
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    .line 867
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    .line 869
    .local v0, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    if-nez v0, :cond_1

    .line 870
    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .end local v0    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 871
    .restart local v0    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_1
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->start(Landroid/os/IBinder;)V
    invoke-static {v0, p5}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 876
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 877
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 882
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    .line 884
    :cond_3
    monitor-exit p0

    .line 885
    return-void

    .line 884
    .end local v0    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calcRatio()V
    .locals 9

    .prologue
    .line 997
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1021
    :cond_0
    return-void

    .line 1001
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 1003
    .local v4, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1005
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->getPackageName()V
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$4000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    .line 1007
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4100(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getTotalHeldDuration([JJ)J

    move-result-wide v1

    .line 1008
    .local v1, "TOTAL_HELD":J
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 1010
    .local v0, "RATIO":I
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1011
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcRatio: ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_3
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4200(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 1017
    # operator++ for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1608(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    goto/16 :goto_0
.end method

.method private dump()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 938
    monitor-enter p0

    .line 939
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "WakeLock Record Dumping:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 941
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3500(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    .line 947
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 948
    .local v2, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    invoke-virtual {p0, v2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 949
    .local v1, "index":I
    if-ne v1, v7, :cond_3

    .line 953
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more...\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 957
    :cond_2
    const-string v4, "HtcWLM"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    monitor-exit p0

    .line 959
    return-void

    .line 950
    .restart local v1    # "index":I
    .restart local v2    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->info()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3600(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 958
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getAbnormalPkg()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v0, "abnormalPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1070
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 1071
    .local v3, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1073
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v3, v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;I)I

    .line 1076
    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v3, v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    goto :goto_0

    .line 1084
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1078
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1079
    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAbnormalPkg: pkgName is null for record.tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    .end local v3    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1088
    .local v1, "hs":Ljava/util/HashSet;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1089
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1090
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1092
    return-object v0
.end method

.method private getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 830
    monitor-enter p0

    .line 831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 832
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    monitor-exit p0

    .line 836
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 837
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getTotalHeldDuration([JJ)J
    .locals 15
    .param p1, "heldDuration"    # [J
    .param p2, "OFFSET"    # J

    .prologue
    .line 962
    const-wide/16 v9, 0x0

    .line 964
    .local v9, "sum":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    array-length v6, v11

    .line 966
    .local v6, "SIZE":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 967
    .local v4, "NOW":J
    sub-long v2, v4, p2

    .line 970
    .local v2, "MIN_RANGE":J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-lez v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-gtz v11, :cond_2

    .line 971
    :cond_0
    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 972
    const-string v11, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Abnormal case found. ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_1
    const-wide/16 v11, 0x0

    .line 992
    .end local v2    # "MIN_RANGE":J
    .end local v4    # "NOW":J
    .end local v6    # "SIZE":I
    :goto_0
    return-wide v11

    .line 980
    .restart local v2    # "MIN_RANGE":J
    .restart local v4    # "NOW":J
    .restart local v6    # "SIZE":I
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 983
    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    cmp-long v11, v2, v11

    if-gtz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    aget-wide v11, p1, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 984
    aget-wide v11, p1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v9, v11

    .line 980
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 987
    .end local v2    # "MIN_RANGE":J
    .end local v4    # "NOW":J
    .end local v6    # "SIZE":I
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 988
    .local v7, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 989
    const-string v11, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Exception caught. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    move-wide v11, v9

    .line 992
    goto :goto_0
.end method

.method private isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 7
    .param p1, "RECORD"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    const/4 v3, 0x0

    .line 1025
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v3

    .line 1030
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4300(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1031
    .local v2, "prefix":Ljava/lang/String;
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4400(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v5

    if-ge v4, v5, :cond_2

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1032
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1033
    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInWhiteList: tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 1038
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInWhiteList: Exception caught. Skip. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private shouldSkipAll()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1047
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1062
    :goto_0
    return v2

    .line 1051
    :cond_0
    monitor-enter p0

    .line 1052
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    if-eqz v4, :cond_1

    .line 1053
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 1056
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 1057
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$4500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1058
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 1059
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 1062
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1063
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopDeadRecord(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 914
    monitor-enter p0

    .line 915
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 916
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v1, p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 920
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 923
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    const-string v2, "HtcWLM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopDeadRecord: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in white list. Treat it as screen turning off."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    goto :goto_0

    .line 932
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    return-void
.end method

.method private stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 889
    monitor-enter p0

    .line 890
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    .line 892
    .local v0, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    if-eqz v0, :cond_1

    .line 893
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 897
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 900
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning off."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    .line 909
    :cond_1
    monitor-exit p0

    .line 910
    return-void

    .line 909
    .end local v0    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 843
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update()V
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$2800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    .line 851
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 845
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 847
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 848
    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 849
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->trimToSize()V

    .line 851
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    return-void
.end method

.method private updateAllHeldDuration()V
    .locals 3

    .prologue
    .line 855
    monitor-enter p0

    .line 856
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 857
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$2900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    .line 859
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    return-void
.end method
