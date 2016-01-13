.class Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "SetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetPropertyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPropertyClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/facebook/method/FacebookMethod$Client",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/SetPropertyMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/SetPropertyMethod;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;->this$0:Lcom/android/server/facebook/method/SetPropertyMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "key"

    iget-object v1, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value"

    iget-object v1, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyClient;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
