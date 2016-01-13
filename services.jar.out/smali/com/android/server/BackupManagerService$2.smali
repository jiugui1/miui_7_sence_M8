.class Lcom/android/server/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 1806
    # getter for: Lcom/android/server/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BackupManagerService;->access$300()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1810
    .local v5, "replacing":Z
    const/4 v1, 0x0

    .line 1811
    .local v1, "added":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1812
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1813
    .local v3, "pkgList":[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1815
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1816
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_3

    .line 1856
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 1819
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1820
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1821
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .end local v3    # "pkgList":[Ljava/lang/String;
    aput-object v4, v3, v11

    .line 1823
    .restart local v3    # "pkgList":[Ljava/lang/String;
    :cond_4
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1824
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1833
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_1
    if-eqz v3, :cond_2

    array-length v8, v3

    if-eqz v8, :cond_2

    .line 1837
    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1838
    .local v6, "uid":I
    if-eqz v1, :cond_9

    .line 1839
    iget-object v8, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1840
    if-eqz v5, :cond_6

    .line 1843
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1845
    :cond_6
    iget-object v8, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1846
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1825
    .end local v6    # "uid":I
    :cond_7
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1826
    const/4 v1, 0x1

    .line 1827
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1828
    :cond_8
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1829
    const/4 v1, 0x0

    .line 1830
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1848
    .restart local v6    # "uid":I
    :cond_9
    if-nez v5, :cond_2

    .line 1851
    iget-object v8, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1852
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1853
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8
.end method
