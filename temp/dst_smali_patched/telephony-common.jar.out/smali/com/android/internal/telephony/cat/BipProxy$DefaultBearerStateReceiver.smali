.class Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBearerStateReceiver"
.end annotation


# instance fields
.field mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

.field mChannel:I

.field mCm:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mFilter:Landroid/content/IntentFilter;

.field mIsRegistered:Z

.field mOngoingSetupMessage:Landroid/os/Message;

.field final mSetupMessageLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mCm:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    return-void
.end method

.method private onConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - DefaultBearerStateReceiver: onConnected mBearerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    const/4 v1, 0x0

    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v2, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .local v0, "cid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_4

    const-string v0, "-1"

    :cond_3
    :goto_1
    invoke-static {v1, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_3

    const-string v0, "0"

    goto :goto_1
.end method

.method private onDisconnected()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "BIP - DefaultBearerStateReceiver: onDisconnected"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .local v4, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    .local v3, "dropped":Z
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v5, :cond_3

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BIP - DefaultBearerStateReceiver: onDisconnected mOngoingSetupMessage is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x1

    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget-object v5, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "disconnectMsg":Landroid/os/Message;
    iget v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    .end local v2    # "disconnectMsg":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-eq v5, v7, :cond_5

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "BIP - DefaultBearerStateReceiver: onDisconnected msg != MSG_ID_TEARDOWN_DATA_CALL"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_6
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BIP - DefaultBearerStateReceiver: onDisconnected connect dropped. object invalid, TR not sent!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    shl-int/lit8 v6, v6, 0x8

    or-int/lit8 v6, v6, 0x5

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;I)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/BipProxy;->access$1000(Lcom/android/internal/telephony/cat/BipProxy;I)V

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .local v1, "csfe":Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v6, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v5, v6, :cond_9

    new-instance v1, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v1    # "csfe":Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const-string v6, "Default bearer failed to connect"

    invoke-direct {v1, v5, v6}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .restart local v1    # "csfe":Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    :cond_9
    invoke-static {v4, v8, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private onStillConnecting()V
    .locals 1

    .prologue
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - DefaultBearerStateReceiver: onStillConnecting"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBearerType()Lcom/android/internal/telephony/cat/BipProxy$BipType;
    .locals 2

    .prologue
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - DefaultBearerStateReceiver: getBearerType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "noConnection":Z
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, "netInfo":Landroid/net/NetworkInfo;
    const-string v4, "otherNetwork"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "otherNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BIP - DefaultBearerStateReceiver: Network Info is null."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v5, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v4, v5, :cond_5

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onConnected()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onStillConnecting()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onDisconnected()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v5, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer CONNECTED"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onConnected()V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer CONNECTING. Waiting..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onStillConnecting()V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer SUSPENDED."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onDisconnected()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V
    .locals 2
    .param p1, "type"    # Lcom/android/internal/telephony/cat/BipProxy$BipType;
    .param p2, "channel"    # I

    .prologue
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - DefaultBearerStateReceiver: setBearerType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    iput p2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    return-void
.end method

.method public setOngoingSetupMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIP - DefaultBearerStateReceiver: setOngoingSetupMessage msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIP - DefaultBearerStateReceiver: registerReceiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIP - DefaultBearerStateReceiver: unregisterReceiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method