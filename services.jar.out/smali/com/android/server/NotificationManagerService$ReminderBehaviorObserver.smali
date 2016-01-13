.class Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderBehaviorObserver"
.end annotation


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "htc_accessibility_notification_reminder_enabled"

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "htc_accessibility_notification_reminder_frequency"


# instance fields
.field private registered:Z

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 2845
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    .line 2846
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2850
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2851
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    if-nez v1, :cond_0

    .line 2852
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    .line 2853
    const-string v1, "htc_accessibility_notification_reminder_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2855
    const-string v1, "htc_accessibility_notification_reminder_frequency"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2859
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v2, "htc_accessibility_notification_reminder_enabled"

    invoke-static {v0, v2, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2861
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v2, "htc_accessibility_notification_reminder_frequency"

    const-wide/16 v3, 0x3a98

    invoke-static {v0, v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v1, v2, v3}, Lcom/android/server/NotificationManagerService;->access$5402(Lcom/android/server/NotificationManagerService;J)J

    .line 2864
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reminderChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5400(Lcom/android/server/NotificationManagerService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2869
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v1, v5}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;Z)V

    .line 2871
    :cond_1
    return-void
.end method
