.class Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "GetKeyguardSecureStatusMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetKeyguardSecureStatusClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;->this$0:Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;-><init>(Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod;)V

    return-void
.end method


# virtual methods
.method public getReturnValue(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/facebook/method/GetKeyguardSecureStatusMethod$GetKeyguardSecureStatusClient;->getReturnValue(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
