.class Landroid/media/MediaPluginDLNA$1;
.super Ljava/lang/Object;
.source "MediaPluginDLNA.java"

# interfaces
.implements Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected => mDLNAManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$400(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$402(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;

    .line 177
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$400(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xc350

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 179
    :cond_2
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "invoke setRendererAsMediaLinkHD()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$700(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/16 v1, 0x2080

    const/16 v2, 0x2082

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0
.end method

.method public onServiceConnectionError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnectionError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
