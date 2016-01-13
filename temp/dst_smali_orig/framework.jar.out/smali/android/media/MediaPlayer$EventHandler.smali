.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:I
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)I

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "MediaPlayer"

    const-string v15, "mediaplayer went away with unhandled events"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    const-string v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Mediaplayer receives message, message type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    const-string v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown message type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v9

    .local v9, "metadata":Landroid/media/Metadata;
    if-eqz v9, :cond_3

    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "MediaPlayer"

    const-string v15, "The content can\'t be seek."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v16, 0x321

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "metadata":Landroid/media/Metadata;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "MediaPlayer"

    const-string v15, "getMetadata() error."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v2

    .local v2, "cxt":Landroid/content/Context;
    if-eqz v2, :cond_5

    const-string v14, "MediaPlayer"

    const-string v15, "U58 Send PlaybackCompleteEvent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.mediaplayer.playback"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "mediaplayer_event"

    const-string v15, "event_playbackcomplete"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v15, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v14, v15}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .end local v2    # "cxt":Landroid/content/Context;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    :cond_6
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsPartialWake:Z
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v12

    .local v12, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .local v11, "reply":Landroid/os/Parcel;
    const/16 v14, 0x22f6

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v14, v12, v11}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "isOffload":I
    const-string v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Is using offload: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    if-nez v7, :cond_9

    const/4 v14, 0x1

    :goto_2
    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v15, v14}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;Z)V

    .end local v7    # "isOffload":I
    .end local v11    # "reply":Landroid/os/Parcel;
    .end local v12    # "request":Landroid/os/Parcel;
    :cond_7
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v16

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    :cond_8
    monitor-exit v15

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .restart local v7    # "isOffload":I
    .restart local v11    # "reply":Landroid/os/Parcel;
    .restart local v12    # "request":Landroid/os/Parcel;
    :cond_9
    const/4 v14, 0x0

    goto :goto_2

    .end local v7    # "isOffload":I
    .end local v11    # "reply":Landroid/os/Parcel;
    .end local v12    # "request":Landroid/os/Parcel;
    :cond_a
    const/4 v14, 0x0

    goto :goto_3

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_b
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_c
    monitor-exit v15

    goto/16 :goto_0

    :catchall_2
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v14

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/MediaPlayer;->mVideoWidth:I
    invoke-static {v14, v15}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    # setter for: Landroid/media/MediaPlayer;->mVideoHeight:I
    invoke-static {v14, v15}, Landroid/media/MediaPlayer;->access$2102(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_0

    :sswitch_a
    const-string v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v5

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    if-eqz v14, :cond_f

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v15, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v14, v15}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .end local v5    # "error_was_handled":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    sparse-switch v14, :sswitch_data_1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_10
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/16 v15, 0x386

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/media/MediaPlayer;->isAudioOnly:Z

    goto/16 :goto_0

    :sswitch_c
    const-string v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Info ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)V

    :sswitch_e
    const/16 v14, 0x322

    move-object/from16 v0, p1

    iput v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_4

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v14

    if-nez v14, :cond_11

    # invokes: Landroid/media/MediaPlayer;->releaseParcel(Landroid/os/Message;)V
    invoke-static/range {p1 .. p1}, Landroid/media/MediaPlayer;->access$2400(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v14, v14, Landroid/os/Parcel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .local v10, "parcel":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mCharset:Ljava/lang/String;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    new-instance v13, Landroid/media/TimedText;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mCharset:Ljava/lang/String;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v10, v14}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;Ljava/lang/String;)V

    .local v13, "text":Landroid/media/TimedText;
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v13}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .end local v13    # "text":Landroid/media/TimedText;
    :cond_13
    new-instance v13, Landroid/media/TimedText;

    invoke-direct {v13, v10}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .restart local v13    # "text":Landroid/media/TimedText;
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v13}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .end local v10    # "parcel":Landroid/os/Parcel;
    .end local v13    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    if-nez v14, :cond_14

    const-string v14, "MediaPlayer"

    const-string v15, "MEDIA_CLOSED_CAPTION failed, no mOnClosedCaptionListener "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v14, :cond_15

    const-string v14, "MediaPlayer"

    const-string v15, "MEDIA_CLOSED_CAPTION , onClosedCaption return null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v14, v14, Landroid/os/Parcel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .restart local v10    # "parcel":Landroid/os/Parcel;
    new-instance v1, Landroid/media/ClosedCaption;

    invoke-direct {v1, v10}, Landroid/media/ClosedCaption;-><init>(Landroid/os/Parcel;)V

    .local v1, "cc":Landroid/media/ClosedCaption;
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_16

    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v8

    .local v8, "list":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v8}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLanguageList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .end local v8    # "list":Ljava/util/List;
    :cond_16
    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_17

    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v8

    .restart local v8    # "list":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v8}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onRegionList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .end local v8    # "list":Ljava/util/List;
    :cond_17
    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_18

    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v1}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    :cond_18
    invoke-virtual {v1}, Landroid/media/ClosedCaption;->getLogoList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v14, "MediaPlayer"

    const-string v15, "MEDIA_CLOSED_CAPTION , onLogo"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v1}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLogo(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    .end local v1    # "cc":Landroid/media/ClosedCaption;
    .end local v10    # "parcel":Landroid/os/Parcel;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v14, v14, Landroid/os/Parcel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .restart local v10    # "parcel":Landroid/os/Parcel;
    new-instance v3, Landroid/media/SubtitleData;

    invoke-direct {v3, v10}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .local v3, "data":Landroid/media/SubtitleData;
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v14, v15, v3}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_3
        0x9 -> :sswitch_8
        0x63 -> :sswitch_f
        0x64 -> :sswitch_a
        0x69 -> :sswitch_10
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_c
        0x322 -> :sswitch_d
        0x323 -> :sswitch_e
    .end sparse-switch
.end method