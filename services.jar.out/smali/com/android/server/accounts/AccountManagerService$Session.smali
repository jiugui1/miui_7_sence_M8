.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V
    .locals 5
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2102
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2103
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 2092
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 2093
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 2094
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 2096
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2105
    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2106
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2107
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 2108
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2109
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 2110
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 2111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 2112
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$1500(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 2113
    :try_start_0
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$1500(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    if-eqz p3, :cond_1

    .line 2117
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2123
    :cond_1
    :goto_0
    return-void

    .line 2114
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    goto :goto_0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 8
    .param p1, "authenticatorType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 2381
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->access$1900(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v3

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 2383
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    .line 2384
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2385
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there is no authenticator for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bailing out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :goto_0
    return v2

    .line 2391
    :cond_0
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there is no authenticator for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bailing out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2398
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2399
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2400
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2401
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2402
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performing bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_2
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->access$1600(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/accounts/AccountManagerService$Session;->getBindNotForegroundFlag(Ljava/lang/String;)I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2406
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2407
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2412
    :cond_3
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2419
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1500(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 2147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1500(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2149
    monitor-exit v1

    .line 2161
    :goto_0
    return-void

    .line 2151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2159
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 2160
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    goto :goto_0

    .line 2151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getBindNotForegroundFlag(Ljava/lang/String;)I
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 2424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/server/accounts/AccountManagerService;->COMPONENT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$2000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2425
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService;->COMPONENT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$2000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 2426
    const/4 v1, 0x4

    .line 2428
    :goto_1
    return v1

    .line 2424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2428
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 2193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2194
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1600(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2196
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .prologue
    .line 2182
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 2189
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 2165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2166
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 2167
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1700(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2205
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 4

    .prologue
    .line 2126
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 2127
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getResponseAndClose(), Session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_2

    .line 2131
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 2132
    const-string v1, "AccountManagerService"

    const-string v2, "mResponse = null, call cancelTineout(), unbind() and return null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 2135
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    .line 2138
    const/4 v0, 0x0

    .line 2142
    :goto_0
    return-object v0

    .line 2140
    :cond_2
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2141
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 2354
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 2356
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    .line 2357
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2358
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    :cond_1
    :goto_0
    return-void

    .line 2363
    :catch_0
    move-exception v0

    .line 2364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2365
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2370
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    .prologue
    .line 2349
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 2350
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 2257
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 2258
    const/4 v9, 0x0

    .line 2259
    .local v9, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    const-string v14, "intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    .end local v9    # "intent":Landroid/content/Intent;
    check-cast v9, Landroid/content/Intent;

    .restart local v9    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    .line 2262
    const/4 v5, 0x0

    .line 2263
    .local v5, "bGrantCredentialsIntent":Z
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_0

    const-class v14, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2266
    const/4 v5, 0x1

    .line 2268
    :cond_0
    if-nez v5, :cond_2

    .line 2276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2277
    .local v4, "authenticatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2279
    .local v6, "bid":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/accounts/AccountManagerService;->access$1600(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2280
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v15}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    invoke-virtual {v10, v9, v14, v15}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 2281
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2282
    .local v13, "targetUid":I
    invoke-virtual {v10, v4, v13}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v14

    if-eqz v14, :cond_1

    .line 2284
    new-instance v14, Ljava/lang/SecurityException;

    const-string v15, "Activity to be started with KEY_INTENT must share Authenticator\'s signatures"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2289
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "targetUid":I
    :catchall_0
    move-exception v14

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "targetUid":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    .end local v4    # "authenticatorUid":I
    .end local v5    # "bGrantCredentialsIntent":Z
    .end local v6    # "bid":J
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "targetUid":I
    :cond_2
    if-eqz p1, :cond_3

    const-string v14, "authtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2297
    const-string v14, "authAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2298
    .local v2, "accountName":Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2299
    .local v3, "accountType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2300
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    .local v1, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    invoke-static {v15, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->access$1800(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 2306
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v14, :cond_6

    if-eqz p1, :cond_6

    const-string v14, "intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2312
    .local v12, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_0
    if-eqz v12, :cond_5

    .line 2314
    if-nez p1, :cond_7

    .line 2315
    :try_start_1
    const-string v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2316
    const-string v14, "AccountManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " calling onError() on response "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_4
    const/4 v14, 0x5

    const-string v15, "null bundle returned"

    invoke-interface {v12, v14, v15}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2345
    :cond_5
    :goto_1
    return-void

    .line 2310
    .end local v12    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v12

    .restart local v12    # "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_0

    .line 2322
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v14, :cond_8

    .line 2323
    const-string v14, "authtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2325
    :cond_8
    const-string v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2326
    const-string v14, "AccountManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " calling onResult() on response "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_9
    const-string v14, "errorCode"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-lez v14, :cond_a

    if-nez v9, :cond_a

    .line 2332
    const-string v14, "errorCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "errorMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2338
    :catch_0
    move-exception v8

    .line 2340
    .local v8, "e":Landroid/os/RemoteException;
    const-string v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2341
    const-string v14, "AccountManagerService"

    const-string v15, "failure while notifying response"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2335
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    .line 2209
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2219
    :goto_0
    return-void

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "remote exception"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 2215
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "nullpointer exception"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2223
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 2225
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 2227
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "disconnected"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2229
    :catch_0
    move-exception v0

    .line 2230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2231
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 4

    .prologue
    .line 2241
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 2242
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 2244
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "timeout"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2248
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public scheduleTimeout()V
    .locals 4

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1700(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$1700(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2201
    return-void
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method