.class Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "ClearAllNotificationsMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/ClearAllNotificationsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllNotificationsServer"
.end annotation


# instance fields
.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final synthetic this$0:Lcom/android/server/facebook/method/ClearAllNotificationsMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/ClearAllNotificationsMethod;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0
    .param p2, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;->this$0:Lcom/android/server/facebook/method/ClearAllNotificationsMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private clearAllNotifications()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;->clearAllNotifications()V

    const/4 v0, 0x1

    return v0
.end method
