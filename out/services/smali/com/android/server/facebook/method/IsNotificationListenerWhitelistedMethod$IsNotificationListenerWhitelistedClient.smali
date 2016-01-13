.class Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "IsNotificationListenerWhitelistedMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsNotificationListenerWhitelistedClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerService:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;Ljava/lang/String;)V
    .locals 0
    .param p2, "listenerService"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;->this$0:Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 33
    iput-object p2, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;->mListenerService:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const-string v0, "listener"

    iget-object v1, p0, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;->mListenerService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public getReturnValue(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/facebook/method/IsNotificationListenerWhitelistedMethod$IsNotificationListenerWhitelistedClient;->getReturnValue(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
