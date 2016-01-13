.class Lcom/android/internal/os/ZygoteInit$HtcPreload;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcPreload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;,
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;,
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;
    }
.end annotation


# instance fields
.field private HEAP_DEFAULT_UTILIZATION:F

.field private MAX_PRELOAD_CLASSES_THREAD:I

.field private MAX_TIMEOUT_NANOS:J

.field private MIN_PRELOAD_CLASSES:I

.field private mClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultThreadPriority:I

.field private mPreloadFail:Z

.field private mStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    sget v0, Lcom/android/internal/os/ZygoteInit;->PRELOADCLASSES_THREAD_NUMBER:I

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    .line 922
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MIN_PRELOAD_CLASSES:I

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MIN_PRELOAD_CLASSES:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    .line 925
    const-wide v0, 0xdf8475800L

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    .line 928
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    .line 1154
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/ZygoteInit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/ZygoteInit$1;

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;-><init>()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/os/ZygoteInit$HtcPreload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/ZygoteInit$HtcPreload;
    .param p1, "x1"    # Z

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/os/ZygoteInit$HtcPreload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/ZygoteInit$HtcPreload;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    return-object v0
.end method

.method private dumpPoolCallstack()V
    .locals 13

    .prologue
    .line 1091
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    .line 1092
    .local v6, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-nez v6, :cond_1

    .line 1111
    :cond_0
    return-void

    .line 1093
    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1095
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1096
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    .line 1097
    .local v9, "t":Ljava/lang/Thread;
    if-eqz v9, :cond_2

    .line 1099
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1100
    .local v8, "strName":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1101
    const-string v10, "pool"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 1104
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    if-eqz v7, :cond_2

    .line 1106
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " stack trace:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1108
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private preloadFinish()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1070
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 1071
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->HEAP_DEFAULT_UTILIZATION:F

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1074
    const-string v1, "Zygote"

    const-string v2, "preloadDexCaches++"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 1076
    const-string v1, "Zygote"

    const-string v2, "preloadDexCaches--"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$200(I)V

    .line 1084
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$100(I)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1087
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...preloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private preloadInit()V
    .locals 9

    .prologue
    const/16 v8, 0x270f

    .line 1013
    const-string v6, "Zygote"

    const-string v7, "Preloading..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 1017
    .local v5, "t":Ljava/lang/Thread;
    if-eqz v5, :cond_0

    .line 1018
    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    .line 1019
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 1022
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mStartTime:J

    .line 1026
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    .line 1027
    .local v4, "runtime":Ldalvik/system/VMRuntime;
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->HEAP_DEFAULT_UTILIZATION:F

    .line 1028
    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1031
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "preloaded-classes"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1033
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 1034
    const-string v6, "Zygote"

    const-string v7, "Couldn\'t find preloaded-classes."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1057
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1064
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->access$100(I)V

    .line 1065
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->access$200(I)V

    .line 1066
    return-void

    .line 1037
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x100

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1040
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1042
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1043
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1046
    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1048
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "Zygote"

    const-string v7, "Error reading preloaded-classes."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1051
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
.end method

.method private throwRuntimeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "strDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public preload()V
    .locals 14

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->preloadInit()V

    .line 936
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    add-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 939
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;

    invoke-direct {v12, p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;)V

    invoke-interface {v3, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 942
    iget-object v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 943
    .local v7, "nSize":I
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    mul-int/lit8 v12, v12, 0xa

    if-le v7, v12, :cond_1

    .line 944
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    div-int v5, v7, v12

    .line 945
    .local v5, "nNumber":I
    const/4 v6, 0x0

    .line 946
    .local v6, "nPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    if-ge v4, v12, :cond_2

    .line 948
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    add-int/lit8 v12, v12, -0x1

    if-ne v12, v4, :cond_0

    .line 949
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    sub-int v13, v7, v6

    invoke-direct {v12, p0, v6, v13}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v3, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 953
    :goto_1
    add-int/2addr v6, v5

    .line 946
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 951
    :cond_0
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    invoke-direct {v12, p0, v6, v5}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v3, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 955
    .end local v4    # "i":I
    .end local v5    # "nNumber":I
    .end local v6    # "nPos":I
    :cond_1
    if-lez v7, :cond_2

    .line 957
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13, v7}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v3, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 961
    :cond_2
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;

    invoke-direct {v12, p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;)V

    invoke-interface {v3, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 964
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 967
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 968
    .local v10, "startNanos":J
    iget-wide v8, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    .line 969
    .local v8, "sleepNanos":J
    const/4 v0, 0x0

    .line 972
    .local v0, "bTimeout":Z
    :cond_3
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v8, v9, v12}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_2
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 991
    :goto_3
    iget-boolean v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    if-eqz v12, :cond_4

    .line 992
    const-string v12, "Zygote preload fail"

    invoke-direct {p0, v12}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->throwRuntimeException(Ljava/lang/String;)V

    .line 996
    :cond_4
    if-eqz v0, :cond_5

    .line 998
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->dumpPoolCallstack()V

    .line 1001
    const-string v12, "Zygote preload timeout"

    invoke-direct {p0, v12}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->throwRuntimeException(Ljava/lang/String;)V

    .line 1005
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->preloadFinish()V

    .line 1006
    return-void

    .line 980
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v1, v12, v10

    .line 981
    .local v1, "elapsedNanos":J
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-gtz v12, :cond_7

    const-wide/16 v1, 0x0

    .line 982
    :cond_7
    iget-wide v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    sub-long v8, v12, v1

    .line 983
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_3

    .line 984
    const/4 v0, 0x1

    .line 985
    goto :goto_3

    .line 973
    .end local v1    # "elapsedNanos":J
    :catch_0
    move-exception v12

    goto :goto_2
.end method
