.class Lcom/android/server/AlarmManagerService$NightModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2094
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2095
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2096
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2097
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2098
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2099
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2100
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2101
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 2104
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConnectStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2105
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2106
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2107
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2109
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    monitor-exit v3

    .line 2132
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 2111
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 2112
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AlarmQueuing] connectivity data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3202(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2131
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2114
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2115
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AlarmQueuing] connectivity wifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_1

    .line 2118
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const-string v2, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2119
    const-string v2, "AlarmManager"

    const-string v4, "[AlarmQueuing] night mode turn on mobile"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3202(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_1

    .line 2121
    :cond_4
    const-string v2, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2122
    const-string v2, "AlarmManager"

    const-string v4, "[AlarmQueuing] night mode turn off mobile"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3202(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_1

    .line 2124
    :cond_5
    const-string v2, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2125
    const-string v2, "AlarmManager"

    const-string v4, "[AlarmQueuing] smartsync night mode turn on wifi"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_1

    .line 2127
    :cond_6
    const-string v2, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2128
    const-string v2, "AlarmManager"

    const-string v4, "[AlarmQueuing] smartsync night mode turn off wifi"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
