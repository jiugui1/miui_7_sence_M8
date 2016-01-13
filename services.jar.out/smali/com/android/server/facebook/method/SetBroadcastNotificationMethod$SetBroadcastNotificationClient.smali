.class Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "SetBroadcastNotificationMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetBroadcastNotificationClient"
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
.field private mEnable:Z

.field final synthetic this$0:Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;Z)V
    .locals 0
    .param p2, "enable"    # Z

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;->this$0:Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 29
    iput-boolean p2, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;->mEnable:Z

    .line 30
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const-string v0, "enable"

    iget-boolean v1, p0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;->mEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method
