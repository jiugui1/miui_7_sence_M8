.class Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "NotificationClearMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/NotificationClearMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClearServer"
.end annotation


# instance fields
.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final synthetic this$0:Lcom/android/server/facebook/method/NotificationClearMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/NotificationClearMethod;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0
    .param p2, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;->this$0:Lcom/android/server/facebook/method/NotificationClearMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 50
    iput-object p2, p0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 51
    return-void
.end method

.method private notificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 71
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    .line 58
    const-string v3, "package"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "tag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "id":I
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;->notificationClear(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    const/4 v3, 0x1

    return v3
.end method
