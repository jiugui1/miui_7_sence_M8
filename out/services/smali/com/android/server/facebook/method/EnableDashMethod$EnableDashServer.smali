.class Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "EnableDashMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/EnableDashMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableDashServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/EnableDashMethod;


# direct methods
.method private constructor <init>(Lcom/android/server/facebook/method/EnableDashMethod;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;->this$0:Lcom/android/server/facebook/method/EnableDashMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/facebook/method/EnableDashMethod;Lcom/android/server/facebook/method/EnableDashMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/facebook/method/EnableDashMethod;
    .param p2, "x1"    # Lcom/android/server/facebook/method/EnableDashMethod$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;-><init>(Lcom/android/server/facebook/method/EnableDashMethod;)V

    return-void
.end method

.method private enableDash(Z)V
    .locals 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 52
    .local v0, "identity":J
    :try_start_0
    const-string v2, "dashEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/facebook/method/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-void

    .line 56
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    .line 44
    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 45
    .local v0, "enable":Z
    invoke-direct {p0, v0}, Lcom/android/server/facebook/method/EnableDashMethod$EnableDashServer;->enableDash(Z)V

    .line 46
    const/4 v1, 0x1

    return v1
.end method
