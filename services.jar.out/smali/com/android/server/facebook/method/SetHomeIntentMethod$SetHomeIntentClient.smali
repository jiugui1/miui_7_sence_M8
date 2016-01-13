.class Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "SetHomeIntentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetHomeIntentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetHomeIntentClient"
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
.field private final mActivity:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/SetHomeIntentMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/SetHomeIntentMethod;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;->this$0:Lcom/android/server/facebook/method/SetHomeIntentMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 39
    iput-object p2, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;->mPackage:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;->mActivity:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentClient;->mActivity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
