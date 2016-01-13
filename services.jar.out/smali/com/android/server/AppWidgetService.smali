.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field private final mAppWidgetServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mLocale:Ljava/util/Locale;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 381
    new-instance v1, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 70
    .local v0, "primary":Lcom/android/server/AppWidgetServiceImpl;
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetService;I)Lcom/android/server/AppWidgetServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppWidgetService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppWidgetService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkPermission(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 244
    .local v7, "realUserId":I
    return-void
.end method

.method private getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->checkPermission(I)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "sendInitial":Z
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v3

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl;

    .line 252
    .local v1, "service":Lcom/android/server/AppWidgetServiceImpl;
    if-nez v1, :cond_0

    .line 253
    const-string v2, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find AppWidgetServiceImpl for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Lcom/android/server/AppWidgetServiceImpl;

    .end local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v4}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 256
    .restart local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    iget-boolean v2, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 259
    const/4 v0, 0x1

    .line 261
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    .line 265
    :cond_1
    return-object v1

    .line 261
    .end local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getImplForUser(IZ)Lcom/android/server/AppWidgetServiceImpl;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "useForeground"    # Z

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->checkPermission(I)V

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "sendInitial":Z
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl;

    .line 275
    .local v1, "service":Lcom/android/server/AppWidgetServiceImpl;
    if-nez v1, :cond_0

    .line 276
    const-string v2, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find AppWidgetServiceImpl for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Lcom/android/server/AppWidgetServiceImpl;

    .end local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v4}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 279
    .restart local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    iget-boolean v2, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 288
    :cond_1
    sput-boolean p2, Lcom/android/server/AppWidgetServiceImpl;->sUseForegroundFlag:Z

    .line 289
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    .line 291
    :cond_2
    return-object v1

    .line 284
    .end local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public allocateAppWidgetId(Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public backupAppWidgetData(ILandroid/os/Bundle;I)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 418
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->backupAppWidgetData(ILandroid/os/Bundle;)V

    .line 419
    return-void
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p4}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v3

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl;

    .line 161
    .local v1, "service":Lcom/android/server/AppWidgetServiceImpl;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.widget.weatherclock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->sUseForegroundFlag:Z

    .line 167
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 170
    .local v0, "bReturn":Z
    if-eqz v1, :cond_1

    .line 171
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->sUseForegroundFlag:Z

    .line 173
    :cond_1
    return v0

    .line 161
    .end local v0    # "bReturn":Z
    .end local v1    # "service":Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p4}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 192
    return-void
.end method

.method public deleteAllHosts(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAllHosts()V

    .line 146
    return-void
.end method

.method public deleteAppWidgetId(II)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetId(I)V

    .line 136
    return-void
.end method

.method public deleteHost(II)V
    .locals 1
    .param p1, "hostId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHost(I)V

    .line 141
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "AppWidgetService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v4

    .line 370
    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 371
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 374
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl;

    .line 375
    .local v2, "service":Lcom/android/server/AppWidgetServiceImpl;
    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/AppWidgetServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v2    # "service":Lcom/android/server/AppWidgetServiceImpl;
    :cond_0
    monitor-exit v4

    .line 379
    return-void

    .line 378
    .end local v0    # "i":I
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;I)[I
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetIdsForHost(II)[I
    .locals 1
    .param p1, "hostId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIdsForHost(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetInfo(II)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetOptions(II)Landroid/os/Bundle;
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 317
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetViews(II)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders(II)Ljava/util/List;
    .locals 1
    .param p1, "categoryFilter"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyAppWidgetViewDataChanged([III)V
    .locals 1
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChanged([II)V

    .line 331
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 211
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 214
    .local v0, "impl":Lcom/android/server/AppWidgetServiceImpl;
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 216
    if-nez v0, :cond_1

    .line 217
    invoke-static {p1}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "impl":Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 219
    .restart local v0    # "impl":Lcom/android/server/AppWidgetServiceImpl;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->onUserRemoved()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onUserStopping(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 225
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 228
    .local v0, "impl":Lcom/android/server/AppWidgetServiceImpl;
    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 230
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->onUserStopping()V

    .line 232
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "impl":Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 338
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I
    .locals 4
    .param p1, "host"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "useForground":Z
    if-eqz p2, :cond_0

    const-string v1, "com.htc.launcher"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 206
    :cond_0
    const-string v1, "AppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendInitialBroadcasts(),set useForground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p5, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(IZ)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v1

    return-object v1
.end method

.method public stopListening(II)V
    .locals 1
    .param p1, "hostId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->stopListening(I)V

    .line 343
    return-void
.end method

.method public systemRunning(Z)V
    .locals 12
    .param p1, "safeMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 76
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v11, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;I)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 356
    return-void
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;I)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 312
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 362
    return-void
.end method
