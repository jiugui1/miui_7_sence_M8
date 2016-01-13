.class Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "UnlockInsecureKeyguardMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockInsecureKeyguardServer"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/IWindowManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;Landroid/view/IWindowManager;)V
    .locals 0
    .param p2, "windowManager"    # Landroid/view/IWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->this$0:Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method private unlockInsecureKeyguard()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "dashEnabled"

    invoke-static {v2}, Lcom/android/server/facebook/method/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
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
    invoke-direct {p0}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;->unlockInsecureKeyguard()V

    const/4 v0, 0x1

    return v0
.end method
