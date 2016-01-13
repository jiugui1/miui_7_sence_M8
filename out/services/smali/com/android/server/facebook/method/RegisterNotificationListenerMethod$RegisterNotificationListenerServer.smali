.class Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "RegisterNotificationListenerMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterNotificationListenerServer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

.field private final mUserManagerService:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userManagerService"    # Landroid/os/UserManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->this$0:Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 54
    iput-object p2, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mUserManagerService:Landroid/os/UserManager;

    .line 56
    new-instance v0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    iget-object v1, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    .line 57
    return-void
.end method

.method private registerNotificationListener(ZLjava/lang/String;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "listenerService"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 75
    .local v3, "user_handle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 77
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mUserManagerService:Landroid/os/UserManager;

    if-nez v4, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    int-to-long v4, v4

    :goto_1
    long-to-int v2, v4

    .line 80
    .local v2, "userId":I
    if-eqz p1, :cond_3

    .line 81
    iget-object v4, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->enableService(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 77
    .end local v2    # "userId":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mUserManagerService:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    goto :goto_1

    .line 83
    .restart local v2    # "userId":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->disableService(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 86
    .end local v2    # "userId":I
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 63
    const-string v2, "enable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "enable":Z
    const-string v2, "listener"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "service_name":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;->registerNotificationListener(ZLjava/lang/String;)V

    .line 66
    return v3
.end method
