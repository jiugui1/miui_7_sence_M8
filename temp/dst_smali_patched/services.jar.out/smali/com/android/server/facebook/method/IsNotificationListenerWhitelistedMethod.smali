.class public Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "IsNotificationListenerWhitelistedMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;,
        Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;
    }
.end annotation


# static fields
.field public static final LISTENER_KEY:Ljava/lang/String; = "listener"

.field public static final RESPONSE_KEY:Ljava/lang/String; = "response"

.field static final TAG:Ljava/lang/String; = "IsNotificationListenerWhitelistedMethod"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "isNotificationListenerWhitelisted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "server_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;-><init>(Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServer(Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "userManagerService":Landroid/os/UserManager;
    new-instance v1, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedServer;-><init>(Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;Landroid/content/Context;Landroid/os/UserManager;)V

    return-object v1
.end method
