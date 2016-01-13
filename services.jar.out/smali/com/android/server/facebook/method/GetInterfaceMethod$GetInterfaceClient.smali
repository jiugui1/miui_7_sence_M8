.class Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "GetInterfaceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetInterfaceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInterfaceClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/GetInterfaceMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/GetInterfaceMethod;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;->this$0:Lcom/android/server/facebook/method/GetInterfaceMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/GetInterfaceMethod;Lcom/android/server/facebook/method/GetInterfaceMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/GetInterfaceMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/GetInterfaceMethod$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;-><init>(Lcom/android/server/facebook/method/GetInterfaceMethod;)V

    return-void
.end method


# virtual methods
.method public getReturnValue(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceClient;->getReturnValue(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
