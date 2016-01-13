.class Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;
.super Lcom/android/server/facebook/method/FacebookMethod$Client;
.source "EnableDashMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/EnableDashMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableDashClient"
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
.field private mEnable:Z

.field final synthetic this$0:Lcom/android/server/facebook/method/EnableDashMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/EnableDashMethod;Z)V
    .locals 0
    .param p2, "enable"    # Z

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;->this$0:Lcom/android/server/facebook/method/EnableDashMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 28
    iput-boolean p2, p0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;->mEnable:Z

    .line 29
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const-string v0, "enable"

    iget-boolean v1, p0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashClient;->mEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
