.class Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "GetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/GetPropertyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPropertyServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/GetPropertyMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/GetPropertyMethod;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;->this$0:Lcom/android/server/facebook/method/GetPropertyMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/GetPropertyMethod;Lcom/android/server/facebook/method/GetPropertyMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/GetPropertyMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/GetPropertyMethod$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;-><init>(Lcom/android/server/facebook/method/GetPropertyMethod;)V

    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/facebook/method/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    const-string v1, "response"

    invoke-direct {p0, v0}, Lcom/android/server/facebook/method/GetPropertyMethod$GetPropertyServer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
