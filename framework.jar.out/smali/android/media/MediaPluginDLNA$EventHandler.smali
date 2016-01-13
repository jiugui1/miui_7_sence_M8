.class Landroid/media/MediaPluginDLNA$EventHandler;
.super Landroid/os/Handler;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method public constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    .line 292
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 293
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[msg handler connect to DLNAMiddleLayer]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 301
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "mDLNAManager is null, can not start to play..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    # invokes: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)I

    move-result v1

    const/16 v2, 0x1100

    if-ne v1, v2, :cond_1

    .line 305
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do nothing because the state is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    # invokes: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setAutoReleaseAfterPlayCompleted(Z)I

    .line 311
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    # getter for: Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
