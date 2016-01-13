.class public Lcom/android/server/location/CarGpsProvider;
.super Lcom/android/server/location/MockProvider;
.source "CarGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/CarGpsProvider$Listener;,
        Lcom/android/server/location/CarGpsProvider$ProviderHandler;,
        Lcom/android/server/location/CarGpsProvider$CarGpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final CHECK_LOCATION:I = 0x1

.field public static final DEBUG:Z = true

.field private static final ENABLE:I = 0x2

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final SET_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CarGpsProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field public static final VERBOSE:Z = true


# instance fields
.field private final mClientUids:Landroid/util/SparseIntArray;

.field public mContext:Landroid/content/Context;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private mHtcModeEnabled:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/CarGpsProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingMock:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Lcom/android/server/location/CarGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/CarGpsProvider$1;-><init>(Lcom/android/server/location/CarGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 96
    new-instance v0, Lcom/android/server/location/CarGpsProvider$ProviderHandler;

    invoke-direct {v0, p0}, Lcom/android/server/location/CarGpsProvider$ProviderHandler;-><init>(Lcom/android/server/location/CarGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/CarGpsProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/CarGpsProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/CarGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/CarGpsProvider;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/CarGpsProvider;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private enableLocationTracking(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/location/CarGpsProvider;->reportStatus(Z)V

    .line 372
    :cond_0
    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->enable()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->disable()V

    goto :goto_0
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 284
    const-string v2, "CarGpsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-boolean v2, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v2, :cond_1

    .line 288
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 289
    .local v1, "uids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 290
    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    aput v2, v1, v0

    .line 291
    const-string v2, "CarGpsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetRequest: source uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/location/CarGpsProvider;->enableLocationTracking(Z)V

    .line 297
    .end local v0    # "i":I
    .end local v1    # "uids":[I
    :goto_1
    return-void

    .line 295
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/CarGpsProvider;->enableLocationTracking(Z)V

    goto :goto_1
.end method

.method private reportStatus(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    .line 181
    const-string v4, "CarGpsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v5, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 184
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 185
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v2, "listener":Lcom/android/server/location/CarGpsProvider$Listener;
    if-eqz p1, :cond_0

    .line 188
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 184
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CarGpsProvider"

    const-string v6, "RemoteException in reportStatus"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Lcom/android/server/location/CarGpsProvider$Listener;
    :cond_1
    monitor-exit v5

    .line 200
    return-void

    .line 199
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 204
    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 206
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 209
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate add listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v3

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    monitor-exit v3

    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearMockListener()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 350
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "CarGpsProvider"

    const-string v1, "disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0}, Lcom/android/server/location/MockProvider;->disable()V

    .line 103
    return-void
.end method

.method public disableHtcMode()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->mHtcModeEnabled:Z

    .line 117
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "CarGpsProvider"

    const-string v1, "enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Lcom/android/server/location/MockProvider;->enable()V

    .line 109
    return-void
.end method

.method public enableHtcMode()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->mHtcModeEnabled:Z

    .line 113
    return-void
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getListenerCount()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isHtcMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->mHtcModeEnabled:Z

    return v0
.end method

.method public isUsedMock()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->mUsingMock:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 219
    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 221
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 224
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unneeded remove listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v3

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 229
    monitor-exit v3

    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNmea(Ljava/lang/String;J)V
    .locals 7
    .param p1, "nmea"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    const-string v4, "CarGpsProvider"

    const-string v5, "reportNmea not work due to isEnabled() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 326
    :try_start_0
    const-string v4, "CarGpsProvider"

    const-string v6, "reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 330
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 332
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .local v2, "listener":Lcom/android/server/location/CarGpsProvider$Listener;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    invoke-interface {v4, p2, p3, p1}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CarGpsProvider"

    const-string v6, "RemoteException in reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/android/server/location/CarGpsProvider$Listener;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-super {p0, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v0, "CarGpsProvider"

    const-string v1, "setLocation not work due to the isEnable() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 176
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/CarGpsProvider;->sendMessage(IILjava/lang/Object;)V

    .line 177
    return-void
.end method

.method public useMock(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/location/CarGpsProvider;->mUsingMock:Z

    .line 129
    return-void
.end method
