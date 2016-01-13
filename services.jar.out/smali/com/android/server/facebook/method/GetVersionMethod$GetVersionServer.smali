.class Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "GetVersionMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetVersionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVersionServer"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/facebook/server/FacebookServiceStub;

.field final synthetic this$0:Lcom/android/server/facebook/method/GetVersionMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/GetVersionMethod;Lcom/android/server/facebook/server/FacebookServiceStub;)V
    .locals 0
    .param p2, "service"    # Lcom/android/server/facebook/server/FacebookServiceStub;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;->this$0:Lcom/android/server/facebook/method/GetVersionMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 33
    iput-object p2, p0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;->mService:Lcom/android/server/facebook/server/FacebookServiceStub;

    .line 34
    return-void
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/server/facebook/method/GetVersionMethod$GetVersionServer;->mService:Lcom/android/server/facebook/server/FacebookServiceStub;

    invoke-virtual {v1}, Lcom/android/server/facebook/server/FacebookServiceStub;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "version":Ljava/lang/String;
    const-string v1, "response"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x1

    return v1
.end method
