.class Landroid/webkit/BrowserFrame$1;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettingsClassic;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/BrowserFrame;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 307
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v0, v0, Landroid/webkit/BrowserFrame;->prevProgress:I

    iget-object v1, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v1, v1, Landroid/webkit/BrowserFrame;->currProgress:I

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v1, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    .line 282
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame toastHandler MSG_START prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v2, v2, Landroid/webkit/BrowserFrame;->prevProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v2, v2, Landroid/webkit/BrowserFrame;->currProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v2, v2, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v0, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    # getter for: Landroid/webkit/BrowserFrame;->TIME_TO_NOTIFY:I
    invoke-static {}, Landroid/webkit/BrowserFrame;->access$000()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 288
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    # getter for: Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/BrowserFrame;->access$100(Landroid/webkit/BrowserFrame;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x30701a3

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iput v3, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iput v3, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    goto :goto_1

    .line 292
    :cond_2
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget v1, v1, Landroid/webkit/BrowserFrame;->currProgress:I

    iput v1, v0, Landroid/webkit/BrowserFrame;->prevProgress:I

    .line 293
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iget-boolean v0, v0, Landroid/webkit/BrowserFrame;->enableToast:Z

    if-eqz v0, :cond_0

    .line 294
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Landroid/webkit/BrowserFrame$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/webkit/BrowserFrame$1;->removeMessages(I)V

    .line 300
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iput v3, v0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    .line 301
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    iput v3, v0, Landroid/webkit/BrowserFrame;->prevProgress:I

    .line 302
    iget-object v0, p0, Landroid/webkit/BrowserFrame$1;->this$0:Landroid/webkit/BrowserFrame;

    const/16 v1, 0xa

    iput v1, v0, Landroid/webkit/BrowserFrame;->currProgress:I

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
