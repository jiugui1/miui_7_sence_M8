.class public Lcom/android/server/facebook/method/NotificationClickMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "NotificationClickMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickServer;,
        Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;
    }
.end annotation


# instance fields
.field public final ID_KEY:Ljava/lang/String;

.field public final PACKAGE_KEY:Ljava/lang/String;

.field public final TAG_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "notificationClick"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package"

    iput-object v0, p0, Lcom/android/server/facebook/method/NotificationClickMethod;->PACKAGE_KEY:Ljava/lang/String;

    const-string v0, "tag"

    iput-object v0, p0, Lcom/android/server/facebook/method/NotificationClickMethod;->TAG_KEY:Ljava/lang/String;

    const-string v0, "id"

    iput-object v0, p0, Lcom/android/server/facebook/method/NotificationClickMethod;->ID_KEY:Ljava/lang/String;

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
    new-instance v0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;-><init>(Lcom/android/server/facebook/method/NotificationClickMethod;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getServer(Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickServer;-><init>(Lcom/android/server/facebook/method/NotificationClickMethod;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v0
.end method
