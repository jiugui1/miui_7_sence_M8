.class public Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "UnlockInsecureKeyguardMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;
    }
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "unlockInsecureKeyguard"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    const-string v0, "unlockInsecureKeyguard"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    new-instance v0, Lcom/android/server/facebook/method/FacebookMethod$Client;

    invoke-direct {v0, p0}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-object v0
.end method

.method public getServer(Landroid/view/IWindowManager;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Landroid/view/IWindowManager;

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod$UnlockInsecureKeyguardServer;-><init>(Lcom/android/server/facebook/method/UnlockInsecureKeyguardMethod;Landroid/view/IWindowManager;)V

    return-object v0
.end method
