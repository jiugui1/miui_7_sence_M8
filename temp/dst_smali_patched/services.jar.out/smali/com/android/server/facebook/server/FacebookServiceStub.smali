.class public abstract Lcom/android/server/facebook/server/FacebookServiceStub;
.super Landroid/os/Binder;
.source "FacebookServiceStub.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final METHOD_NAME_KEY:Ljava/lang/String; = "method_name"

.field public static final SERVICE_ACCESS_PERMISSION:Ljava/lang/String; = "com.facebook.system.permission.FACEBOOK_SYSTEM_DASH_SERVICE"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDescriptor:Ljava/lang/String;

.field private methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/facebook/method/FacebookMethod$Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "descriptor"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->methods:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p0, p0, p2}, Lcom/android/server/facebook/server/FacebookServiceStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    const-string v0, "getInterface"

    new-instance v1, Lcom/android/server/facebook/method/GetInterfaceMethod;

    invoke-direct {v1, p2}, Lcom/android/server/facebook/method/GetInterfaceMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/server/facebook/method/GetInterfaceMethod;->getServer(Lcom/android/server/facebook/server/FacebookServiceStub;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/facebook/server/FacebookServiceStub;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    const-string v0, "getVersion"

    new-instance v1, Lcom/android/server/facebook/method/GetVersionMethod;

    invoke-direct {v1, p2}, Lcom/android/server/facebook/method/GetVersionMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/server/facebook/method/GetVersionMethod;->getServer(Lcom/android/server/facebook/server/FacebookServiceStub;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/facebook/server/FacebookServiceStub;->registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected abstract enforcePermission(Ljava/lang/String;)V
.end method

.method public abstract getInterface()Landroid/os/Bundle;
.end method

.method public getMethod(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->methods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/facebook/method/FacebookMethod$Server;

    return-object v0
.end method

.method public getMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->methods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const v5, 0x5f444d50

    if-ne p1, v5, :cond_1

    const-string v5, "android.permission.DUMP"

    invoke-virtual {p0, v5}, Lcom/android/server/facebook/server/FacebookServiceStub;->enforcePermission(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :cond_1
    const-string v5, "com.facebook.system.permission.FACEBOOK_SYSTEM_DASH_SERVICE"

    invoke-virtual {p0, v5}, Lcom/android/server/facebook/server/FacebookServiceStub;->enforcePermission(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "request":Landroid/os/Bundle;
    const-string v5, "method_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "methodName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/facebook/server/FacebookServiceStub;->getMethod(Ljava/lang/String;)Lcom/android/server/facebook/method/FacebookMethod$Server;

    move-result-object v0

    .local v0, "method":Lcom/android/server/facebook/method/FacebookMethod$Server;
    if-eqz v0, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "response":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3, p4}, Lcom/android/server/facebook/method/FacebookMethod$Server;->handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v4

    .local v4, "success":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "method":Lcom/android/server/facebook/method/FacebookMethod$Server;
    .end local v3    # "response":Landroid/os/Bundle;
    .end local v4    # "success":Z
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0
.end method

.method public registerMethod(Ljava/lang/String;Lcom/android/server/facebook/method/FacebookMethod$Server;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/android/server/facebook/method/FacebookMethod$Server;

    .prologue
    iget-object v0, p0, Lcom/android/server/facebook/server/FacebookServiceStub;->methods:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
