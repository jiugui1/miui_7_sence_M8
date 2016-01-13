.class Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "NotificationClickMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/NotificationClickMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClickClient"
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
.field private mId:I

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/facebook/method/NotificationClickMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/NotificationClickMethod;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->this$0:Lcom/android/server/facebook/method/NotificationClickMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mId:I

    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tag"

    iget-object v1, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    iget v1, p0, Lcom/android/server/facebook/method/NotificationClickMethod$NotificationClickClient;->mId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
