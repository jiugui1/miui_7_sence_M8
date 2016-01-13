.class Lcom/htc/server/HtcAppWifiOffload$1;
.super Landroid/os/HandlerThread;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcAppWifiOffload;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppWifiOffload;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppWifiOffload;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload$1;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 261
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload$1;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # invokes: Lcom/htc/server/HtcAppWifiOffload;->initInThread()V
    invoke-static {v0}, Lcom/htc/server/HtcAppWifiOffload;->access$000(Lcom/htc/server/HtcAppWifiOffload;)V

    .line 262
    return-void
.end method
