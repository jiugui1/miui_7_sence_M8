.class Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "GetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetPropertyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPropertyClient"
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
.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/GetPropertyMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/GetPropertyMethod;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;->this$0:Lcom/android/server/facebook/method/GetPropertyMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 30
    iput-object p2, p0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;->mKey:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const-string v0, "key"

    iget-object v1, p0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public bridge synthetic getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyClient;->getReturnValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
