.class Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;
.super Landroid/os/Handler;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;->this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1201
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;->this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    iget-object v0, v0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager;->access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 1204
    :cond_0
    return-void
.end method
