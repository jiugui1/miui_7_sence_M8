.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;-><init>(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

.field final synthetic val$this$0:Lcom/android/server/connectivity/PPPoE;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/server/connectivity/PPPoE;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iput-object p2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;->val$this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v6, v6, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v6}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .local v5, "wifiInfo":Landroid/net/NetworkInfo;
    const-string v6, "net.wifi.restrit"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "Ispwersavemode":Z
    if-eqz v0, :cond_2

    :try_start_1
    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before get true networkinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .local v1, "connMgr":Landroid/net/IConnectivityManager;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-interface {v1, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .local v4, "newinfo":Landroid/net/NetworkInfo;
    move-object v5, v4

    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after get true networkinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "connMgr":Landroid/net/IConnectivityManager;
    .end local v4    # "newinfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    :try_start_2
    const-string v6, "PPPoE"

    const-string v7, "wifi status changed while no info!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "Ispwersavemode":Z
    .end local v5    # "wifiInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore net config error while wifi status change:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "Ispwersavemode":Z
    .restart local v5    # "wifiInfo":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->modifyRoutesAndDns()Z
    invoke-static {v6}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->route_metched:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method