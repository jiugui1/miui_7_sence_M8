.class final Lcom/android/server/location/CarGpsProvider$Listener;
.super Ljava/lang/Object;
.source "CarGpsProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/CarGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mLsr:Landroid/location/IGpsStatusListener;

.field final synthetic this$0:Lcom/android/server/location/CarGpsProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/CarGpsProvider;Landroid/location/IGpsStatusListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/location/CarGpsProvider$Listener;->this$0:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p2, p0, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    .line 304
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "CarGpsProvider"

    const-string v1, "GPS Mock status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider$Listener;->this$0:Lcom/android/server/location/CarGpsProvider;

    # getter for: Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/CarGpsProvider;->access$100(Lcom/android/server/location/CarGpsProvider;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider$Listener;->this$0:Lcom/android/server/location/CarGpsProvider;

    # getter for: Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/CarGpsProvider;->access$100(Lcom/android/server/location/CarGpsProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider$Listener;->mLsr:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 315
    :cond_0
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
