.class public Lcom/android/server/facebook/method/ClearAllNotificationsMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "ClearAllNotificationsMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "clearAllNotificationsMethod"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/facebook/method/FacebookMethod$Client;

    invoke-direct {v0, p0}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-object v0
.end method

.method public getServer(Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 56
    new-instance v0, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/ClearAllNotificationsMethod$ClearAllNotificationsServer;-><init>(Lcom/android/server/facebook/method/ClearAllNotificationsMethod;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v0
.end method
