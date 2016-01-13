.class public Lcom/android/server/facebook/method/EnableDashMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "EnableDashMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/EnableDashMethod$1;,
        Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;,
        Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;
    }
.end annotation


# static fields
.field public static final ENABLE_KEY:Ljava/lang/String; = "enable"

.field public static final METHOD_NAME:Ljava/lang/String; = "enableDash"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-string v0, "enableDash"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClient(Z)Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;-><init>(Lcom/android/server/facebook/method/EnableDashMethod;Z)V

    return-object v0
.end method

.method public getServer()Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;-><init>(Lcom/android/server/facebook/method/EnableDashMethod;Lcom/android/server/facebook/method/EnableDashMethod$1;)V

    return-object v0
.end method
