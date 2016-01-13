.class Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "GetVersionMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetVersionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVersionClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/GetVersionMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/GetVersionMethod;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;->this$0:Lcom/android/server/facebook/method/GetVersionMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/GetVersionMethod;Lcom/android/server/facebook/method/GetVersionMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/GetVersionMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/GetVersionMethod$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;-><init>(Lcom/android/server/facebook/method/GetVersionMethod;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionClient;->getReturnValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
