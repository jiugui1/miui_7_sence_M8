.class public Lcom/htc/server/HtcDeviceInfoAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcDeviceInfoAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

.field private mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->appDied(I)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->noteAppDied(I)V

    :cond_0
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .local v1, "processName":Ljava/lang/String;
    iget v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .local v0, "pid":I
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v5, :cond_5

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "data":Landroid/net/Uri;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    .local v2, "removedPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "replacing":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .local v4, "ssp":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "intentExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_3

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_4

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removedPackageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v5, v4, v2}, Lcom/htc/server/HtcDeviceInfoManager;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intentExtras":Landroid/os/Bundle;
    .end local v2    # "removedPackageName":Ljava/lang/String;
    .end local v3    # "replacing":Z
    .end local v4    # "ssp":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v5, :cond_0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "data":Landroid/net/Uri;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_6

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "ssp":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_7

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcDeviceInfoManager;->notePackageAdded(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addCrash(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V

    :cond_0
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V

    :cond_0
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "topApp"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    .local v1, "record":Lcom/android/server/am/HtcWrapProcessRecord;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "processName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v2, v0}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_1
    return-void

    .end local v0    # "processName":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .restart local v0    # "processName":Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onHibernate()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->flush()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->publish()V

    :cond_0
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDebuggerAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addANR(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v1}, Lcom/htc/server/HtcDeviceInfoManager;->reset()V

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .local v0, "prevTopApp":Lcom/android/server/am/HtcWrapProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutdown()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->shutdown()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onWakingUp()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .local v0, "record":Lcom/android/server/am/HtcWrapProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method
