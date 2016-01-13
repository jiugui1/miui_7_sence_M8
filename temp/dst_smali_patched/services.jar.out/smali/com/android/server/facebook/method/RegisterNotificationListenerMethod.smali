.class public Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "RegisterNotificationListenerMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;,
        Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;
    }
.end annotation


# static fields
.field public static final ENABLE_KEY:Ljava/lang/String; = "enable"

.field public static final LISTENER_KEY:Ljava/lang/String; = "listener"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "registerNotificationListener"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClient(ZLjava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "service_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;-><init>(Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;ZLjava/lang/String;)V

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
    new-instance v1, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerServer;-><init>(Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;Landroid/content/Context;Landroid/os/UserManager;)V

    return-object v1
.end method
