.class Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "GetInterfaceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetInterfaceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInterfaceServer"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/facebook/server/FacebookServiceStub;

.field final synthetic this$0:Lcom/android/server/facebook/method/GetInterfaceMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/GetInterfaceMethod;Lcom/android/server/facebook/server/FacebookServiceStub;)V
    .locals 0
    .param p2, "service"    # Lcom/android/server/facebook/server/FacebookServiceStub;

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;->this$0:Lcom/android/server/facebook/method/GetInterfaceMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    iput-object p2, p0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;->mService:Lcom/android/server/facebook/server/FacebookServiceStub;

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
    iget-object v1, p0, Lcom/android/server/facebook/method/GetInterfaceMethod$GetInterfaceServer;->mService:Lcom/android/server/facebook/server/FacebookServiceStub;

    invoke-virtual {v1}, Lcom/android/server/facebook/server/FacebookServiceStub;->getInterface()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "methods":Landroid/os/Bundle;
    const-string v1, "response"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1
.end method
