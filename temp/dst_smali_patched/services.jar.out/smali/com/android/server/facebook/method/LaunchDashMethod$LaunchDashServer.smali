.class Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "LaunchDashMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/LaunchDashMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchDashServer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/facebook/method/LaunchDashMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/LaunchDashMethod;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;->this$0:Lcom/android/server/facebook/method/LaunchDashMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private launchDash()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/facebook/method/LaunchDashMethod;->launch(Landroid/content/Context;)V
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
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;->launchDash()V

    const/4 v0, 0x1

    return v0
.end method
