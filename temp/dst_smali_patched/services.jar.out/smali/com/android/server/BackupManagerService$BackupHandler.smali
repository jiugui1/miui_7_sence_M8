.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In BackupHandler, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mFullBackupRunning:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mFullRestoreRunning:Z

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    .local v46, "temp":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v8, 0x1e

    move-object/from16 v0, v46

    invoke-virtual {v3, v8, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    .local v33, "msgNew":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_EXTERNAL_BACKUP"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v33    # "msgNew":Landroid/os/Message;
    .end local v46    # "temp":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [[Ljava/lang/String;

    move-object/from16 v34, v3

    check-cast v34, [[Ljava/lang/String;

    .local v34, "namearray":[[Ljava/lang/String;
    if-nez v34, :cond_4

    const-string v3, "BackupManagerService"

    const-string v8, "name array from msg is null, do nothing"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    const/4 v3, 0x0

    aget-object v3, v34, v3

    if-nez v3, :cond_5

    const-string v3, "BackupManagerService"

    const-string v8, "can not get transport name from msg"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_5
    const/4 v3, 0x0

    aget-object v3, v34, v3

    const/4 v8, 0x0

    aget-object v47, v3, v8

    .local v47, "transportname":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v35, v34, v3

    .local v35, "packagelist":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v47

    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v0}, Lcom/android/server/BackupManagerService;->access$200(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_6

    const-string v3, "BackupManagerService"

    const-string v8, "External Backup requested but no transport available"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_6
    const/4 v5, 0x0

    .local v5, "transportDirName":Ljava/lang/String;
    :try_start_6
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v5

    :goto_1
    if-nez v5, :cond_7

    const-string v3, "BackupManagerService"

    const-string v8, "MSG_EXTERNAL_BACKUP fail: No transportDirName"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_0
    move-exception v29

    .local v29, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v8, "RemoteException when get transportDirName"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v29    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .local v7, "oldJournal":Ljava/io/File;
    if-nez v35, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v26

    .local v26, "allagent":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v30, v3, -0x1

    .local v30, "i":I
    :goto_2
    if-ltz v30, :cond_c

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/PackageInfo;

    .local v39, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v42, Lcom/android/server/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v39

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-direct {v0, v3, v8}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .local v42, "request":Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v30, v30, -0x1

    goto :goto_2

    .end local v26    # "allagent":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "i":I
    .end local v39    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v42    # "request":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_8
    const/4 v3, 0x0

    aget-object v3, v35, v3

    const-string v8, "customizeForBoomerang"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/BackupManagerService$BackupRequest;

    .local v28, "b":Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v28    # "b":Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v31    # "i$":Ljava/util/Iterator;
    :catchall_4
    move-exception v3

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .restart local v31    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_a
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "BackupManagerService"

    const-string v9, "clearing pending Htc backups"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .end local v31    # "i$":Ljava/util/Iterator;
    :cond_b
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_c
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/BackupManagerService$BackupRequest;

    .local v25, "aaa":Lcom/android/server/BackupManagerService$BackupRequest;
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in Q->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v25    # "aaa":Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v31    # "i$":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v27, v35

    .local v27, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v31, 0x0

    .local v31, "i$":I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    aget-object v36, v27, v31

    .local v36, "packagename":Ljava/lang/String;
    new-instance v42, Lcom/android/server/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v1}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .restart local v42    # "request":Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .end local v27    # "arr$":[Ljava/lang/String;
    .end local v31    # "i$":I
    .end local v32    # "len$":I
    .end local v36    # "packagename":Ljava/lang/String;
    .end local v42    # "request":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v2, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    .local v2, "pbt":Lcom/android/server/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .local v38, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2    # "pbt":Lcom/android/server/BackupManagerService$PerformBackupTask;
    .end local v38    # "pbtMessage":Landroid/os/Message;
    :cond_f
    const-string v3, "BackupManagerService"

    const-string v8, "External Full Backup requested but nothing pending"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->unregisterExternalTransport(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v34    # "namearray":[[Ljava/lang/String;
    .end local v35    # "packagelist":[Ljava/lang/String;
    .end local v47    # "transportname":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v8, v8, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v13, 0x36ee80

    add-long/2addr v8, v13

    iput-wide v8, v3, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v8}, Lcom/android/server/BackupManagerService;->access$200(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .restart local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_10

    const-string v3, "BackupManagerService"

    const-string v8, "Backup requested but no transport available"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v3

    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .restart local v7    # "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/BackupManagerService$BackupRequest;

    .restart local v28    # "b":Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v28    # "b":Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v31    # "i$":Ljava/util/Iterator;
    :catchall_7
    move-exception v3

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v3

    .restart local v31    # "i$":Ljava/util/Iterator;
    :cond_11
    :try_start_10
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "BackupManagerService"

    const-string v9, "clearing pending backups"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .end local v31    # "i$":Ljava/util/Iterator;
    :cond_13
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const/16 v45, 0x1

    .local v45, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    :try_start_11
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    .local v11, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v2

    move-object v10, v4

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    .restart local v2    # "pbt":Lcom/android/server/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .restart local v38    # "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1

    .end local v2    # "pbt":Lcom/android/server/BackupManagerService$PerformBackupTask;
    .end local v11    # "dirName":Ljava/lang/String;
    .end local v38    # "pbtMessage":Landroid/os/Message;
    :goto_7
    if-nez v45, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_1
    move-exception v29

    .restart local v29    # "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v8, "Transport became unavailable attempting backup"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v45, 0x0

    goto :goto_7

    .end local v29    # "e":Landroid/os/RemoteException;
    :cond_14
    const-string v3, "BackupManagerService"

    const-string v8, "Backup requested but nothing pending"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v45, 0x0

    goto :goto_7

    :catchall_8
    move-exception v3

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v3

    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v45    # "staged":Z
    :pswitch_3
    :try_start_14
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .local v12, "task":Lcom/android/server/BackupManagerService$BackupRestoreTask;
    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got next step for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", executing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-interface {v12}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_0

    .end local v12    # "task":Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_2
    move-exception v29

    .local v29, "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid backup task in flight, obj="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v29    # "e":Ljava/lang/ClassCastException;
    :pswitch_4
    :try_start_15
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .restart local v12    # "task":Lcom/android/server/BackupManagerService$BackupRestoreTask;
    invoke-interface {v12}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->operationComplete()V
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_0

    .end local v12    # "task":Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_3
    move-exception v29

    .restart local v29    # "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid completion in flight, obj="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v29    # "e":Ljava/lang/ClassCastException;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mFullRestoreRunning:Z

    if-eqz v3, :cond_17

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    .restart local v46    # "temp":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v8, 0x2

    move-object/from16 v0, v46

    invoke-virtual {v3, v8, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    .restart local v33    # "msgNew":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_RUN_FULL_BACKUP"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v33    # "msgNew":Landroid/os/Message;
    .end local v46    # "temp":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$FullBackupParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    new-instance v12, Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    iget-object v14, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v37

    iget-object v15, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    move/from16 v16, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeObbs:Z

    move/from16 v17, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    move/from16 v18, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    move/from16 v21, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    move/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-direct/range {v12 .. v24}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .local v12, "task":Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v12    # "task":Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .end local v37    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    :catchall_9
    move-exception v3

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v3

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget v9, v3, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRestoreRunning++ , mRestoreRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget v10, v10, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$RestoreParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_RUN_RESTORE observer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v3, :cond_18

    const-string v3, "BackupManagerService"

    const-string v8, "transport is null for restoring, interrupt action."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget v9, v3, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v3, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRestoreRunning-- , mRestoreRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget v10, v10, Lcom/android/server/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v3

    .end local v37    # "params":Lcom/android/server/BackupManagerService$RestoreParams;
    :catchall_b
    move-exception v3

    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw v3

    .restart local v37    # "params":Lcom/android/server/BackupManagerService$RestoreParams;
    :cond_18
    new-instance v12, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    iget-object v14, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v37

    iget-object v15, v0, Lcom/android/server/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move/from16 v20, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move/from16 v21, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .local v12, "task":Lcom/android/server/BackupManagerService$PerformRestoreTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    .local v43, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v12    # "task":Lcom/android/server/BackupManagerService$PerformRestoreTask;
    .end local v37    # "params":Lcom/android/server/BackupManagerService$RestoreParams;
    .end local v43    # "restoreMsg":Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mFullBackupRunning:Z

    if-eqz v3, :cond_1a

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    .restart local v46    # "temp":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v8, 0xa

    move-object/from16 v0, v46

    invoke-virtual {v3, v8, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    .restart local v33    # "msgNew":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_RUN_FULL_RESTORE"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v33    # "msgNew":Landroid/os/Message;
    .end local v46    # "temp":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/BackupManagerService;->mFullRestoreRunning:Z

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$FullRestoreParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    new-instance v12, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    iget-object v14, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v37

    iget-object v15, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .local v12, "task":Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v12    # "task":Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    .end local v37    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    :catchall_c
    move-exception v3

    :try_start_1c
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    throw v3

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$ClearParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v37

    iget-object v10, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_0

    .end local v37    # "params":Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$ClearRetryParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v37    # "params":Lcom/android/server/BackupManagerService$ClearRetryParams;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1d
    new-instance v40, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v40, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    new-instance v3, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v40

    invoke-direct {v3, v8, v0}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_0

    .end local v40    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_d
    move-exception v3

    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    throw v3

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v8, v3}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v13, v14, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw v3

    :cond_1b
    const/4 v3, 0x0

    move v8, v3

    goto :goto_8

    :pswitch_c
    const/16 v44, 0x0

    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_20
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v44

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    monitor-enter v8
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v44

    iput-object v0, v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-nez v44, :cond_1c

    const/16 v3, 0xb0f

    const/4 v8, 0x0

    :try_start_22
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    :cond_1c
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_1d

    :try_start_23
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_9
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    :cond_1d
    :goto_9
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v8, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    :goto_a
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    :try_start_24
    monitor-exit v8
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :try_start_25
    throw v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    :catch_4
    move-exception v29

    .local v29, "e":Ljava/lang/Exception;
    :try_start_26
    const-string v3, "BackupManagerService"

    const-string v8, "Error from transport getting set list"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_1e

    :try_start_27
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8

    :cond_1e
    :goto_b
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v8, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_a

    .end local v29    # "e":Ljava/lang/Exception;
    :catchall_10
    move-exception v3

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v8, :cond_1f

    :try_start_28
    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_5
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    :cond_1f
    :goto_c
    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v8, 0x8

    const-wide/32 v9, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .end local v37    # "params":Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    monitor-enter v8

    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_20

    const-string v3, "BackupManagerService"

    const-string v9, "Restore session timed out; aborting"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, v9, v10, v13}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/BackupManagerService$FullParams;

    .local v37, "params":Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v37, :cond_22

    const-string v3, "BackupManagerService"

    const-string v9, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->delete(I)V

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    if-eqz v3, :cond_21

    :try_start_2b
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    :cond_21
    :goto_d
    :try_start_2c
    monitor-exit v8

    goto/16 :goto_0

    .end local v37    # "params":Lcom/android/server/BackupManagerService$FullParams;
    :catchall_11
    move-exception v3

    monitor-exit v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    throw v3

    :catchall_12
    move-exception v3

    :try_start_2d
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    throw v3

    .restart local v37    # "params":Lcom/android/server/BackupManagerService$FullParams;
    :cond_22
    :try_start_2e
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t find params for token "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    goto :goto_d

    .local v37, "params":Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .restart local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_5
    move-exception v41

    .local v41, "re":Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v41    # "re":Landroid/os/RemoteException;
    :catch_6
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    const-string v8, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v29

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :catch_7
    move-exception v41

    .restart local v41    # "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v8, "Unable to report listing to observer"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v41    # "re":Landroid/os/RemoteException;
    :catch_8
    move-exception v29

    const-string v3, "BackupManagerService"

    const-string v8, "Restore observer threw"

    move-object/from16 v0, v29

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v29    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v41

    .restart local v41    # "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v8, "Unable to report listing to observer"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v41    # "re":Landroid/os/RemoteException;
    :catch_a
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    const-string v8, "Restore observer threw"

    move-object/from16 v0, v29

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .end local v29    # "e":Ljava/lang/Exception;
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    .local v37, "params":Lcom/android/server/BackupManagerService$FullParams;
    :catch_b
    move-exception v3

    goto :goto_d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method