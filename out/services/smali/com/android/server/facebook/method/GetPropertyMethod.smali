.class public Lcom/android/server/facebook/method/GetPropertyMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "GetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/GetPropertyMethod$1;,
        Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;,
        Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "key"

.field public static final METHOD_NAME:Ljava/lang/String; = "getProperty"

.field public static final RESPONSE:Ljava/lang/String; = "response"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "getProperty"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;-><init>(Lcom/android/server/facebook/method/GetPropertyMethod;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;-><init>(Lcom/android/server/facebook/method/GetPropertyMethod;Lcom/android/server/facebook/method/GetPropertyMethod$1;)V

    return-object v0
.end method
