.class Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "SetBroadcastNotificationMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetBroadcastNotificationServer"
.end annotation


# instance fields
.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mUserManagerService:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/UserManager;)V
    .locals 0
    .param p2, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "userManagerService"    # Landroid/os/UserManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->this$0:Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p3, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mUserManagerService:Landroid/os/UserManager;

    return-void
.end method

.method private setBroadcastNotification(Z)V
    .locals 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mUserManagerService:Landroid/os/UserManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mUserManagerService:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setBroadcastNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    const/4 v2, 0x1

    const-string v1, "enable"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "enable":Z
    invoke-direct {p0, v0}, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;->setBroadcastNotification(Z)V

    return v2
.end method
