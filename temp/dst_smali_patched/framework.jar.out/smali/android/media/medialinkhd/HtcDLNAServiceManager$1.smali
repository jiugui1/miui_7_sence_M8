.class Landroid/media/medialinkhd/HtcDLNAServiceManager$1;
.super Landroid/os/Handler;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, Case MSG_CHANGE_STATE, setState(state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    # invokes: Landroid/media/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$000(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
