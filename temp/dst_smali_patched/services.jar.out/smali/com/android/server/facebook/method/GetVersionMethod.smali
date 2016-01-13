.class public Lcom/android/server/facebook/method/GetVersionMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "GetVersionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/GetVersionMethod$1;,
        Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;,
        Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;
    }
.end annotation


# static fields
.field public static final RESPONSE_KEY:Ljava/lang/String; = "response"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "getVersion"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;-><init>(Lcom/android/server/facebook/method/GetVersionMethod;Lcom/android/server/facebook/method/GetVersionMethod$1;)V

    return-object v0
.end method

.method public getServer(Lcom/android/server/facebook/server/FacebookServiceStub;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "service"    # Lcom/android/server/facebook/server/FacebookServiceStub;

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;-><init>(Lcom/android/server/facebook/method/GetVersionMethod;Lcom/android/server/facebook/server/FacebookServiceStub;)V

    return-object v0
.end method
