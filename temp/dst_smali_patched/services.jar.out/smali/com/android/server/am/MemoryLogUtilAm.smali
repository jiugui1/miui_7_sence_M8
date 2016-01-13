.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x4e20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x6

.field private static final NUM_EXTRAM_MEMINFO:I = 0x9

.field static final PLATFORM_BRCM:I = 0x3

.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryLogUtilAm"

.field static mPlatform:I

.field private static sFreeCma:J

.field private static sIONInUse:J

.field private static sIONTotal:J

.field private static sKGSLAlloc:J

.field private static sKernelStack:J

.field private static sLastTimeDumpLowMemory:J

.field private static sPageTables:J

.field private static sSwapFree:J

.field private static sSwapTotal:J

.field private static sZramInUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native dumpHeader()V
.end method

.method static dumpLRUProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 17
    .param p0, "rec"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const-string v4, "others"

    .local v4, "appType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v1, :cond_5

    const-string v4, "htcApp"

    :cond_0
    :goto_0
    const/4 v12, 0x0

    .local v12, "isBinded":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v12, 0x1

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .local v15, "serviceInfo":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .local v14, "providerInfo":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v2, "service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord;

    .local v16, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v12, :cond_3

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v8, v1, v5

    .local v8, "duration":J
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, " <- "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " For "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v8    # "duration":J
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "providerInfo":Ljava/lang/StringBuilder;
    .end local v15    # "serviceInfo":Ljava/lang/StringBuilder;
    .end local v16    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "MemoryLogUtilAm"

    const-string v2, "Error dumpLowMemoryLog"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .end local v12    # "isBinded":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-eqz v1, :cond_0

    const-string v4, "gmsAPP"

    goto/16 :goto_0

    .restart local v12    # "isBinded":Z
    .restart local v14    # "providerInfo":Ljava/lang/StringBuilder;
    .restart local v15    # "serviceInfo":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderRecord;

    .local v7, "cpRec":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v12, :cond_8

    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_8
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_9

    const-string v1, " <- "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "."

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v7    # "cpRec":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 21
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "current":J
    const/4 v11, 0x1

    .local v11, "forceDump":Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    .local v16, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_2

    .end local v8    # "current":J
    .end local v11    # "forceDump":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_1
    return-void

    .restart local v8    # "current":J
    .restart local v11    # "forceDump":Z
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    .end local v16    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3
    sget-wide v2, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v19, v8, v2

    .local v19, "timeDiff":J
    if-nez v11, :cond_4

    const-wide/16 v2, 0x4e20

    cmp-long v2, v19, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gtz v2, :cond_1

    :cond_4
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const/16 v17, 0x0

    .local v17, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/Vector;

    .end local v17    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .restart local v17    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v2, "MemoryLogUtilAm"

    const-string v3, "LowMemDetail: dump begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const-string v2, "MemoryLogUtilAm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowMemDetail: TOP_APP= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .local v18, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLRUProcess(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .end local v18    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string v2, "/proc"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v15

    .local v15, "pids":[I
    move-object v7, v15

    .local v7, "arr$":[I
    array-length v14, v7

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v14, :cond_8

    aget v1, v7, v13

    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    const-string v3, "natvie"

    const-string v4, "none"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v1    # "id":I
    :cond_8
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()V

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile()V

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVAllocationLog()V

    const-string v2, "MemoryLogUtilAm"

    const-string v3, "LowMemDetail: dump end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v7    # "arr$":[I
    .end local v8    # "current":J
    .end local v11    # "forceDump":Z
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "pids":[I
    .end local v17    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v19    # "timeDiff":J
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "MemoryLogUtilAm"

    const-string v3, "Error while dumping low memory logs."

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static dumpMemInfo()V
    .locals 5

    .prologue
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .local v0, "mMemInfoReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    const-string v1, "MemoryLogUtilAm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Free, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getBuffersSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Buffers, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Shmem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSlabSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Slab, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KernelStack, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB PageTable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKGSLAlloc()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KGSL_ALLOC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONToal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB ION_Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONInUse()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ION_InUse, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFreeCma()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB FreeCma, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapTotal, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapFree, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ZramInUse."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static dumpMemoryLogFromFile()V
    .locals 31

    .prologue
    const/4 v10, 0x0

    .local v10, "input":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .local v13, "line":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "path":Ljava/lang/String;
    sget v23, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const-string v16, "/sys/kernel/debug/nvmap/iovmm/clients"

    :cond_0
    :goto_0
    if-eqz v16, :cond_1

    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "input":Ljava/io/BufferedReader;
    .local v11, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    const-string v24, "MemoryLogUtilAm"

    sget v23, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v23, v13

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v10, v11

    .end local v11    # "input":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error logging memory file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    const-string v16, "/d/ion/iommu"

    :try_start_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1c

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :goto_5
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_12

    const-string v23, "client              pid"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_f

    const-string v23, "client          creator"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_f

    const-string v23, "\\s+"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, "split":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, "sb":Ljava/lang/StringBuilder;
    const/16 v23, 0x1

    aget-object v23, v21, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v24, v21, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    const/16 v23, 0x3

    aget-object v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "split":[Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v10, v11

    .end local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :goto_6
    :try_start_6
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error logging memory file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_7
    const-string v16, "/d/ion/heaps/system"

    :try_start_8
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1a

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .local v19, "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :goto_8
    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    const-string v23, "\\s+"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "split":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .local v22, "trim":Ljava/lang/String;
    const-string v23, "client              pid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "total orphaned"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "deferred free"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    :cond_4
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ion-heaps : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    .end local v21    # "split":[Ljava/lang/String;
    .end local v22    # "trim":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v10, v11

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error logging memory file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v10, :cond_5

    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_a
    return-void

    :cond_6
    sget v23, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const-string v16, "/d/ion/ion-system-extra"

    goto/16 :goto_0

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :cond_7
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ion-extra : "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v23

    goto/16 :goto_2

    :cond_8
    if-eqz v11, :cond_9

    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_9
    :goto_b
    move-object v10, v11

    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    :catchall_0
    move-exception v23

    :goto_c
    if-eqz v10, :cond_a

    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_a
    :goto_d
    throw v23

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v11    # "input":Ljava/io/BufferedReader;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "split":[Ljava/lang/String;
    :cond_b
    :try_start_f
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/16 v25, 0x3

    aget-object v25, v21, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    add-long v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "split":[Ljava/lang/String;
    :catchall_1
    move-exception v23

    move-object v10, v11

    .end local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :goto_e
    if-eqz v10, :cond_c

    :try_start_10
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_c
    :goto_f
    throw v23

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v11    # "input":Ljava/io/BufferedReader;
    .restart local v21    # "split":[Ljava/lang/String;
    :cond_d
    :try_start_11
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    const/16 v23, 0x1

    aget-object v23, v21, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v24, v21, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    new-instance v23, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v24, 0x1

    aget-object v24, v21, v24

    const/16 v25, 0x2

    aget-object v25, v21, v25

    const/16 v26, 0x3

    aget-object v26, v21, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-direct/range {v23 .. v27}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v24, v0

    const/16 v26, 0x3

    aget-object v26, v21, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "split":[Ljava/lang/String;
    :cond_f
    const-string v23, "Total bytes currently"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "key":Ljava/lang/String;
    const-string v23, "_"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "client":Ljava/lang/String;
    add-int/lit8 v23, v8, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "pid":Ljava/lang/String;
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iommu : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%1$16s %2$16s %3$16d"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    const/16 v27, 0x1

    aput-object v17, v26, v27

    const/16 v27, 0x2

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .end local v4    # "client":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "pid":Ljava/lang/String;
    :cond_10
    const-string v23, "client          creator"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_11

    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iommu : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "size (hex)"

    const-string v26, "      size"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iommu : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "key":Ljava/lang/String;
    const-string v24, "MemoryLogUtilAm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iommu : "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%1$16s %2$16s %3$14d"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v27, v28

    const/16 v28, 0x1

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v27, v28

    const/16 v28, 0x2

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_11

    .end local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v12    # "key":Ljava/lang/String;
    .restart local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v21    # "split":[Ljava/lang/String;
    .restart local v22    # "trim":Ljava/lang/String;
    :cond_13
    const/16 v23, 0x3

    :try_start_12
    aget-object v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "memory":J
    new-instance v18, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v23, 0x1

    aget-object v23, v21, v23

    const/16 v24, 0x2

    aget-object v24, v21, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .local v18, "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    add-long v23, v23, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_8

    .end local v14    # "memory":J
    .end local v18    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v21    # "split":[Ljava/lang/String;
    .end local v22    # "trim":Ljava/lang/String;
    :catchall_2
    move-exception v23

    move-object v10, v11

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :goto_12
    if-eqz v10, :cond_14

    :try_start_13
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :cond_14
    :goto_13
    throw v23

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "memory":J
    .restart local v18    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v21    # "split":[Ljava/lang/String;
    .restart local v22    # "trim":Ljava/lang/String;
    :cond_15
    :try_start_14
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .end local v14    # "memory":J
    .end local v18    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v22    # "trim":Ljava/lang/String;
    :cond_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .local v12, "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v23, "MemoryLogUtilAm"

    const-string v24, "ion-heaps : %1$16s  %2$15d  %3$15d"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v12}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v12}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v12    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_17
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_18
    const-string v23, "MemoryLogUtilAm"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ion-heaps : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_8

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v21    # "split":[Ljava/lang/String;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v24

    goto/16 :goto_d

    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v23

    goto/16 :goto_4

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v24

    goto/16 :goto_f

    :catch_6
    move-exception v23

    goto/16 :goto_7

    :catch_7
    move-exception v24

    goto/16 :goto_13

    :catch_8
    move-exception v23

    goto/16 :goto_a

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    .restart local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    :cond_19
    move-object v10, v11

    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v19    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :cond_1a
    if-eqz v10, :cond_5

    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_a

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :cond_1b
    move-object v10, v11

    .end local v3    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :cond_1c
    if-eqz v10, :cond_2

    :try_start_16
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_7

    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :catch_9
    move-exception v23

    goto/16 :goto_b

    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v23

    goto/16 :goto_12

    :catch_a
    move-exception v5

    goto/16 :goto_9

    :catchall_4
    move-exception v23

    goto/16 :goto_e

    :catch_b
    move-exception v5

    goto/16 :goto_6

    .end local v10    # "input":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v23

    move-object v10, v11

    .end local v11    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_c

    :catch_c
    move-exception v5

    goto/16 :goto_3
.end method

.method static dumpNVAllocationLog()V
    .locals 22

    .prologue
    sget v19, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .local v2, "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v5, "input":Ljava/io/BufferedReader;
    .local v7, "isFirst":Z
    .local v10, "line":Ljava/lang/String;
    .local v12, "nvmapFile":Ljava/io/File;
    .local v13, "pid":I
    .local v14, "processName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .end local v2    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v7    # "isFirst":Z
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "nvmapFile":Ljava/io/File;
    .end local v13    # "pid":I
    .end local v14    # "processName":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/io/File;

    const-string v19, "/sys/kernel/debug/nvmap/iovmm/allocations"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v12    # "nvmapFile":Ljava/io/File;
    const/4 v5, 0x0

    .restart local v5    # "input":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .restart local v10    # "line":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x1

    .restart local v7    # "isFirst":Z
    const/4 v13, 0x0

    .restart local v13    # "pid":I
    const-string v14, ""

    .restart local v14    # "processName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v5    # "input":Ljava/io/BufferedReader;
    .local v6, "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\\s+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "strs":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    const/16 v19, 0x2

    aget-object v19, v15, v19

    const-string v20, "PID"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x0

    aget-object v19, v15, v19

    const-string v20, "total"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v20, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v5, v6

    .end local v6    # "input":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error logging mvmap allocation file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v19

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v15    # "strs":[Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Total: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15    # "strs":[Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v5, v6

    .end local v6    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "strs":[Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    :try_start_6
    aget-object v19, v15, v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    if-nez v7, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v20, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v5, v6

    .end local v6    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_7
    throw v19

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "strs":[Ljava/lang/String;
    :cond_8
    :try_start_8
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/16 v19, 0x1

    aget-object v14, v15, v19

    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x3

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "value":I
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, processName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", total: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v17    # "value":I
    :cond_9
    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .local v17, "value":J
    const-string v16, ""

    .local v16, "typeKey":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "length":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    const-string v16, "0"

    :goto_8
    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .local v11, "mapValue":Ljava/lang/Long;
    if-nez v11, :cond_b

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v11    # "mapValue":Ljava/lang/Long;
    :cond_a
    const/16 v19, 0x2

    aget-object v19, v15, v19

    const/16 v20, 0x0

    add-int/lit8 v21, v9, -0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_8

    .restart local v11    # "mapValue":Ljava/lang/Long;
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .end local v6    # "input":Ljava/io/BufferedReader;
    .end local v9    # "length":I
    .end local v11    # "mapValue":Ljava/lang/Long;
    .end local v15    # "strs":[Ljava/lang/String;
    .end local v16    # "typeKey":Ljava/lang/String;
    .end local v17    # "value":J
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :catch_2
    move-exception v20

    goto/16 :goto_7

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .end local v6    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    goto/16 :goto_6

    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method public static final native dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static getFreeCma()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    return-wide v0
.end method

.method private static getIONInUse()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    return-wide v0
.end method

.method private static getIONToal()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    return-wide v0
.end method

.method private static getKGSLAlloc()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method private static getSwapFree()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "split":[Ljava/lang/String;
    const-wide/16 v1, 0x0

    .local v1, "value":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getZramInUse()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "hasZramInUse":Z
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_13

    const/16 v6, 0x9

    if-ge v2, v6, :cond_13

    const-string v6, "KernelStack:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "PageTables:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kgslalloc:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kgsl_alloc:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v6, "IonTotal:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ION_ALLOC:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ioninuse:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const-string v6, "FreeCma:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CmaFree:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v6, "SwapTotal:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v6, "SwapFree:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v6, "ZramAlloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    :goto_1
    if-eqz v0, :cond_c

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    :goto_2
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_d
    :goto_3
    if-nez v4, :cond_14

    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/block/zram0/mem_used_total"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    .end local v3    # "file":Ljava/io/File;
    :goto_5
    if-eqz v0, :cond_e

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_e
    :goto_6
    return-void

    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_f
    :goto_8
    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_9
    if-eqz v0, :cond_10

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_10
    :goto_a
    throw v6

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_6

    :catch_4
    move-exception v7

    goto :goto_a

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_11
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_12
    if-eqz v0, :cond_e

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .end local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v7

    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_13
    if-eqz v1, :cond_d

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    move-exception v6

    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_2
    move-exception v6

    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_14
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method
