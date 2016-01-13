.class Lcom/android/internal/os/BatteryStatsImpl$1;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 509
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->sBootCompletedObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 510
    :try_start_0
    const-string v1, "BatSI"

    const-string v3, "Timeout Runnable"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.battery.action.clearbatterydata"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "clearIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # invokes: Lcom/android/internal/os/BatteryStatsImpl;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Intent;)V

    .line 513
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsImpl;->mClearAllBeforeBootCompleted:Z
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$602(Z)Z

    .line 514
    monitor-exit v2

    .line 515
    return-void

    .line 514
    .end local v0    # "clearIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
