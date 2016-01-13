.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockDetector"
.end annotation


# instance fields
.field private mBlackList:Lorg/w3c/dom/Element;

.field private mConfig:Lorg/w3c/dom/Document;

.field private mDetectPeriod:J

.field private mSleepTimeToMeatureCpu:J

.field private mWhiteList:Lorg/w3c/dom/Element;

.field private maxWakeLockDuration:J

.field private minCPUusage:F

.field private minNetwork:J

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 17

    .prologue
    .line 163
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 160
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 161
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 164
    const-wide/32 v11, 0x493e0

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    .line 165
    const-wide/32 v11, 0x36ee80

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    .line 166
    const-wide/32 v11, 0x36ee80

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    .line 167
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    .line 168
    const-wide/16 v11, 0x2800

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    mul-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-nez v11, :cond_1

    .line 172
    const-string v7, "/etc/wld_config.xml"

    .line 173
    .local v7, "file_path":Ljava/lang/String;
    const-string v5, "/data/wld_config.xml"

    .line 176
    .local v5, "dest_path":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v10, "source":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v8, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    .local v9, "output":Ljava/io/OutputStream;
    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 182
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 184
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytes_read":I
    if-lez v3, :cond_2

    .line 185
    const/4 v11, 0x0

    invoke-virtual {v9, v2, v11, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v2    # "buf":[B
    .end local v3    # "bytes_read":I
    .end local v4    # "dest":Ljava/io/File;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "source":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/Exception;
    const-string v11, "HtcWLD"

    const-string v12, "[Warning] Fail to copy configuration file from /etc to /data."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    .line 197
    .end local v5    # "dest_path":Ljava/lang/String;
    .end local v7    # "file_path":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    .line 198
    return-void

    .line 187
    .restart local v2    # "buf":[B
    .restart local v3    # "bytes_read":I
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v5    # "dest_path":Ljava/lang/String;
    .restart local v7    # "file_path":Ljava/lang/String;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "source":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkIfInBlackList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z
    .locals 6
    .param p1, "wl"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .prologue
    .line 496
    const/4 v3, 0x0

    .line 498
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 500
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v5, "enable"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 504
    .local v2, "items":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 506
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 507
    .local v1, "item":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    const/4 v3, 0x1

    .line 520
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_0
    return v3

    .line 504
    .restart local v0    # "idx":I
    .restart local v1    # "item":Lorg/w3c/dom/Element;
    .restart local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z
    .locals 6
    .param p1, "wl"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .prologue
    .line 467
    const/4 v3, 0x0

    .line 469
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 471
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "enable"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 475
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 476
    .local v2, "items":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 478
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 479
    .local v1, "item":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const/4 v3, 0x1

    .line 492
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return v3

    .line 476
    .restart local v0    # "idx":I
    .restart local v1    # "item":Lorg/w3c/dom/Element;
    .restart local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkIfSkipAbnormalWakeLock(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;Ljava/lang/String;FJ)Z
    .locals 9
    .param p1, "wl"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .param p2, "proc_name"    # Ljava/lang/String;
    .param p3, "proc_cpu"    # F
    .param p4, "throughput"    # J

    .prologue
    .line 445
    const/4 v4, 0x0

    .line 446
    .local v4, "result":Z
    iget-object v2, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    .line 447
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    .line 448
    .local v3, "pkg_name":Ljava/lang/String;
    const-string v0, "            "

    .line 449
    .local v0, "indent":Ljava/lang/String;
    const-string v1, "com.htc"

    .line 451
    .local v1, "keyword":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    :cond_0
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Internal Abnormal WL founded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v4, 0x1

    .line 460
    :goto_0
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CPU usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Throughput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v4

    .line 454
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInBlackList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL skipped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 458
    :cond_2
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL founded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "ele_name"    # Ljava/lang/String;
    .param p2, "tag_name"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v3, 0x0

    .line 527
    .local v3, "result":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_0

    .line 529
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 530
    .local v2, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 532
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 533
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    move-object v3, v0

    .line 540
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "idx":I
    .end local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_0
    return-object v3

    .line 530
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    .restart local v1    # "idx":I
    .restart local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private impCode2Str(I)Ljava/lang/String;
    .locals 1
    .param p1, "importance_code"    # I

    .prologue
    .line 545
    const-string v0, ""

    .line 546
    .local v0, "result":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 557
    :goto_0
    return-object v0

    .line 548
    :sswitch_0
    const-string v0, "persistent"

    goto :goto_0

    .line 549
    :sswitch_1
    const-string v0, "foreground"

    goto :goto_0

    .line 550
    :sswitch_2
    const-string v0, "visible"

    goto :goto_0

    .line 551
    :sswitch_3
    const-string v0, "perceptible"

    goto :goto_0

    .line 552
    :sswitch_4
    const-string v0, "cant_save_state"

    goto :goto_0

    .line 553
    :sswitch_5
    const-string v0, "service"

    goto :goto_0

    .line 554
    :sswitch_6
    const-string v0, "background"

    goto :goto_0

    .line 555
    :sswitch_7
    const-string v0, "empty"

    goto :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0x82 -> :sswitch_3
        0xaa -> :sswitch_4
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_5
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public loadConfiguration()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 384
    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 385
    const-string v5, "WhiteList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 386
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_0

    .line 387
    const-string v5, "HtcWLD"

    const-string v6, "[Warning] White list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 390
    const-string v5, "BlackList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 391
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_1

    .line 392
    const-string v5, "HtcWLD"

    const-string v6, "[Warning] Black list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    const-string v5, "Setting"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 397
    .local v4, "setting":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_4

    .line 399
    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 400
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 402
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 403
    .local v2, "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_2

    .line 405
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DetectPeriod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 406
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    .line 400
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_3
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SleepTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    goto :goto_1

    .line 415
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v5, "HtcWLD"

    const-string v6, "[Warning] Setting from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_5
    const-string v5, "Criteria"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 418
    .local v0, "criteria":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_9

    .line 420
    const-string v5, "item"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 421
    .restart local v3    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .restart local v1    # "idx":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 423
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 424
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_6

    .line 426
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HeldTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 427
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    .line 421
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    :cond_7
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CpuUsage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 429
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    goto :goto_3

    .line 430
    :cond_8
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Throughput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    goto :goto_3

    .line 438
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_9
    const-string v5, "HtcWLD"

    const-string v6, "[Warning] Criteria from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_a
    const-string v5, "HtcWLD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Configuration] DetectPeriod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SleepTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HeldTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CpuUsage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Throughput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method public loadXmlDocument(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 372
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 373
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 374
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 375
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcWLD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Warning] Fail to open file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 49

    .prologue
    .line 202
    const-string v5, "HtcWLD"

    const-string v11, "<< Wake Lock Detector >>"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v44

    .line 206
    .local v44, "run_procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$100(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-string v5, "HtcWLD"

    const-string v11, "    Screen on, do nothing"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v5, "HtcWLD"

    const-string v11, " "

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    return-void

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    const-string v5, "HtcWLD"

    const-string v11, "    Audio is active, do nothing"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v5, "HtcWLD"

    const-string v11, " "

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v35, "mTwoHourWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v46

    monitor-enter v46

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 217
    .local v40, "numWakeLocks":I
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    Currently "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Wake Locks:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-lez v40, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .local v45, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    .line 225
    .local v38, "now":J
    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mAcquiredTime:J

    move-wide/from16 v25, v0

    .line 226
    .local v25, "WLacquiredTime":J
    sub-long v27, v38, v25

    .line 227
    .local v27, "WLheldTime":J
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    wl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v45

    iget-object v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [pkg_name]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v45

    iget-object v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [held_time]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v27

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [pid]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v45

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [uid]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v45

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    cmp-long v5, v27, v11

    if-ltz v5, :cond_2

    .line 233
    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, v45

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mFlags:I

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v10, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v45

    iget v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v45

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-direct/range {v4 .. v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;-><init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 240
    .local v4, "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 242
    .end local v4    # "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v25    # "WLacquiredTime":J
    .end local v27    # "WLheldTime":J
    .end local v38    # "now":J
    :catch_0
    move-exception v32

    .line 243
    .local v32, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "HtcWLD"

    const-string v11, "Error copy wakelock"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 250
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v40    # "numWakeLocks":I
    .end local v45    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :catchall_0
    move-exception v5

    monitor-exit v46
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 246
    .restart local v33    # "i$":Ljava/util/Iterator;
    .restart local v40    # "numWakeLocks":I
    :cond_3
    :try_start_3
    const-string v5, "HtcWLD"

    const-string v11, " "

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        There are "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " wakelocks held over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v47, v0

    move-wide/from16 v0, v47

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v33    # "i$":Ljava/util/Iterator;
    :cond_4
    monitor-exit v46
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 253
    const-string v5, "HtcWLD"

    const-string v11, "        Check CPU/Network usage of these wakelocks"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_5
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_6
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 260
    .local v6, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    const-string v5, "HtcWLD"

    const-string v11, " "

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        wl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    move/from16 v36, v0

    .line 268
    .local v36, "mpid":I
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    move/from16 v37, v0

    .line 269
    .local v37, "muid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v30

    .line 270
    .local v30, "cpuStat1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move/from16 v0, v36

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v41

    .line 271
    .local v41, "pidStat1":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v21

    .line 272
    .local v21, "TX1":J
    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v15

    .line 273
    .local v15, "RX1":J
    const-string v7, ""

    .line 276
    .local v7, "proc_name":Ljava/lang/String;
    if-eqz v44, :cond_9

    .line 278
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 280
    .local v43, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v43

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v0, v37

    if-ne v5, v0, :cond_8

    .line 282
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            proc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    iget-object v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [pid]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [uid]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [importance]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_8
    move-object/from16 v0, v43

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, v36

    if-ne v5, v0, :cond_7

    .line 287
    move-object/from16 v0, v43

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_3

    .line 292
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v43    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9
    if-eqz v30, :cond_a

    if-nez v41, :cond_b

    .line 293
    :cond_a
    const-string v5, "HtcWLD"

    const-string v11, "            Skip because of empty stat!"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 297
    :cond_b
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            Sleep "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms to get CPU/Net usage"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeatureCpu:J

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 304
    :goto_4
    const-string v5, "HtcWLD"

    const-string v11, "            Sleep end ... Start analyze"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v31

    .line 307
    .local v31, "cpuStat2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move/from16 v0, v36

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v42

    .line 308
    .local v42, "pidStat2":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v23

    .line 309
    .local v23, "TX2":J
    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v17

    .line 311
    .local v17, "RX2":J
    if-eqz v31, :cond_c

    if-nez v42, :cond_d

    .line 312
    :cond_c
    const-string v5, "HtcWLD"

    const-string v11, "            Skip because of empty stat!"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    .end local v17    # "RX2":J
    .end local v23    # "TX2":J
    .end local v31    # "cpuStat2":Ljava/lang/String;
    .end local v42    # "pidStat2":Ljava/lang/String;
    :catch_1
    move-exception v32

    .line 302
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string v5, "HtcWLD"

    const-string v11, "Error Cannot sleep"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 316
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v17    # "RX2":J
    .restart local v23    # "TX2":J
    .restart local v31    # "cpuStat2":Ljava/lang/String;
    .restart local v42    # "pidStat2":Ljava/lang/String;
    :cond_d
    sub-long v19, v23, v21

    .line 317
    .local v19, "TX":J
    sub-long v13, v17, v15

    .line 318
    .local v13, "RX":J
    add-long v9, v19, v13

    .line 319
    .local v9, "net":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v5, v0, v1}, Lcom/android/server/power/HtcWakeLockDetector;->access$700(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v29

    .line 320
    .local v29, "cpu":F
    const/4 v5, 0x0

    cmpl-float v5, v29, v5

    if-ltz v5, :cond_e

    .line 321
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            System CPU usage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    .line 329
    .local v8, "procCpu":F
    const/4 v5, 0x0

    cmpl-float v5, v8, v5

    if-ltz v5, :cond_11

    .line 330
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            Process CPU usage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            TX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   RX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpg-float v5, v8, v5

    if-gtz v5, :cond_f

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v9, v11

    if-gtz v5, :cond_f

    move-object/from16 v5, p0

    .line 335
    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipAbnormalWakeLock(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;Ljava/lang/String;FJ)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v5

    iget-object v11, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 341
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            ==== Abnormal WL released: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ===="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 324
    .end local v8    # "procCpu":F
    :cond_e
    const-string v5, "HtcWLD"

    const-string v11, "            Skip because fail to get cpu usage!"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 346
    .restart local v8    # "procCpu":F
    :cond_f
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            ==== Wakelock is reasonable to hold: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") ===="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_10

    .line 349
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            Because CPU usage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "% > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_10
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v9, v11

    if-lez v5, :cond_6

    .line 353
    const-string v5, "HtcWLD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "            Because Throughput "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 358
    :cond_11
    const-string v5, "HtcWLD"

    const-string v11, "            Skip because fail to get cpu usage of process!"

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 362
    .end local v6    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v7    # "proc_name":Ljava/lang/String;
    .end local v8    # "procCpu":F
    .end local v9    # "net":J
    .end local v13    # "RX":J
    .end local v15    # "RX1":J
    .end local v17    # "RX2":J
    .end local v19    # "TX":J
    .end local v21    # "TX1":J
    .end local v23    # "TX2":J
    .end local v29    # "cpu":F
    .end local v30    # "cpuStat1":Ljava/lang/String;
    .end local v31    # "cpuStat2":Ljava/lang/String;
    .end local v36    # "mpid":I
    .end local v37    # "muid":I
    .end local v41    # "pidStat1":Ljava/lang/String;
    .end local v42    # "pidStat2":Ljava/lang/String;
    :cond_12
    const-string v5, "HtcWLD"

    const-string v11, " "

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
