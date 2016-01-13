.class public Lcom/htc/server/WfdService;
.super Landroid/app/Service;
.source "WfdService.java"


# static fields
.field private static final DBG:Z = true

.field private static final NOTIFY_STATE_CHANGE:I = 0x1

.field private static final PROFILE_CLOSE_SOCKET:I = 0x4

.field private static final PROFILE_CREATE_SOCKET:I = 0x1

.field private static final PROFILE_SEND_NETWORK_CONFIGS:I = 0x2

.field private static final PROFILE_WAIT_DONGLE_CONFIGS:I = 0x3

.field static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private final mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/htc/wfdservice/IWfdServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

.field private mIsSocketConnected:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerIp:Ljava/lang/String;

.field private mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private notSupportConcurrent:Z

.field private synchronize_lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/htc/server/WfdService;->notSupportConcurrent:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mClientInfo:Ljava/util/ArrayList;

    .line 64
    iput-boolean v1, p0, Lcom/htc/server/WfdService;->mIsSocketConnected:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdService;->synchronize_lock:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 76
    new-instance v0, Lcom/htc/server/WfdService$1;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdService$1;-><init>(Lcom/htc/server/WfdService;)V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/htc/server/WfdService$2;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdService$2;-><init>(Lcom/htc/server/WfdService;)V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WfdService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/server/WfdService;->synchronize_lock:Ljava/lang/Object;

    return-object v0
.end method

.method private reInitializeWfdStateMachine(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 215
    const-string v0, "WfdService"

    const-string v1, "reInitializeWfdStateMachine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->quit()V

    .line 217
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->start()V

    .line 218
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setMode(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->startScanDongles(Z)V

    .line 220
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    const-class v0, Lcom/htc/wfdservice/IWfdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "WfdService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/htc/server/WfdService;->mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const-string v2, "WfdService"

    const-string v3, "[WFD]===>onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/htc/server/WfdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/htc/server/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/WfdService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 147
    iget-object v2, p0, Lcom/htc/server/WfdService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "System"

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 148
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v2, "notSupportConcurrent"

    invoke-interface {v1, v2, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/server/WfdService;->notSupportConcurrent:Z

    .line 149
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notSupportConcurrent value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/server/WfdService;->notSupportConcurrent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.L2PE_FAIL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-boolean v2, p0, Lcom/htc/server/WfdService;->notSupportConcurrent:Z

    if-eqz v2, :cond_1

    .line 170
    sput-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    .line 171
    const-string v2, "WfdUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    if-nez v2, :cond_0

    .line 178
    const-string v2, "WfdService"

    const-string v3, "WfdStateMachine is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    new-instance v2, Lcom/htc/server/WfdStateMachine;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    .line 182
    iget-object v2, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    iget-object v2, p0, Lcom/htc/server/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 184
    .local v0, "apmConfig":Landroid/net/wifi/WifiConfiguration;
    return-void

    .line 173
    .end local v0    # "apmConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sput-boolean v6, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    .line 174
    const-string v2, "WfdUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy(): mWfdStateMachine != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->quit()V

    .line 192
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy(): mWfdStateMachine.quit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
