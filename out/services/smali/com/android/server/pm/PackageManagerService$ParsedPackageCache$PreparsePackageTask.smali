.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparsePackageTask"
.end annotation


# instance fields
.field private mCore:I

.field private mID:I

.field private mTotals:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V
    .locals 0
    .param p2, "nID"    # I
    .param p3, "nCore"    # I
    .param p4, "nTotals"    # I

    .prologue
    .line 15475
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15476
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mID:I

    .line 15477
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mCore:I

    .line 15478
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    .line 15479
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 15484
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mID:I

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExist:Z
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6300(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 15485
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6400(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 15486
    .local v0, "filePkg":Ljava/io/File;
    if-nez v0, :cond_1

    .line 15487
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PackageManager"

    const-string v8, "Preparse error: null filePkg"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15484
    :cond_0
    :goto_1
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mCore:I

    add-int/2addr v1, v7

    goto :goto_0

    .line 15490
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 15491
    .local v5, "strPath":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 15492
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PackageManager"

    const-string v8, "Preparse error: null filePkg path"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15516
    .end local v0    # "filePkg":Ljava/io/File;
    .end local v1    # "i":I
    .end local v5    # "strPath":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 15517
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "PackageManager"

    const-string v8, "Exception in PreparsePackageTask "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15519
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 15495
    .restart local v0    # "filePkg":Ljava/io/File;
    .restart local v1    # "i":I
    .restart local v5    # "strPath":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15497
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15500
    :cond_4
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # invokes: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6600(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I

    move-result v2

    .line 15501
    .local v2, "nFlags":I
    const/4 v7, -0x1

    if-ne v7, v2, :cond_5

    .line 15502
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preparse error: no parse flag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 15506
    :cond_5
    new-instance v4, Landroid/content/pm/PackageParser;

    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 15507
    .local v4, "pp":Landroid/content/pm/PackageParser;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 15508
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v5, v7, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 15509
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_6

    .line 15510
    # getter for: Lcom/android/server/pm/PackageManagerService;->HTCDEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preparse error: parsePackage fail:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 15514
    :cond_6
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
