.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 569
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 570
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 571
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 572
    return-void
.end method

.method private delay(J)V
    .locals 6
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 575
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 579
    .local v0, "bedtime":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 589
    .end local v0    # "bedtime":J
    :cond_1
    :goto_1
    return-void

    .line 586
    .restart local v0    # "bedtime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 587
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 581
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 592
    const/16 v18, -0x8

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->setThreadPriority(I)V

    .line 593
    monitor-enter p0

    .line 594
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v13

    .line 595
    .local v13, "pattern":[J
    array-length v11, v13

    .line 596
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)I

    move-result v15

    .line 597
    .local v15, "repeat":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    .line 598
    .local v17, "uid":I
    const/4 v9, 0x0

    .line 599
    .local v9, "index":I
    const-wide/16 v3, 0x0

    .line 601
    .local v3, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPid:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    .line 602
    .local v14, "pid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService;->mEnlargeDuration:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)I

    move-result v5

    .line 603
    .local v5, "enlargeDuration":I
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 604
    new-instance v16, Ljava/lang/StringBuilder;

    array-length v0, v13

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 605
    .local v16, "sb":Ljava/lang/StringBuilder;
    move-object v2, v13

    .local v2, "arr$":[J
    array-length v12, v2

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_0

    aget-wide v6, v2, v8

    .line 606
    .local v6, "i":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 608
    .end local v6    # "i":J
    :cond_0
    const-string v18, "VibratorService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "vib dbg, vibrate, pid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", repeat: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", length: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", pattern: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", enlarge:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "arr$":[J
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    move v10, v9

    .line 612
    .end local v9    # "index":I
    .local v10, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 614
    if-ge v10, v11, :cond_2

    .line 615
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    aget-wide v18, v13, v10

    add-long v3, v3, v18

    move v10, v9

    .line 619
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move v9, v10

    .line 643
    .end local v10    # "index":I
    .restart local v9    # "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 644
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v19

    monitor-enter v19

    .line 646
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 649
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 656
    :cond_4
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    return-void

    .line 624
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_5
    if-ge v10, v11, :cond_6

    .line 627
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    :try_start_2
    aget-wide v3, v13, v10

    .line 628
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-lez v18, :cond_1

    .line 630
    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v3, v3, v18

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;JI)V

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_1

    .line 635
    :cond_6
    if-gez v15, :cond_7

    move v9, v10

    .line 636
    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto/16 :goto_2

    .line 638
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_7
    move v9, v15

    .line 639
    .end local v10    # "index":I
    .restart local v9    # "index":I
    const-wide/16 v3, 0x0

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_1

    .line 644
    .end local v3    # "duration":J
    .end local v5    # "enlargeDuration":I
    .end local v10    # "index":I
    .end local v11    # "len":I
    .end local v13    # "pattern":[J
    .end local v14    # "pid":I
    .end local v15    # "repeat":I
    .end local v17    # "uid":I
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 656
    .restart local v3    # "duration":J
    .restart local v5    # "enlargeDuration":I
    .restart local v9    # "index":I
    .restart local v11    # "len":I
    .restart local v13    # "pattern":[J
    .restart local v14    # "pid":I
    .restart local v15    # "repeat":I
    .restart local v17    # "uid":I
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_8
    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto/16 :goto_2
.end method
