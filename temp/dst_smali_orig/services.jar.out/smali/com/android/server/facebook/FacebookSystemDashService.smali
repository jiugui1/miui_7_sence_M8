.class public Lcom/android/server/facebook/FacebookSystemDashService;
.super Lcom/android/server/facebook/server/FacebookServiceStub;
.source "FacebookSystemDashService.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.server.facebook.IFacebookSystemDashService"

.field private static final PERMISSION:Ljava/lang/String; = "com.facebook.system.permission.FACEBOOK_SYSTEM_DASH_SERVICE"

.field private static final VERSION:Ljava/lang/String; = "4"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {p0, p1, v2}, Lcom/android/server/facebook/server/FacebookServiceStub;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .local v0, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, "windowManagerService":Landroid/view/IWindowManager;
    const-string v2, "isNotificationListenerWhitelisted"

    new-instance v3, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;->getServer(Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "registerNotificationListener"

    new-instance v3, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;->getServer(Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "unlockInsecureKeyguard"

    new-instance v3, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;->getServer(Landroid/view/IWindowManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "getKeyguardSecureStatus"

    new-instance v3, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;->getServer(Landroid/view/IWindowManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "launchDash"

    new-instance v3, Lcom/android/server/facebook/method/LaunchDashMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/LaunchDashMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/facebook/method/LaunchDashMethod;->getServer(Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "enableDash"

    new-instance v3, Lcom/android/server/facebook/method/EnableDashMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/EnableDashMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/facebook/method/EnableDashMethod;->getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "getProperty"

    new-instance v3, Lcom/android/server/facebook/method/GetPropertyMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/GetPropertyMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/facebook/method/GetPropertyMethod;->getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "setProperty"

    new-instance v3, Lcom/android/server/facebook/method/SetPropertyMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/SetPropertyMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/facebook/method/SetPropertyMethod;->getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v2, "setHomeIntent"

    new-instance v3, Lcom/android/server/facebook/method/SetHomeIntentMethod;

    const-string v4, "com.android.server.facebook.IFacebookSystemDashService"

    invoke-direct {v3, v4}, Lcom/android/server/facebook/method/SetHomeIntentMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/facebook/method/SetHomeIntentMethod;->getServer(Landroid/content/pm/PackageManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/facebook/FacebookSystemDashService;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    invoke-static {p1}, Lcom/android/server/facebook/method/LaunchDashMethod;->launch(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected enforcePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/facebook/FacebookSystemDashService;->mContext:Landroid/content/Context;

    const-string v1, "You do not have permssion to access this service"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getInterface()Landroid/os/Bundle;
    .locals 5

    .prologue
    const-string v4, "com.facebook.system.permission.FACEBOOK_SYSTEM_DASH_SERVICE"

    invoke-virtual {p0, v4}, Lcom/android/server/facebook/FacebookSystemDashService;->enforcePermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/facebook/FacebookSystemDashService;->getMethods()Ljava/util/Set;

    move-result-object v3

    .local v3, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "method":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v2    # "method":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.facebook.system.permission.FACEBOOK_SYSTEM_DASH_SERVICE"

    invoke-virtual {p0, v0}, Lcom/android/server/facebook/FacebookSystemDashService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "4"

    return-object v0
.end method
