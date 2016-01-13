.class Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcAppLifeCycleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppLifeCycleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadAppListReceiver"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitor;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    const-class v0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitor;Lcom/htc/server/HtcAppLifeCycleMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/HtcAppLifeCycleMonitor;
    .param p2, "x1"    # Lcom/htc/server/HtcAppLifeCycleMonitor$1;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.htcpowermanager.batterymonitor.UPDATE_BAD_APP_LIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const-string v3, "add_app_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    .local v0, "addAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "delete_app_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 161
    .local v2, "deleteAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "add_app_list"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 164
    const-string v3, "delete_app_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    iget-object v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$100(Lcom/htc/server/HtcAppLifeCycleMonitor;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    # getter for: Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$100(Lcom/htc/server/HtcAppLifeCycleMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 177
    .end local v0    # "addAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "deleteAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 174
    .restart local v0    # "addAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "deleteAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;->TAG:Ljava/lang/String;

    const-string v4, "onReceive(): non-ui handler is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
