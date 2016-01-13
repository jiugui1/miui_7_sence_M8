.class Landroid/webkit/EditableWebViewImpl2$1;
.super Landroid/os/Handler;
.source "EditableWebViewImpl2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebViewImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebViewImpl2;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebViewImpl2;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Landroid/webkit/EditableWebViewImpl2;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v9

    .local v9, "rect":Landroid/graphics/Rect;
    # getter for: Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z
    invoke-static {}, Landroid/webkit/EditableWebViewImpl2;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "imageediting"

    const-string v14, "EditableWebViewImpl2, MSG_SAVE_IMAGECACHE_INTO_GIVENPATH_CALLBACK"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    const-string v8, "null"

    .local v8, "path":Ljava/lang/String;
    :goto_1
    # getter for: Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z
    invoke-static {}, Landroid/webkit/EditableWebViewImpl2;->access$000()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "imageediting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EditableWebViewImpl2, MSG_SAVE_IMAGECACHE_INTO_GIVENPATH_CALLBACK, \n path = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v8, v14, v9, v15}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    goto :goto_0

    .end local v8    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    # invokes: Landroid/webkit/EditableWebViewImpl2;->appendImgFilePrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v13}, Landroid/webkit/EditableWebViewImpl2;->access$100(Landroid/webkit/EditableWebViewImpl2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .end local v9    # "rect":Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "b":Landroid/os/Bundle;
    const-string v13, "imagepath"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "src":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    .local v2, "contentBottom":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/EditableWebViewImpl2;->access$200(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    const/4 v14, 0x0

    add-int/lit8 v15, v2, 0x12

    invoke-virtual {v13, v14, v15}, Landroid/webkit/EditableWebViewImpl2;->setCaretPos(II)V

    const-string v13, "imageheight"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "height":I
    const-string v13, "imagewidth"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/EditableWebViewImpl2;->access$200(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11, v12, v4}, Landroid/webkit/WebView;->getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/WebView$ImageInfo;

    move-result-object v6

    .local v6, "imageInfo":Landroid/webkit/WebView$ImageInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v13}, Landroid/webkit/EditableWebViewImpl2;->access$300(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebViewCore;

    move-result-object v13

    const/16 v14, 0x1fe

    invoke-virtual {v13, v14, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "contentBottom":I
    .end local v4    # "height":I
    .end local v6    # "imageInfo":Landroid/webkit/WebView$ImageInfo;
    .end local v11    # "src":Ljava/lang/String;
    .end local v12    # "width":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Landroid/webkit/EditableWebViewImpl2;->updateContentFromMessage(I)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    iget-object v13, v13, Landroid/webkit/EditableWebViewImpl2;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v10

    .local v10, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v10, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    iget-object v13, v13, Landroid/webkit/EditableWebViewImpl2;->captureMessages:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .local v7, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    iget-object v13, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    iget v14, v7, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v15, v13, v14}, Landroid/webkit/EditableWebViewImpl2;->getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .end local v7    # "m":Landroid/os/Message;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v13}, Landroid/webkit/EditableWebViewImpl2;->access$400(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebViewClassic;

    const-string v13, "webview"

    const-string v14, "ERROR!"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "i":I
    .end local v10    # "size":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/EditableWebViewImpl2$1;->this$0:Landroid/webkit/EditableWebViewImpl2;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/EditableWebViewImpl2;->updateContentFromMessage(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0xa -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138c -> :sswitch_3
        0x138d -> :sswitch_2
        0x138e -> :sswitch_1
        0x2ebb -> :sswitch_0
        0x2ebc -> :sswitch_0
    .end sparse-switch
.end method
