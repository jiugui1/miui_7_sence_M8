.class public Lcom/android/internal/telephony/TencentSecurityManager;
.super Ljava/lang/Object;
.source "TencentSecurityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TencentSecurityManager$1;,
        Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;,
        Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TENCENT_SERVICE_START:Ljava/lang/String; = "com.tencent.qqpimsecureforhtc.SERVICE_START"

.field private static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final NUMBER_BLOCKED:I = 0x1

.field public static final NUMBER_PASSED:I = 0x0

.field public static final PHONE_SLOT1:I = 0x1

.field public static final PHONE_SLOT2:I = 0x2

.field public static final PROTOCOL_TYPE_MMS:I = 0x1

.field public static final PROTOCOL_TYPE_SMS:I = 0x0

.field public static final PROTOCOL_TYPE_WAP_PUSH:I = 0x2

.field private static final REBIND_LIMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sInstance:Lcom/android/internal/telephony/TencentSecurityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

.field private mServiceConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    iput-object p1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->registerReceiver()V

    return-void
.end method

.method private getConnectListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/TencentSecurityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TencentSecurityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    return-object v0
.end method

.method private static getPhoneSlotTencent(I)I
    .locals 4
    .param p0, "htcSlot"    # I

    .prologue
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TencentSecurityManager]: get phone slot error> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .local v1, "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    :cond_0
    return-void
.end method

.method private notifyOnServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .local v2, "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .end local v0    # "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    :cond_0
    return-void
.end method

.method private rebindService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "retry":I
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-nez v3, :cond_0

    if-ge v1, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    move-result v2

    .local v2, "success":Z
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TencentSecurityManager]: rebindService> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    if-ge v1, v6, :cond_2

    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.qqpimsecureforhtc.SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/TencentSecurityManager;Lcom/android/internal/telephony/TencentSecurityManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindTencentSecurityManager()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.qqpimsecure4htc.server"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    const-string v1, "SMS"

    const-string v2, "[TencentSecurityManager]: bind service failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const-string v1, "SMS"

    const-string v2, "[TencentSecurityManager]: mService is ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBlockedIncomingCall(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "slot"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "optName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .local v1, "ret":I
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->inComingCall(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TencentSecurityManager]: call blocked> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SMS"

    const-string v4, "incoming call exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isBlockedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "htcSlot"    # I
    .param p2, "optName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "protocolType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .local v7, "ret":I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/TencentSecurityManager;->getPhoneSlotTencent(I)I

    move-result v1

    .local v1, "slot":I
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->inComingSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .end local v1    # "slot":I
    :cond_0
    :goto_0
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TencentSecurityManager]: blocked> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v8, :cond_1

    move v0, v8

    :goto_1
    return v0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-string v2, "SMS"

    const-string v3, "[TencentSecurityManager]: onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TencentSecurityManager;->notifyOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .local v1, "isEnabled":Z
    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-interface {v2}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->isEnabled()Z

    move-result v1

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TencentSecurityManager]: isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->unbindTencentSecurityManager()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SMS"

    const-string v3, "isEnabled exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SMS"

    const-string v3, "[TencentSecurityManager]: mServer is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TencentSecurityManager;->notifyOnServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unbindTencentSecurityManager()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v0, :cond_0

    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: mService is released already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
