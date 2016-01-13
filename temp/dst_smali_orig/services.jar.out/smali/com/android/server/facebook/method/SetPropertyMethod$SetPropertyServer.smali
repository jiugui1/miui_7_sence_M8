.class Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "SetPropertyMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetPropertyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPropertyServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/SetPropertyMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/SetPropertyMethod;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;->this$0:Lcom/android/server/facebook/method/SetPropertyMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/SetPropertyMethod;Lcom/android/server/facebook/method/SetPropertyMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/SetPropertyMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/SetPropertyMethod$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;-><init>(Lcom/android/server/facebook/method/SetPropertyMethod;)V

    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/facebook/method/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    const-string v2, "key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/facebook/method/SetPropertyMethod$SetPropertyServer;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
