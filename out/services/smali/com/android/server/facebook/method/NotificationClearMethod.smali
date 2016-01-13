.class public Lcom/android/server/facebook/method/NotificationClearMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "NotificationClearMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;,
        Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearClient;
    }
.end annotation


# static fields
.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final PACKAGE_KEY:Ljava/lang/String; = "package"

.field public static final TAG_KEY:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "notificationClear"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearClient;-><init>(Lcom/android/server/facebook/method/NotificationClearMethod;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getServer(Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 83
    new-instance v0, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/NotificationClearMethod$NotificationClearServer;-><init>(Lcom/android/server/facebook/method/NotificationClearMethod;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v0
.end method
