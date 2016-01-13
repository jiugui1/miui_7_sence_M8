.class public Lcom/android/server/facebook/method/GetInterfaceMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "GetInterfaceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/GetInterfaceMethod$1;,
        Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;,
        Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;
    }
.end annotation


# static fields
.field public static final RESPONSE_KEY:Ljava/lang/String; = "response"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "getInterface"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
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
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;-><init>(Lcom/android/server/facebook/method/GetInterfaceMethod;Lcom/android/server/facebook/method/GetInterfaceMethod$1;)V

    return-object v0
.end method

.method public getServer(Lcom/android/server/facebook/server/FacebookServiceStub;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Lcom/android/server/facebook/server/FacebookServiceStub;

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;-><init>(Lcom/android/server/facebook/method/GetInterfaceMethod;Lcom/android/server/facebook/server/FacebookServiceStub;)V

    return-object v0
.end method
