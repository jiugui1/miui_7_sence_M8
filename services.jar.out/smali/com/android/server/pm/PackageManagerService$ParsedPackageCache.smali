.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedPackageCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;
    }
.end annotation


# instance fields
.field private MAX_TIMEOUT_NANOS:J

.field private mArySeparateProcesses:[Ljava/lang/String;

.field private final mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAppPath:Ljava/lang/String;

.field private mDataPreloadAppPath:Ljava/lang/String;

.field private mDefaultParseFlags:I

.field private mExist:Z

.field private mFinished:Z

.field private mSysAppPath:Ljava/lang/String;

.field private mSysFramePath:Ljava/lang/String;

.field private mSysPrivAppPath:Ljava/lang/String;

.field private final mlstApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mlstSkips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15280
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    .line 15291
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    .line 15292
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15294
    const-wide v0, 0x45d964b800L

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    .line 15296
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    .line 15297
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExist:Z

    .line 15470
    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15280
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExist:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15280
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getParseFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "strPkgPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 15428
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 15429
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    .line 15467
    :goto_0
    return v0

    .line 15437
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 15438
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x45

    goto :goto_0

    .line 15445
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 15446
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 15451
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_3

    .line 15452
    const v0, 0x300004

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 15459
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_4

    .line 15460
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    goto :goto_0

    .line 15467
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addSkipPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 15412
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 15413
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15415
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 15418
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    if-eqz v0, :cond_0

    .line 15419
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15420
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15421
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExist:Z

    .line 15424
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 15407
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 15408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    goto :goto_0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 15301
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, "PackageManager"

    const-string v23, "preparsing++"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15303
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .line 15304
    .local v12, "nCores":I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    .line 15305
    const/4 v12, 0x2

    .line 15309
    :cond_1
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "framework"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15310
    .local v20, "sysFrameDir":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "priv-app"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15311
    .local v21, "sysPrivAppDir":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "app"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15312
    .local v19, "sysAppDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "app"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15313
    .local v5, "dataAppDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "preload"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15315
    .local v6, "dataPreloadAppDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    .line 15316
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    .line 15317
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    .line 15318
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    .line 15319
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    .line 15322
    new-instance v3, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$1;-><init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)V

    .line 15327
    .local v3, "apkFilter":Ljava/io/FilenameFilter;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 15328
    .local v11, "lstDir":[Ljava/io/File;
    if-eqz v11, :cond_2

    .line 15329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15331
    :cond_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 15332
    if-eqz v11, :cond_3

    .line 15333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15335
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 15336
    if-eqz v11, :cond_4

    .line 15337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15339
    :cond_4
    invoke-virtual {v5, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 15340
    if-eqz v11, :cond_5

    .line 15341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15343
    :cond_5
    invoke-virtual {v6, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 15344
    if-eqz v11, :cond_6

    .line 15345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15347
    :cond_6
    const/4 v11, 0x0

    .line 15350
    const-string v22, "debug.separate_processes"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 15351
    .local v14, "separateProcesses":Ljava/lang/String;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 15352
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 15353
    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15354
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    .line 15365
    :goto_0
    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 15368
    .local v9, "executor":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v13

    .line 15369
    .local v13, "nTotals":I
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "PackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "preparsing apk:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " core:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15370
    :cond_7
    if-eqz v13, :cond_a

    .line 15371
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_a

    .line 15372
    new-instance v22, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v12, v13}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;-><init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15371
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 15356
    .end local v9    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v10    # "i":I
    .end local v13    # "nTotals":I
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15357
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_0

    .line 15360
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15361
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_0

    .line 15377
    .restart local v9    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v13    # "nTotals":I
    :cond_a
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 15380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 15381
    .local v17, "startNanos":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    .line 15382
    .local v15, "sleepNanos":J
    const/4 v4, 0x0

    .line 15385
    .local v4, "bTimeout":Z
    :cond_b
    :try_start_0
    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v0, v15

    move-object/from16 v2, v22

    invoke-interface {v9, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15389
    :goto_2
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 15402
    :goto_3
    if-nez v4, :cond_f

    const/16 v22, 0x1

    :goto_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    .line 15403
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v22

    if-eqz v22, :cond_c

    const-string v22, "PackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "preparsing--, finished:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15404
    :cond_c
    return-void

    .line 15393
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v7, v22, v17

    .line 15394
    .local v7, "elapsedNanos":J
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-gtz v22, :cond_e

    const-wide/16 v7, 0x0

    .line 15395
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    move-wide/from16 v22, v0

    sub-long v15, v22, v7

    .line 15396
    const-wide/16 v22, 0x0

    cmp-long v22, v15, v22

    if-gtz v22, :cond_b

    .line 15397
    const/4 v4, 0x1

    .line 15398
    goto :goto_3

    .line 15402
    .end local v7    # "elapsedNanos":J
    :cond_f
    const/16 v22, 0x0

    goto :goto_4

    .line 15386
    :catch_0
    move-exception v22

    goto :goto_2
.end method
