.class Landroid/media/MediaPlayer$1;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->start_stop_notify(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$act:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1466
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    iput p3, p0, Landroid/media/MediaPlayer$1;->val$act:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1468
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1470
    .local v0, "actThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 1471
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "MediaPlayer.start_stop_notify, no activity thread!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1475
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1476
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "MediaPlayer.start_stop_notify, no context!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/media/MediaPlayer$1;->val$act:I

    # invokes: Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V
    invoke-static {v2, v1, v3}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;Landroid/content/Context;I)V

    goto :goto_0
.end method
