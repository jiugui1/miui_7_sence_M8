.class public Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "SetBroadcastNotificationMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;,
        Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;
    }
.end annotation


# static fields
.field public static final ENABLE_KEY:Ljava/lang/String; = "enable"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "setBroadcastNotification"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClient(Z)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationClient;-><init>(Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;Z)V

    return-object v0
.end method

.method public getServer(Lcom/android/internal/statusbar/IStatusBarService;Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 2
    .param p1, "service"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "user"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "userManagerService":Landroid/os/UserManager;
    new-instance v1, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/facebook/method/SetBroadcastNotificationMethod$SetBroadcastNotificationServer;-><init>(Lcom/android/server/facebook/method/SetBroadcastNotificationMethod;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/UserManager;)V

    return-object v1
.end method
