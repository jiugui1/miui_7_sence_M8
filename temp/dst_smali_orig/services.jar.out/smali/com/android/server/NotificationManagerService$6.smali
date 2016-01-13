.class Lcom/android/server/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    iput p6, p0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 48

    .prologue
    const/16 v42, 0x0

    .local v42, "specialPriority":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    .local v20, "bundle":Landroid/os/Bundle;
    if-eqz v20, :cond_0

    const-string v5, "com.htc.features"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .local v27, "htcFeatures":I
    and-int/lit8 v5, v27, 0x1

    if-eqz v5, :cond_0

    const/16 v42, 0x1

    .end local v27    # "htcFeatures":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/16 v42, 0x1

    :cond_1
    if-nez v42, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->priority:I

    const/4 v7, -0x2

    const/4 v8, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$3300(III)I

    move-result v6

    iput v6, v5, Landroid/app/Notification;->priority:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    mul-int/lit8 v10, v5, 0xa

    .local v10, "score":I
    move/from16 v32, v10

    .local v32, "initialScore":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/internal/notification/NotificationScorer;

    .local v40, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v40

    invoke-interface {v0, v5, v10}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    :catch_0
    move-exception v43

    .local v43, "t":Ljava/lang/Throwable;
    const-string v5, "NotificationService"

    const-string v6, "Scorer threw on .getScore."

    move-object/from16 v0, v43

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v40    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v43    # "t":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.scoreModified"

    move/from16 v0, v32

    if-eq v10, v0, :cond_7

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v34, -0x1

    .local v34, "notiType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    if-nez v5, :cond_5

    const/16 v10, -0x3e8

    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suppressing notification from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by user request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v5, -0x14

    if-ge v10, v5, :cond_8

    move/from16 v12, v34

    .end local v34    # "notiType":I
    .local v12, "notiType":I
    :cond_6
    :goto_2
    return-void

    .end local v12    # "notiType":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .restart local v34    # "notiType":I
    :cond_8
    const/16 v5, -0xa

    if-lt v10, v5, :cond_1c

    const/16 v21, 0x1

    .local v21, "canInterrupt":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v13

    monitor-enter v13

    :try_start_1
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v4 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v37, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .local v37, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v35, 0x0

    .local v35, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v31

    .local v31, "index":I
    if-gez v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x22

    iput v6, v5, Landroid/app/Notification;->flags:I

    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v44

    .local v44, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v23

    .local v23, "currentUser":I
    :try_start_3
    invoke-static/range {v44 .. v45}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->disableNotificationAlert(Lcom/android/server/NotificationManagerService$NotificationRecord;)Z
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Z

    move-result v24

    .local v24, "disableAlert":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_1f

    if-eqz v35, :cond_1e

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_1e

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v29

    .local v29, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x0

    .end local v34    # "notiType":I
    .restart local v12    # "notiType":I
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    move/from16 v0, v23

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3900(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .end local v29    # "identity":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-nez v5, :cond_c

    if-eqz v24, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->emergencyAlertToVibrateAndSound(Lcom/android/server/NotificationManagerService$NotificationRecord;)Z
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_d
    if-eqz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_19

    :cond_e
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    if-ne v5, v6, :cond_19

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    move/from16 v0, v23

    if-ne v5, v0, :cond_19

    :cond_f
    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/AudioManager;

    .local v18, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_10
    const/16 v46, 0x1

    .local v46, "useDefaultSound":Z
    :goto_7
    const/16 v41, 0x0

    .local v41, "soundUri":Landroid/net/Uri;
    const/16 v26, 0x0

    .local v26, "hasValidSound":Z
    if-eqz v46, :cond_23

    sget-object v41, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    .local v38, "resolver":Landroid/content/ContentResolver;
    const-string v5, "notification_sound"

    move-object/from16 v0, v38

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    const/16 v26, 0x1

    .end local v38    # "resolver":Landroid/content/ContentResolver;
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->isPlaySoundDespiteSlient(Lcom/android/server/NotificationManagerService$NotificationRecord;)Z
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Z

    move-result v17

    .local v17, "alwaysPlaySound":Z
    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_25

    const/16 v33, 0x1

    .local v33, "looping":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->audioStreamType:I

    if-ltz v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v0, v5, Landroid/app/Notification;->audioStreamType:I

    move/from16 v19, v0

    .local v19, "audioStreamType":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    if-eqz v17, :cond_27

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result-wide v29

    .restart local v29    # "identity":J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v36

    .local v36, "player":Landroid/media/IRingtonePlayer;
    if-eqz v36, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->getRingtonePlayerBundle(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/NotificationManagerService;->access$4500(Lcom/android/server/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v33

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/media/IRingtonePlayer;->htcPlayAsync(Landroid/net/Uri;ZILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_14
    :try_start_8
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v19    # "audioStreamType":I
    .end local v29    # "identity":J
    .end local v33    # "looping":Z
    .end local v36    # "player":Landroid/media/IRingtonePlayer;
    :cond_15
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->vibrate:[J

    if-eqz v5, :cond_28

    const/16 v25, 0x1

    .local v25, "hasCustomVibrate":Z
    :goto_c
    if-nez v25, :cond_29

    if-eqz v26, :cond_29

    if-nez v17, :cond_29

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_29

    const/16 v22, 0x1

    .local v22, "convertSoundToVibration":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2a

    const/16 v47, 0x1

    .local v47, "useDefaultVibrate":Z
    :goto_e
    if-nez v47, :cond_16

    if-nez v22, :cond_16

    if-eqz v25, :cond_19

    :cond_16
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->isVibrateDespiteSlient(Lcom/android/server/NotificationManagerService$NotificationRecord;)Z
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$4600(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v47, :cond_18

    if-eqz v22, :cond_2d

    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-wide v29

    .restart local v29    # "identity":J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v9

    if-eqz v47, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$4700(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v5

    move-object v6, v5

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2c

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v17    # "alwaysPlaySound":Z
    .end local v18    # "audioManager":Landroid/media/AudioManager;
    .end local v22    # "convertSoundToVibration":Z
    .end local v25    # "hasCustomVibrate":Z
    .end local v26    # "hasValidSound":Z
    .end local v29    # "identity":J
    .end local v41    # "soundUri":Landroid/net/Uri;
    .end local v46    # "useDefaultSound":Z
    .end local v47    # "useDefaultVibrate":Z
    :cond_19
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v5

    move-object/from16 v0, v35

    if-ne v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_31

    if-eqz v21, :cond_31

    if-nez v24, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;Z)V

    :cond_1b
    :goto_12
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v5, -0x1

    if-eq v12, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    move/from16 v16, v0

    # invokes: Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;I)V
    invoke-static/range {v11 .. v16}, Lcom/android/server/NotificationManagerService;->access$5100(Lcom/android/server/NotificationManagerService;IILjava/lang/String;Landroid/app/Notification;I)V

    goto/16 :goto_2

    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "notiType":I
    .end local v21    # "canInterrupt":Z
    .end local v23    # "currentUser":I
    .end local v24    # "disableAlert":Z
    .end local v31    # "index":I
    .end local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v44    # "token":J
    .restart local v34    # "notiType":I
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_3

    .restart local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v21    # "canInterrupt":Z
    .restart local v31    # "index":I
    .restart local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v35, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .restart local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v31    # "index":I
    .end local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v5

    move/from16 v12, v34

    .end local v34    # "notiType":I
    .restart local v12    # "notiType":I
    :goto_13
    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v5

    .end local v12    # "notiType":I
    .restart local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v31    # "index":I
    .restart local v34    # "notiType":I
    .restart local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v44    # "token":J
    :catchall_1
    move-exception v5

    :try_start_d
    invoke-static/range {v44 .. v45}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v23    # "currentUser":I
    .restart local v24    # "disableAlert":Z
    .restart local v29    # "identity":J
    :catchall_2
    move-exception v5

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v29    # "identity":J
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v29

    .restart local v29    # "identity":J
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v12, 0x1

    .end local v34    # "notiType":I
    .restart local v12    # "notiType":I
    goto/16 :goto_5

    .end local v12    # "notiType":I
    .restart local v34    # "notiType":I
    :catchall_3
    move-exception v5

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v29    # "identity":J
    :cond_1f
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not posting notification with icon==0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v35, :cond_20

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-wide v29

    .restart local v29    # "identity":J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .end local v29    # "identity":J
    :cond_20
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v12, v34

    .end local v34    # "notiType":I
    .restart local v12    # "notiType":I
    goto/16 :goto_6

    .end local v12    # "notiType":I
    .restart local v29    # "identity":J
    .restart local v34    # "notiType":I
    :catchall_4
    move-exception v5

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .end local v29    # "identity":J
    .end local v34    # "notiType":I
    .restart local v12    # "notiType":I
    .restart local v18    # "audioManager":Landroid/media/AudioManager;
    :cond_21
    const/16 v46, 0x0

    goto/16 :goto_7

    .restart local v26    # "hasValidSound":Z
    .restart local v38    # "resolver":Landroid/content/ContentResolver;
    .restart local v41    # "soundUri":Landroid/net/Uri;
    .restart local v46    # "useDefaultSound":Z
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_8

    .end local v38    # "resolver":Landroid/content/ContentResolver;
    :cond_23
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v41, v0

    if-eqz v41, :cond_24

    const/16 v26, 0x1

    :goto_14
    goto/16 :goto_8

    :cond_24
    const/16 v26, 0x0

    goto :goto_14

    .restart local v17    # "alwaysPlaySound":Z
    :cond_25
    const/16 v33, 0x0

    goto/16 :goto_9

    .restart local v33    # "looping":Z
    :cond_26
    const/16 v19, 0x5

    .restart local v19    # "audioStreamType":I
    goto/16 :goto_a

    .restart local v29    # "identity":J
    :catchall_5
    move-exception v5

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v17    # "alwaysPlaySound":Z
    .end local v18    # "audioManager":Landroid/media/AudioManager;
    .end local v19    # "audioStreamType":I
    .end local v23    # "currentUser":I
    .end local v24    # "disableAlert":Z
    .end local v26    # "hasValidSound":Z
    .end local v29    # "identity":J
    .end local v31    # "index":I
    .end local v33    # "looping":Z
    .end local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v41    # "soundUri":Landroid/net/Uri;
    .end local v44    # "token":J
    .end local v46    # "useDefaultSound":Z
    :catchall_6
    move-exception v5

    goto/16 :goto_13

    .restart local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v17    # "alwaysPlaySound":Z
    .restart local v18    # "audioManager":Landroid/media/AudioManager;
    .restart local v19    # "audioStreamType":I
    .restart local v23    # "currentUser":I
    .restart local v24    # "disableAlert":Z
    .restart local v26    # "hasValidSound":Z
    .restart local v31    # "index":I
    .restart local v33    # "looping":Z
    .restart local v35    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v37    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v41    # "soundUri":Landroid/net/Uri;
    .restart local v44    # "token":J
    .restart local v46    # "useDefaultSound":Z
    :cond_27
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification sound not played, stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " volume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " always="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto/16 :goto_b

    .end local v19    # "audioStreamType":I
    .end local v33    # "looping":Z
    :cond_28
    const/16 v25, 0x0

    goto/16 :goto_c

    .restart local v25    # "hasCustomVibrate":Z
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_d

    .restart local v22    # "convertSoundToVibration":Z
    :cond_2a
    const/16 v47, 0x0

    goto/16 :goto_e

    .restart local v29    # "identity":J
    .restart local v47    # "useDefaultVibrate":Z
    :cond_2b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)[J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_f

    :cond_2c
    const/4 v5, -0x1

    goto/16 :goto_10

    :catchall_7
    move-exception v5

    :try_start_14
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v29    # "identity":J
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->vibrate:[J

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v6

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v9, v5, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2e

    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto/16 :goto_11

    :cond_2e
    const/4 v5, -0x1

    goto :goto_15

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_19

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v39

    .local v39, "ringerMode":I
    if-nez v46, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v5, :cond_19

    :cond_30
    const/4 v5, 0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v5

    # getter for: Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()[J

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_11

    .end local v17    # "alwaysPlaySound":Z
    .end local v18    # "audioManager":Landroid/media/AudioManager;
    .end local v22    # "convertSoundToVibration":Z
    .end local v25    # "hasCustomVibrate":Z
    .end local v26    # "hasValidSound":Z
    .end local v39    # "ringerMode":I
    .end local v41    # "soundUri":Landroid/net/Uri;
    .end local v46    # "useDefaultSound":Z
    .end local v47    # "useDefaultVibrate":Z
    :cond_31
    if-eqz v35, :cond_1b

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked(Z)V
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;Z)V

    goto/16 :goto_12

    .restart local v17    # "alwaysPlaySound":Z
    .restart local v18    # "audioManager":Landroid/media/AudioManager;
    .restart local v19    # "audioStreamType":I
    .restart local v26    # "hasValidSound":Z
    .restart local v29    # "identity":J
    .restart local v33    # "looping":Z
    .restart local v41    # "soundUri":Landroid/net/Uri;
    .restart local v46    # "useDefaultSound":Z
    :catch_1
    move-exception v5

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/16 :goto_b
.end method
