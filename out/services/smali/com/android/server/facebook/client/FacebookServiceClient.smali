.class public Lcom/android/server/facebook/client/FacebookServiceClient;
.super Ljava/lang/Object;
.source "FacebookServiceClient.java"

# interfaces
.implements Lcom/android/server/facebook/client/IFacebookService;


# static fields
.field public static final KEYGUARD_INSECURE:I = 0x0

.field public static final KEYGUARD_SECURE:I = 0x1

.field public static final KEYGUARD_UNKNOWN:I = -0x1


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    .line 37
    return-void
.end method


# virtual methods
.method public enableDash(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Lcom/android/server/facebook/method/EnableDashMethod;

    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v1, v2}, Lcom/android/server/facebook/method/EnableDashMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/server/facebook/method/EnableDashMethod;->getClient(Z)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    .line 93
    .local v0, "client":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public getInterface()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/server/facebook/method/GetInterfaceMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/GetInterfaceMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/facebook/method/GetInterfaceMethod;->getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Lcom/android/server/facebook/method/GetPropertyMethod;

    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v1, v2}, Lcom/android/server/facebook/method/GetPropertyMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/server/facebook/method/GetPropertyMethod;->getClient(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    .line 100
    .local v0, "client":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/server/facebook/method/GetVersionMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/GetVersionMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/facebook/method/GetVersionMethod;->getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isKeyguardSecure()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;

    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v1, v2}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;->getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    .line 79
    .local v0, "client":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1
.end method

.method public isNotificationListenerWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;->getClient(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public launchDash()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/facebook/method/LaunchDashMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/LaunchDashMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/facebook/method/LaunchDashMethod;->getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public registerNotificationListener(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;->getClient(ZLjava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setHomeIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lcom/android/server/facebook/method/SetHomeIntentMethod;

    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v1, v2}, Lcom/android/server/facebook/method/SetHomeIntentMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/server/facebook/method/SetHomeIntentMethod;->getClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    .line 114
    .local v0, "client":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Lcom/android/server/facebook/method/SetPropertyMethod;

    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v1, v2}, Lcom/android/server/facebook/method/SetPropertyMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/server/facebook/method/SetPropertyMethod;->getClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    .line 107
    .local v0, "client":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public unlockInsecureKeyguard()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;

    const-string v1, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v0, v1}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;->getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/facebook/client/FacebookServiceClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/facebook/method/FacebookMethod$Client;->callMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 73
    return-void
.end method
