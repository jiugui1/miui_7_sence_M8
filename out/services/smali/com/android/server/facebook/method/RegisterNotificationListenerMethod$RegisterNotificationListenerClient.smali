.class Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "RegisterNotificationListenerMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterNotificationListenerClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnable:Z

.field private final mListenerService:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;ZLjava/lang/String;)V
    .locals 0
    .param p2, "enable"    # Z
    .param p3, "listenerService"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;->this$0:Lcom/android/server/facebook/method/RegisterNotificationListenerMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 36
    iput-boolean p2, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;->mEnable:Z

    .line 37
    iput-object p3, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;->mListenerService:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const-string v0, "enable"

    iget-boolean v1, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;->mEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v0, "listener"

    iget-object v1, p0, Lcom/android/server/facebook/method/RegisterNotificationListenerMethod$RegisterNotificationListenerClient;->mListenerService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
