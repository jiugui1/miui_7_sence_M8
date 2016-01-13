.class Lcom/android/server/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 2897
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 2900
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v11}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v11

    const/high16 v12, 0x40000

    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    move v2, v3

    .line 2902
    .local v2, "disableAlerts":Z
    :goto_0
    if-nez v2, :cond_0

    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDndSettingEnabled:Z
    invoke-static {v11}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v11}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2903
    :cond_0
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "skip all reminder effect cause from the reason disableAlerts="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dndEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDndSettingEnabled:Z
    invoke-static {v12}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " systemReady="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v12}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_1
    :goto_1
    return-void

    .end local v2    # "disableAlerts":Z
    :cond_2
    move v2, v10

    .line 2900
    goto :goto_0

    .line 2910
    .restart local v2    # "disableAlerts":Z
    :cond_3
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2912
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2914
    .local v4, "identity":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v11}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Vibrator;->cancel()V

    .line 2915
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v11}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v11

    # getter for: Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()[J

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2918
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2922
    const/4 v6, 0x0

    .line 2923
    .local v6, "looping":Z
    const/4 v1, 0x5

    .line 2927
    .local v1, "audioStreamType":I
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2929
    sget-object v9, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2932
    .local v9, "soundUri":Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2933
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v11, "notification_sound"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 2936
    .local v3, "hasValidSound":Z
    :goto_2
    if-eqz v3, :cond_1

    .line 2937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2939
    :try_start_1
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 2940
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_4

    .line 2941
    const/4 v10, 0x0

    invoke-interface {v7, v9, v6, v1, v10}, Landroid/media/IRingtonePlayer;->htcPlayAsync(Landroid/net/Uri;ZILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2945
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    :cond_4
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2918
    .end local v1    # "audioStreamType":I
    .end local v3    # "hasValidSound":Z
    .end local v6    # "looping":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "soundUri":Landroid/net/Uri;
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .restart local v1    # "audioStreamType":I
    .restart local v6    # "looping":Z
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "soundUri":Landroid/net/Uri;
    :cond_5
    move v3, v10

    .line 2933
    goto :goto_2

    .line 2945
    .restart local v3    # "hasValidSound":Z
    :catchall_1
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 2949
    .end local v3    # "hasValidSound":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "soundUri":Landroid/net/Uri;
    :cond_6
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "skip sound reminder cause from the reason volume="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " focus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2943
    .restart local v3    # "hasValidSound":Z
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    goto :goto_3
.end method
