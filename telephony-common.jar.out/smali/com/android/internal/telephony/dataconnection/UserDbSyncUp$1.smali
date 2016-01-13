.class Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;
.super Ljava/lang/Thread;
.source "UserDbSyncUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    # invokes: Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->loadDb()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->access$000(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    # getter for: Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->access$100(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Ljava/lang/Thread;

    move-result-object v2

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    # getter for: Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->access$200(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->access$202(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Z)Z

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 755
    :goto_0
    monitor-exit v2

    .line 756
    return-void

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
