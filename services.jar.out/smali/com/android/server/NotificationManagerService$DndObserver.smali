.class Lcom/android/server/NotificationManagerService$DndObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DndObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 2959
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2960
    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 2974
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2975
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v6, "htc_dnd_feature_enabled"

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 2976
    .local v0, "dnd":Z
    :cond_0
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DND setting changed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDndSettingEnabled:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v0, :cond_1

    .line 2978
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mDndSettingEnabled:Z
    invoke-static {v6, v0}, Lcom/android/server/NotificationManagerService;->access$5502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2981
    :cond_1
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDndSettingEnabled:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-ne v6, v5, :cond_4

    .line 2982
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 2984
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v7}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 2988
    .local v1, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 2989
    .local v3, "player":Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_2

    .line 2990
    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2994
    :cond_2
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    .end local v3    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v7}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v1

    .line 3001
    :try_start_3
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3003
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3007
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3008
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v7}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 3010
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFlashDuringPlugged:Z
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3011
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3012
    :cond_3
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)V

    .line 3013
    monitor-exit v6

    .line 3015
    .end local v1    # "identity":J
    :cond_4
    return-void

    .line 2994
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3013
    .end local v1    # "identity":J
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 3003
    .restart local v1    # "identity":J
    :catchall_2
    move-exception v5

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2992
    :catch_0
    move-exception v5

    .line 2994
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 2963
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2964
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2965
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$DndObserver;->update()V

    .line 2966
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 2970
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$DndObserver;->update()V

    .line 2971
    return-void
.end method
