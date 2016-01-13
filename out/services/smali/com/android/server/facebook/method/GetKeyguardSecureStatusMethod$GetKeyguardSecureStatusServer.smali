.class Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "GetKeyguardSecureStatusMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetKeyguardSecureStatusServer"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/IWindowManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;Landroid/view/IWindowManager;)V
    .locals 0
    .param p2, "windowManager"    # Landroid/view/IWindowManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;->this$0:Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 40
    iput-object p2, p0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;->mWindowManager:Landroid/view/IWindowManager;

    .line 41
    return-void
.end method

.method private getKeyguardSecureStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, -0x1

    .line 54
    .local v2, "result":I
    iget-object v4, p0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v4, :cond_0

    move v3, v2

    .line 65
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 58
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 60
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 63
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v2

    .line 65
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 60
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "response"

    invoke-direct {p0}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;->getKeyguardSecureStatus()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
