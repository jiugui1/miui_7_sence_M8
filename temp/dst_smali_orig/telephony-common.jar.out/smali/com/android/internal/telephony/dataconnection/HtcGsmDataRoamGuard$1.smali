.class Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "state":Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    const-string v3, "receive ACTION_ANY_DATA_CONNECTION_STATE_CHANGED, but no data state"

    # invokes: Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->access$000(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;Ljava/lang/String;)V

    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "state":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "mode":I
    const-string v2, "CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v0, 0x100000

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v2, "CONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v0, 0x200000

    goto :goto_1

    :cond_3
    const/high16 v0, 0x300000

    goto :goto_1
.end method
