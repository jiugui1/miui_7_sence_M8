.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private final GTransportName:Ljava/lang/String;

.field private mAgentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

.field private mFilterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mHtcMergedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedFullBackup:Z

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mOriginalPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestorePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStateName:Ljava/io/File;

.field private mStartRealtime:J

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .locals 6
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "restoreSetToken"    # J
    .param p7, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p8, "pmToken"    # I
    .param p9, "needFullBackup"    # Z
    .param p10, "filterSet"    # [Ljava/lang/String;

    .prologue
    .line 4894
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4879
    const-string v4, "com.google.android.backup.BackupTransportService"

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->GTransportName:Ljava/lang/String;

    .line 4895
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 4896
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    .line 4897
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4899
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4900
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 4901
    iput-wide p5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    .line 4902
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 4903
    iput p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    .line 4904
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    .line 4906
    if-eqz p10, :cond_0

    .line 4907
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4908
    move-object/from16 v0, p10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 4909
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4912
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4915
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    .line 4916
    return-void
.end method

.method private addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5696
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5702
    :cond_0
    return-void

    .line 5697
    :cond_1
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5698
    .local v4, "token":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 5699
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5700
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createHTCFilterSet(Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5654
    .local p1, "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5655
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    if-eqz v6, :cond_5

    .line 5657
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5658
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5659
    .local v1, "hostPkg":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5660
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {p0, v4, v6}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5663
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5664
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Merged)Add to HTC filterSet, oldPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5666
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5668
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5669
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add child to HTC filterSet, newPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5670
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5674
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "hostPkg":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 5676
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5677
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5678
    .restart local v1    # "hostPkg":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5679
    .restart local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v4, v5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5682
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5683
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Renamed)Add to HTC filterSet, oldPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    :cond_7
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5685
    :cond_8
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5687
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5688
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add child to HTC filterSet, newPkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    :cond_9
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5694
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "hostPkg":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    return-void
.end method

.method private initMergedRenamedPackages()V
    .locals 22

    .prologue
    .line 5578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_1

    .line 5579
    :cond_0
    const-string v19, "BackupManagerService"

    const-string v20, "No AgentPackages."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    :goto_0
    return-void

    .line 5583
    :cond_1
    const-string v15, "merged"

    .line 5585
    .local v15, "prefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5586
    .local v9, "merged_size":I
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    .line 5587
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    .line 5588
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 5589
    .local v18, "tmpList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 5590
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 5592
    .local v10, "metaData":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    const-string v19, "renamed"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 5596
    const-string v19, "merged"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 5598
    :goto_2
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 5599
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Merged package:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", size:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    :cond_3
    if-lez v9, :cond_6

    .line 5601
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 5602
    .local v14, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_3
    if-gt v5, v9, :cond_5

    .line 5603
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5604
    .local v8, "mergedPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5602
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5596
    .end local v5    # "i":I
    .end local v8    # "mergedPkg":Ljava/lang/String;
    .end local v14    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 5606
    .restart local v5    # "i":I
    .restart local v14    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5611
    .end local v5    # "i":I
    .end local v14    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v19, "renamed"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "renamed"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5612
    .local v16, "renamed":Ljava/lang/String;
    :goto_4
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Renamed package:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    :cond_7
    if-eqz v16, :cond_2

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 5614
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5615
    .local v17, "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5616
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5617
    .local v11, "p":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5611
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "p":Ljava/lang/String;
    .end local v16    # "renamed":Ljava/lang/String;
    .end local v17    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 5619
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v16    # "renamed":Ljava/lang/String;
    .restart local v17    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 5625
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "metaData":Landroid/os/Bundle;
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "renamed":Ljava/lang/String;
    .end local v17    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/4 v4, 0x0

    .line 5626
    .local v4, "hit":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5627
    .local v12, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 5630
    .local v11, "p":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 5631
    const/4 v4, 0x1

    .line 5635
    .end local v11    # "p":Landroid/content/pm/PackageInfo;
    :cond_d
    if-eqz v4, :cond_e

    .line 5636
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skip! Duplicate package:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5639
    :cond_e
    new-instance v13, Landroid/content/pm/PackageInfo;

    invoke-direct {v13}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5640
    .restart local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iput-object v12, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5646
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager;->getHtcSignatures()Ljava/util/List;

    move-result-object v20

    # setter for: Lcom/android/server/BackupManagerService;->mHTCSignatures:Ljava/util/List;
    invoke-static/range {v19 .. v20}, Lcom/android/server/BackupManagerService;->access$2702(Lcom/android/server/BackupManagerService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5647
    :catch_0
    move-exception v3

    .line 5648
    .local v3, "e":Ljava/lang/Exception;
    const-string v19, "BackupManagerService"

    const-string v20, "Failed to collect HTC signatures."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private isHTCApp([Landroid/content/pm/Signature;)Z
    .locals 7
    .param p1, "storedSigs"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v5, 0x0

    .line 5719
    if-nez p1, :cond_1

    .line 5730
    :cond_0
    :goto_0
    return v5

    .line 5720
    :cond_1
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mHTCSignatures:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$2700(Lcom/android/server/BackupManagerService;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5721
    array-length v0, p1

    .line 5723
    .local v0, "SIZE":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 5724
    aget-object v6, p1, v1

    if-eqz v6, :cond_3

    aget-object v6, p1, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 5725
    .local v4, "stored_sig":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mHTCSignatures:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$2700(Lcom/android/server/BackupManagerService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5726
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .line 5724
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sig":Ljava/lang/String;
    .end local v4    # "stored_sig":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_2

    .line 5723
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "stored_sig":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5716
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMergedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5704
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5705
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 5707
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRenamedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5710
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5711
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 5713
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeXml(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5734
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5735
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5736
    .local v3, "str":Ljava/io/BufferedOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 5737
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5738
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5739
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5741
    const/4 v4, 0x0

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5742
    const/4 v4, 0x0

    const-string v5, "oldPkgName"

    invoke-interface {v2, v4, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5743
    const/4 v4, 0x0

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5745
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5746
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 5747
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 5748
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5752
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 5749
    :catch_0
    move-exception v0

    .line 5750
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to write old package to xml."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method agentCleanup()V
    .locals 3

    .prologue
    .line 5492
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5494
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5495
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 5510
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5514
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 5517
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5525
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 5527
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    :cond_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5540
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5541
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5542
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5543
    monitor-exit v1

    .line 5544
    return-void

    .line 5543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 5533
    :catch_0
    move-exception v0

    goto :goto_2

    .line 5494
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 5493
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method agentErrorCleanup()V
    .locals 2

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 5488
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 5489
    return-void
.end method

.method beginRestore()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 4964
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4967
    iput v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4971
    const/16 v8, 0xb0e

    const/4 v9, 0x2

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v11, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4975
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    .line 4976
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4977
    .local v5, "omPackage":Landroid/content/pm/PackageInfo;
    const-string v8, "@pm@"

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4978
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4981
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const/16 v9, 0xc0

    invoke-virtual {v8, v9}, Lcom/android/server/BackupManagerService;->allAgentPackages(I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    .line 4985
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_7

    .line 4987
    const-string v8, "com.google.android.backup.BackupTransportService"

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 4989
    .local v4, "isGTransport":Z
    if-nez v4, :cond_0

    .line 4991
    invoke-direct {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initMergedRenamedPackages()V

    .line 4997
    :cond_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    if-eqz v8, :cond_4

    .line 4999
    new-instance v1, Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5000
    .local v1, "htcFilterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->createHTCFilterSet(Ljava/util/HashSet;)V

    .line 5003
    :cond_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 5004
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 5006
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5007
    if-nez v4, :cond_3

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5008
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5009
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip filter, this is HTC merged/renamed pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5013
    :cond_3
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5042
    .end local v1    # "htcFilterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "isGTransport":Z
    .end local v5    # "omPackage":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 5044
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Error communicating with transport for restore"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5051
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 5017
    .restart local v4    # "isGTransport":Z
    .restart local v5    # "omPackage":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5018
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transport:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Post-filter package set for restore: size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 5021
    .local v6, "p":Landroid/content/pm/PackageInfo;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5025
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "p":Landroid/content/pm/PackageInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5032
    .end local v4    # "isGTransport":Z
    :goto_4
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_6

    .line 5036
    :try_start_2
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5049
    :cond_6
    :goto_5
    iput v13, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5050
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_2

    .line 5028
    :cond_7
    :try_start_3
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5037
    :catch_1
    move-exception v0

    .line 5038
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Restore observer died at restoreStarting"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5
.end method

.method downloadRestoreData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xb0f

    const/4 v6, 0x0

    .line 5062
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5064
    iget v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    if-eqz v1, :cond_0

    .line 5065
    const-string v1, "BackupManagerService"

    const-string v2, "Error starting restore operation"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    const/16 v1, 0xb0f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5067
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5088
    :goto_0
    return-void

    .line 5070
    :catch_0
    move-exception v0

    .line 5071
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error communicating with transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5073
    iput v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5074
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 5077
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5078
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error communicating with transport for restore with RuntimeException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5080
    iput v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5081
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 5087
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 4921
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Executing restore step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    :cond_0
    sget-object v1, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4958
    :goto_0
    return-void

    .line 4924
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->beginRestore()V

    goto :goto_0

    .line 4928
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->downloadRestoreData()V

    goto :goto_0

    .line 4932
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restorePmMetadata()V

    goto :goto_0

    .line 4936
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restoreNextAgent()V

    goto :goto_0

    .line 4940
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    if-nez v1, :cond_1

    .line 4941
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->finalizeRestore()V

    .line 4942
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget v3, v1, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    .line 4944
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRestoreRunning-- , mRestoreRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget v4, v4, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4949
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    .line 4952
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/BackupManagerService;->unregisterExternalTransport(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4953
    :catch_0
    move-exception v0

    .line 4954
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "catch RemoteException when get DirName at restore FINAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4945
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4947
    :cond_1
    const-string v1, "BackupManagerService"

    const-string v2, "Duplicate finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/BackupManagerService$RestoreState;

    .prologue
    .line 5569
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " => executing next step on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    :cond_0
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 5572
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5573
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5574
    return-void
.end method

.method finalizeRestore()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 5358
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishing restore mObserver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5366
    :goto_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_1

    .line 5368
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5377
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    if-eqz v1, :cond_2

    .line 5378
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 5379
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iput-wide v2, v1, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 5380
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 5385
    :cond_2
    iget v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    if-lez v1, :cond_4

    .line 5386
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishing PM token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5393
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 5394
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5398
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5400
    return-void

    .line 5362
    :catch_0
    move-exception v0

    .line 5363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error finishing restore"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5369
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5370
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5389
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 5560
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5564
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 5565
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5566
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;ZLjava/lang/String;)V
    .locals 9
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "needFullBackup"    # Z
    .param p5, "oldPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 5408
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 5409
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5411
    .local v7, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateOneRestore packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 5415
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    .line 5416
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 5418
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 5421
    .local v4, "token":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 5426
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5427
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SElinux restorecon failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    :cond_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5433
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting restore data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5440
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 5442
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5481
    :goto_0
    return-void

    .line 5447
    :cond_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5448
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 5451
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 5458
    if-eqz p5, :cond_4

    .line 5459
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateOneResotre, oldPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :cond_3
    invoke-direct {p0, p5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->writeXml(Ljava/lang/String;)V

    .line 5462
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x38000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 5469
    :cond_4
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 5470
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p3

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5471
    :catch_0
    move-exception v6

    .line 5472
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call app for restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5473
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v8

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5474
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 5479
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0
.end method

.method public operationComplete()V
    .locals 5

    .prologue
    .line 5549
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    .line 5550
    .local v0, "size":I
    const/16 v1, 0xb11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5552
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 5554
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5555
    return-void
.end method

.method restoreNextAgent()V
    .locals 29

    .prologue
    .line 5158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v22

    .line 5160
    .local v22, "packageName":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 5161
    const-string v2, "BackupManagerService"

    const-string v4, "Error getting next restore package"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    const/16 v2, 0xb0f

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5163
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5355
    .end local v22    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 5165
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5166
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BackupManagerService"

    const-string v4, "No next package, finishing restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v21, v0

    .line 5168
    .local v21, "millis":I
    const/16 v2, 0xb12

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v6

    const/4 v6, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5169
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5350
    .end local v21    # "millis":I
    .end local v22    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 5351
    .local v8, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v4, "Unable to fetch restore data from transport"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5353
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 5173
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 5175
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    move-object/from16 v0, v22

    invoke-interface {v2, v4, v0}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5182
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v20

    .line 5183
    .local v20, "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v20, :cond_4

    .line 5184
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing metadata for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Package metadata missing"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5187
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5176
    .end local v20    # "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_1
    move-exception v8

    .line 5177
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v4, "Restore observer died in onUpdate"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 5192
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v20    # "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :cond_4
    const/4 v3, 0x0

    .line 5193
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x0

    .line 5194
    .local v7, "oldPkgName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5197
    .local v16, "isHTCApp":Z
    const/16 v12, 0x40

    .line 5198
    .local v12, "flags":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 5280
    :goto_2
    :try_start_5
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, ""

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5282
    :cond_5
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5283
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data exists for package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " but app has no agent; skipping"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    :cond_6
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Package has no agent"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5288
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5199
    :catch_2
    move-exception v8

    .line 5201
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to find HTC merged/renamed case, pkg:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isHTCApp([Landroid/content/pm/Signature;)Z

    move-result v16

    .line 5203
    const/16 v17, 0x0

    .local v17, "isMerged":Z
    const/16 v18, 0x0

    .line 5204
    .local v18, "isRenamed":Z
    if-eqz v16, :cond_b

    .line 5205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isMergedPackage(Ljava/lang/String;)Z

    move-result v17

    .line 5208
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->isRenamedPackage(Ljava/lang/String;)Z

    move-result v18

    .line 5214
    :cond_8
    :goto_4
    if-nez v17, :cond_c

    if-nez v18, :cond_c

    .line 5215
    const-string v2, "BackupManagerService"

    const-string v4, "Invalid package restoring data"

    invoke-static {v2, v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5216
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5218
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5205
    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    .line 5208
    :cond_a
    const/16 v18, 0x0

    goto :goto_4

    .line 5211
    :cond_b
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5212
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not HTC App, package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5221
    :cond_c
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5222
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC app "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " restoring data."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :cond_d
    const/4 v13, 0x0

    .line 5225
    .local v13, "hit":Z
    if-eqz v17, :cond_12

    .line 5226
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5227
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is merged case, try to find the host for pkg:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5230
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 5231
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5233
    .local v23, "pkg":Ljava/lang/String;
    :try_start_6
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5235
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find the merged package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", host is:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 5236
    const/4 v13, 0x1

    .line 5237
    move-object/from16 v7, v22

    .line 5244
    .end local v23    # "pkg":Ljava/lang/String;
    :cond_11
    if-eqz v13, :cond_f

    .line 5248
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_12
    if-nez v13, :cond_16

    if-eqz v18, :cond_16

    .line 5249
    :try_start_7
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5250
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is renamed case, try to find the new pacakge name for pkg:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_14
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5253
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 5254
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 5256
    .local v24, "renamedPkg":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5258
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find the renamed package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", new packageName is :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5259
    const/4 v13, 0x1

    goto :goto_6

    .line 5240
    .end local v24    # "renamedPkg":Ljava/lang/String;
    .restart local v23    # "pkg":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 5241
    .local v10, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find the merged package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 5262
    .end local v10    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "pkg":Ljava/lang/String;
    .restart local v24    # "renamedPkg":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 5263
    .local v11, "ex2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find the renamed package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 5269
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "ex2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v24    # "renamedPkg":Ljava/lang/String;
    :cond_16
    if-nez v3, :cond_17

    .line 5270
    const-string v2, "BackupManagerService"

    const-string v4, "Invalid HTC package restoring data"

    invoke-static {v2, v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5271
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5273
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5276
    :cond_17
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 5292
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "hit":Z
    .end local v17    # "isMerged":Z
    .end local v18    # "isRenamed":Z
    :cond_18
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v4, :cond_1a

    .line 5296
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v2, v4

    if-nez v2, :cond_19

    .line 5298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > installed version "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5300
    .local v19, "message":Ljava/lang/String;
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    aput-object v19, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5303
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5306
    .end local v19    # "message":Ljava/lang/String;
    :cond_19
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " > installed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " but restoreAnyVersion"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    :cond_1a
    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    # invokes: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v2, v4, v3}, Lcom/android/server/BackupManagerService;->access$2600(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 5315
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature mismatch restoring "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Signature mismatch"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5318
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5322
    :cond_1b
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " restore version ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is compatible with installed version ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    .line 5331
    .local v5, "agent":Landroid/app/IBackupAgent;
    if-nez v5, :cond_1d

    .line 5332
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find backup agent for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    const/16 v2, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    const-string v25, "Restore agent missing"

    aput-object v25, v4, v6

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5335
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 5342
    :cond_1d
    :try_start_a
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;ZLjava/lang/String;)V

    .line 5344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 5345
    :catch_5
    move-exception v8

    .line 5346
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when attempting restore: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 5348
    sget-object v2, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0
.end method

.method restorePmMetadata()V
    .locals 13

    .prologue
    const/16 v12, 0xb0f

    const/16 v11, 0x14

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v8

    .line 5093
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 5094
    const-string v0, "BackupManagerService"

    const-string v2, "Error getting first restore package"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    const/16 v0, 0xb0f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5096
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5097
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 5154
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5099
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5100
    const-string v0, "BackupManagerService"

    const-string v2, "No restore data available"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    .line 5102
    .local v7, "millis":I
    const/16 v0, 0xb12

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5104
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5143
    .end local v7    # "millis":I
    .end local v8    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 5144
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "BackupManagerService"

    const-string v2, "Error communicating with transport for restore"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v12, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5146
    iput v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5147
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v11, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5148
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 5106
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "@pm@"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5107
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    const/16 v0, 0xb10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "@pm@"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Package manager data missing"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5111
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 5116
    :cond_3
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5117
    .local v1, "omPackage":Landroid/content/pm/PackageInfo;
    const-string v0, "@pm@"

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5118
    new-instance v0, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 5121
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;ZLjava/lang/String;)V

    .line 5134
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5135
    const-string v0, "BackupManagerService"

    const-string v2, "No restore metadata available, so not restoring settings"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    const/16 v0, 0xb10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "@pm@"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Package manager restore metadata missing"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 5139
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5140
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method