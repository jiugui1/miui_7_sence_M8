.class Lcom/htc/server/WirelessDisplayService$7;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$7;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    const-string v1, "Receive Configuration Tool notifies User started Dongle FW upgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$9200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$7;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v0, v2}, Lcom/htc/server/WirelessDisplayService;->setWifiNetworkLimit(Z)V

    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$7;->this$0:Lcom/htc/server/WirelessDisplayService;

    # invokes: Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$9100(Lcom/htc/server/WirelessDisplayService;)V

    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$7;->this$0:Lcom/htc/server/WirelessDisplayService;

    const-wide/32 v1, 0x124f80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # invokes: Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$9900(Lcom/htc/server/WirelessDisplayService;J)V

    return-void
.end method
