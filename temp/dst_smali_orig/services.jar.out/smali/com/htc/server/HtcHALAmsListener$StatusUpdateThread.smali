.class Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;
.super Ljava/lang/Thread;
.source "HtcHALAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcHALAmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusUpdateThread"
.end annotation


# static fields
.field private static final CAMERA_MODE_BEATUIFUL_CHAT:I = 0x1

.field private static final CAMERA_MODE_NORMAL:I


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCameraMode:I

.field private mHwService:Landroid/os/IHtcHardwareService;

.field private mStatusUpdateEvent:Ljava/lang/Object;

.field private volatile mbQuit:Z

.field final synthetic this$0:Lcom/htc/server/HtcHALAmsListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcHALAmsListener;Ljava/lang/String;)V
    .locals 3
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->this$0:Lcom/htc/server/HtcHALAmsListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mbQuit:Z

    iput-object v2, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mHwService:Landroid/os/IHtcHardwareService;

    iput v1, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mCameraMode:I

    return-void
.end method

.method private updateCameraMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "activityString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "newMode":I
    const-string v3, "com.skype.raider/.Main"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.sgiggle.production"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.fring"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.oovoo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iget v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mCameraMode:I

    if-eq v3, v2, :cond_2

    iput v2, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mCameraMode:I

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mHwService:Landroid/os/IHtcHardwareService;

    iget v4, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mCameraMode:I

    invoke-interface {v3, v4}, Landroid/os/IHtcHardwareService;->setCameraMode(I)I

    move-result v1

    .local v1, "errno":I
    if-eqz v1, :cond_3

    const-string v3, "HtcHALAmsListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to notify CameraMode change, errno = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "errno":I
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "errno":I
    :cond_3
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcHALAmsListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mCameraMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "errno":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "HtcHALAmsListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to notify CameraMode change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method notifyTopAppChanged()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mbQuit:Z

    iget-object v1, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .local v2, "nOrigPriority":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mStatusUpdateEvent:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mbQuit:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcHALAmsListener"

    const-string v4, "Quit StatusUpdateThread!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcHALAmsListener"

    const-string v5, "Exception while waiting for update event!"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v3, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    iput-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcHALAmsListener"

    const-string v4, "ActivityManagerService is not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mHwService:Landroid/os/IHtcHardwareService;

    if-nez v3, :cond_4

    const-string v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mHwService:Landroid/os/IHtcHardwareService;

    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mHwService:Landroid/os/IHtcHardwareService;

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcHALAmsListener"

    const-string v4, "HtcHardwareService is not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_3
    iget-object v3, p0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    .local v0, "activityString":Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_5

    const-string v3, "HtcHALAmsListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->updateCameraMode(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "activityString":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "HtcHALAmsListener"

    const-string v4, "Unhandled exception in StatusUpdateThread"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method
