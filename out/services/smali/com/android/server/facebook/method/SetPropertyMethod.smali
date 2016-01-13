.class public Lcom/android/server/facebook/method/SetPropertyMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "SetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/SetPropertyMethod$1;,
        Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;,
        Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "key"

.field public static final METHOD_NAME:Ljava/lang/String; = "setProperty"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "setProperty"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
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
    .line 67
    new-instance v0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;-><init>(Lcom/android/server/facebook/method/SetPropertyMethod;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;-><init>(Lcom/android/server/facebook/method/SetPropertyMethod;Lcom/android/server/facebook/method/SetPropertyMethod$1;)V

    return-object v0
.end method
