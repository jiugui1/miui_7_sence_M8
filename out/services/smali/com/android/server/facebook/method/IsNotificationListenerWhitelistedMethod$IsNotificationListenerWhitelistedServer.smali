.class Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "IsNotificationListenerWhitelistedMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsNotificationListenerWhitelistedServer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

.field private final mUserManagerService:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userManagerService"    # Landroid/os/UserManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->this$0:Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 54
    iput-object p2, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mUserManagerService:Landroid/os/UserManager;

    .line 56
    new-instance v0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    iget-object v1, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    .line 57
    return-void
.end method

.method private isNotificationListenerWhitelisted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    const/4 v4, 0x0

    .line 80
    :goto_0
    return v4

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
    iget-object v4, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mUserManagerService:Landroid/os/UserManager;

    if-nez v4, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    int-to-long v4, v4

    :goto_1
    long-to-int v2, v4

    .line 80
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mSettingsHelper:Lcom/android/server/facebook/method/NotificationsSettingsHelper;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->isNotificationListenerWhitelisted(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 77
    .end local v2    # "userId":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->mUserManagerService:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    goto :goto_1

    .line 82
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v2, "listener"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "service":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;->isNotificationListenerWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, "enabled":Z
    const-string v2, "response"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const/4 v2, 0x1

    return v2
.end method
