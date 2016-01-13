.class public Lcom/android/server/facebook/method/SetHomeIntentMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "SetHomeIntentMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;,
        Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;
    }
.end annotation


# static fields
.field public static final HOME_INTENT_PERMISSION:Ljava/lang/String; = "com.facebook.system.permission.LAUNCH_HOME"

.field public static final METHOD_NAME:Ljava/lang/String; = "setHomeIntent"


# instance fields
.field public final ACTIVITY_KEY:Ljava/lang/String;

.field public final PACKAGE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "setHomeIntent"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "package"

    iput-object v0, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod;->PACKAGE_KEY:Ljava/lang/String;

    .line 22
    const-string v0, "activity"

    iput-object v0, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod;->ACTIVITY_KEY:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;-><init>(Lcom/android/server/facebook/method/SetHomeIntentMethod;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServer(Landroid/content/pm/PackageManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 149
    new-instance v0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;-><init>(Lcom/android/server/facebook/method/SetHomeIntentMethod;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method
