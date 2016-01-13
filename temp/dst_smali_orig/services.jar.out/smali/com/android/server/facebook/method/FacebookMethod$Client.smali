.class public Lcom/android/server/facebook/method/FacebookMethod$Client;
.super Ljava/lang/Object;
.source "FacebookMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/FacebookMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/FacebookMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/FacebookMethod;)V
    .locals 0

    .prologue
    .local p0, "this":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<TT;>;"
    iput-object p1, p0, Lcom/android/server/facebook/method/FacebookMethod$Client;->this$0:Lcom/android/server/facebook/method/FacebookMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<TT;>;"
    return-void
.end method

.method public callMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 5
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<TT;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/facebook/method/FacebookMethod$Client;->this$0:Lcom/android/server/facebook/method/FacebookMethod;

    # getter for: Lcom/android/server/facebook/method/FacebookMethod;->mDescriptor:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/facebook/method/FacebookMethod;->access$000(Lcom/android/server/facebook/method/FacebookMethod;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/server/facebook/method/FacebookMethod$Client;->addArgs(Landroid/os/Bundle;)V

    const-string v3, "method_name"

    iget-object v4, p0, Lcom/android/server/facebook/method/FacebookMethod$Client;->this$0:Lcom/android/server/facebook/method/FacebookMethod;

    # getter for: Lcom/android/server/facebook/method/FacebookMethod;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/facebook/method/FacebookMethod;->access$100(Lcom/android/server/facebook/method/FacebookMethod;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/facebook/method/FacebookMethod$Client;->getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .end local v0    # "args":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getReturnValue(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/facebook/method/FacebookMethod$Client;, "Lcom/android/server/facebook/method/FacebookMethod$Client<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
