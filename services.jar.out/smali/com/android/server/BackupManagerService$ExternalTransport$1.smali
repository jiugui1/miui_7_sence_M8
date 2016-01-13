.class Lcom/android/server/BackupManagerService$ExternalTransport$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BackupManagerService$ExternalTransport;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

.field final synthetic val$this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$ExternalTransport;Lcom/android/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 7112
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iput-object p2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->val$this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 7114
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7115
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to new transport, registerTransport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7118
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v4, v4, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    # invokes: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 7119
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7120
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7121
    monitor-exit v2

    .line 7125
    :goto_0
    return-void

    .line 7121
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7122
    :catch_0
    move-exception v0

    .line 7123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "RemoteException when get transportDirName"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 7128
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->transportComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7131
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7132
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7136
    :goto_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iput-object v4, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7137
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$ExternalTransport;->transportComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v1, v4, v2, v4}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 7138
    return-void

    .line 7132
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7133
    :catch_0
    move-exception v0

    .line 7134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "RemoteException when get transportDirName"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
