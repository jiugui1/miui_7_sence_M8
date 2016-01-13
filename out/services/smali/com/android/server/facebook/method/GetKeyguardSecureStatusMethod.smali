.class public Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "GetKeyguardSecureStatusMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$1;,
        Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;,
        Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;
    }
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "getKeyguardSecureStatus"

.field public static final RESPONSE_KEY:Ljava/lang/String; = "response"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "getKeyguardSecureStatus"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;-><init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$1;)V

    return-object v0
.end method

.method public getServer(Landroid/view/IWindowManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Landroid/view/IWindowManager;

    .prologue
    .line 74
    new-instance v0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusServer;-><init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;Landroid/view/IWindowManager;)V

    return-object v0
.end method
