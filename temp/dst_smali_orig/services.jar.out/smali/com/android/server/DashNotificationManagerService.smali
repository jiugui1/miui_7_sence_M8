.class public Lcom/android/server/DashNotificationManagerService;
.super Lcom/android/server/StatusBarManagerService;
.source "DashNotificationManagerService.java"


# static fields
.field private static final DEBUG:Z = false

.field static final GET_ALL_NOTIFICATIONS_INTENT:Ljava/lang/String; = "com.facebook.system.action.GET_ALL_NOTIFICATIONS"

.field static final NOTIFICATION_FIELD_KEY:Ljava/lang/String; = "com.facebook.system.notification.DashNotificationManagerService.Key"

.field static final NOTIFICATION_FIELD_NOTIFICATION:Ljava/lang/String; = "com.facebook.system.notification.DashNotificationManagerService.Notification"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.facebook.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_INTENT:Ljava/lang/String; = "com.facebook.system.action.NOTIFICATION"

.field static final NOTIFICATION_READ_PERMISSIONS:Ljava/lang/String; = "com.facebook.system.permission.READ_NOTIFICATIONS"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final NOTIFICATION_TYPE_REMOVE:I = 0x3

.field static final NOTIFICATION_TYPE_UPDATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "DashNotificationManagerService"


# instance fields
.field private volatile mBroadcastEnabled:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastEnabled:Z

    new-instance v0, Lcom/android/server/DashNotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DashNotificationManagerService$1;-><init>(Lcom/android/server/DashNotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DashNotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/DashNotificationManagerService;->registerQueryReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DashNotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DashNotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DashNotificationManagerService;->sendCurrentNotifications()V

    return-void
.end method

.method private notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "nt"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne v0, p4, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerQueryReceiver()V
    .locals 5

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.system.action.GET_ALL_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DashNotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.facebook.system.permission.READ_NOTIFICATIONS"

    iget-object v4, p0, Lcom/android/server/DashNotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private sendCurrentNotifications()V
    .locals 7

    .prologue
    iget-boolean v4, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastEnabled:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/DashNotificationManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DashNotificationManagerService;->getNotifications()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/server/SystemNotificationWrapper;->getStatusBundle(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "notificationBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.facebook.system.action.NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.facebook.system.notification.DashNotificationManagerService.Type"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.facebook.system.notification.DashNotificationManagerService.Notification"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/server/DashNotificationManagerService;->sendNotificationIntent(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "notificationType"    # I
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    iget-boolean v2, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/SystemNotificationWrapper;->getStatusBundle(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "notificationBundle":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.system.action.NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.facebook.system.notification.DashNotificationManagerService.Type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.facebook.system.notification.DashNotificationManagerService.Notification"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/DashNotificationManagerService;->sendNotificationIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendNotificationIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/DashNotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.facebook.system.permission.READ_NOTIFICATIONS"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "key":Landroid/os/IBinder;
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/DashNotificationManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    return-object v0
.end method

.method public removeNotification(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;
    .locals 2
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/DashNotificationManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-object v0
.end method

.method public setBroadcastNotification(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/DashNotificationManagerService;->enforceStatusBarService()V

    iput-boolean p1, p0, Lcom/android/server/DashNotificationManagerService;->mBroadcastEnabled:Z

    return-void
.end method

.method public triggerNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/DashNotificationManagerService;->enforceStatusBarService()V

    invoke-virtual {p0}, Lcom/android/server/DashNotificationManagerService;->getNotifications()Ljava/util/Collection;

    move-result-object v2

    .local v2, "notifications":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/DashNotificationManagerService;->notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .local v3, "wrappedNotification":Landroid/app/Notification;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "wrappedNotification":Landroid/app/Notification;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->triggerNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/DashNotificationManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
