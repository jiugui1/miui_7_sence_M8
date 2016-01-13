.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlugin$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onError=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;Z)V

    :cond_1
    return-void
.end method

.method public onResponse(II)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v11, 0x64

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]onResponse=> what: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extra: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "bDLNAConnected":Z
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mDLNAInitDone:Z
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$3202(Landroid/media/MediaPlayer;Z)Z

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPluginDLNA;->handleRelease()V

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5, v10}, Landroid/media/MediaPlayer;->access$3302(Landroid/media/MediaPlayer;Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA;

    :cond_1
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$3400(Landroid/media/MediaPlayer;Z)V

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->resetDLNAParameters()V
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3500(Landroid/media/MediaPlayer;)V

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mPrepareDone:Z
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$3602(Landroid/media/MediaPlayer;Z)Z

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :sswitch_1
    packed-switch p2, :pswitch_data_0

    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]Unknown extra code for prepare response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    # setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v8, v5}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]Prepare success, enable DLNA mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$3400(Landroid/media/MediaPlayer;Z)V

    :goto_3
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/16 v6, -0x1f4

    invoke-virtual {v5, v11, v6, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "m":Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2    # "m":Landroid/os/Message;
    :pswitch_0
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]PREPARE SUCCESS"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]PREPARE FAILED"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]Prepare failed, do not enable DLNA mode"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$3400(Landroid/media/MediaPlayer;Z)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v11, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "m":Landroid/os/Message;
    :cond_5
    :try_start_0
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLNA][initDLNA]get duration from native _getDuration(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPluginDLNA;->setDuration(I)V

    :cond_6
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPluginDLNA;->isLocalProxy()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]Local Proxy link, reset MediaPlayer and use default icon."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->_reset()V
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3700(Landroid/media/MediaPlayer;)V

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/16 v6, 0x2001

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "m":Landroid/os/Message;
    :cond_7
    :goto_4
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mVideoWidth:I
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mVideoHeight:I
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA] no video size info, callback dummy video size to app and reset MediaPlayer and use default icon."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/4 v6, 0x5

    const/16 v7, 0x1e0

    const/16 v8, 0x140

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "m":Landroid/os/Message;
    :cond_8
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->_reset()V
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3700(Landroid/media/MediaPlayer;)V

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/16 v6, 0x2001

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "m":Landroid/os/Message;
    :cond_9
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v4

    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "reply":Landroid/os/Parcel;
    const/16 v5, 0x22e8

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]set GENERATEDLNATHUMBNAIL flag +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    invoke-static {v5, v4, v3}, Landroid/media/MediaPlayer;->access$3800(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I

    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]set GENERATEDLNATHUMBNAIL flag -"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "request":Landroid/os/Parcel;
    :cond_b
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]mMediaPlayer.mDLNAAgent is null..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x2041 -> :sswitch_0
        0x2080 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2081
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onStateChanged=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0    # "m":Landroid/os/Message;
    :sswitch_1
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]onStateChanged=> MEDIA_SEEK_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1080 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method
