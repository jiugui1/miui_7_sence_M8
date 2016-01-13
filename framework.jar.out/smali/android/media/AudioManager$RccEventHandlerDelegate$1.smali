.class Landroid/media/AudioManager$RccEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$RccEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

.field final synthetic val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$RccEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3339
    iput-object p1, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3347
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3348
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3374
    :cond_0
    :goto_0
    return-void

    .line 3350
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "metadata"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3351
    .local v2, "metadata":Landroid/os/Bundle;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "artwork"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3352
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Landroid/media/AudioManager$OnRccChangeListener;->onAllMetadataChange(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3355
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    .end local v2    # "metadata":Landroid/os/Bundle;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "metadata"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3356
    .restart local v2    # "metadata":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/media/AudioManager$OnRccChangeListener;->onMetadataChange(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3359
    .end local v2    # "metadata":Landroid/os/Bundle;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "artwork"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3360
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/media/AudioManager$OnRccChangeListener;->onArtworkChange(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3363
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "packagename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3364
    .local v3, "packagename":Ljava/lang/String;
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5, v3}, Landroid/media/AudioManager$OnRccChangeListener;->onPlaybackStateChange(ILjava/lang/String;)V

    goto :goto_0

    .line 3367
    .end local v3    # "packagename":Ljava/lang/String;
    :pswitch_4
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Landroid/media/AudioManager$OnRccChangeListener;->onTransportControlFlagsChange(I)V

    goto :goto_0

    .line 3370
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "clearing"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3371
    .local v1, "clearing":Z
    iget-object v4, p0, Landroid/media/AudioManager$RccEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$RccEventHandlerDelegate;

    iget-object v4, v4, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mOnRccChangeListener:Landroid/media/AudioManager$OnRccChangeListener;
    invoke-static {v4}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$OnRccChangeListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5, v1}, Landroid/media/AudioManager$OnRccChangeListener;->onCurrentClientIdChange(IZ)V

    goto/16 :goto_0

    .line 3348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
