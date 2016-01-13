.class public Lcom/kikin/BarIncomingHandler;
.super Landroid/os/Handler;
.source "BarIncomingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/BarIncomingHandler$1;,
        Lcom/kikin/BarIncomingHandler$Callback;,
        Lcom/kikin/BarIncomingHandler$MessageType;
    }
.end annotation


# instance fields
.field private callback:Lcom/kikin/BarIncomingHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/kikin/BarIncomingHandler$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/kikin/BarIncomingHandler$Callback;

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/kikin/BarIncomingHandler$MessageType;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 217
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, p1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarMessage(Landroid/os/Message;)V

    .line 268
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/kikin/BarIncomingHandler$MessageType;->getMessagType(I)Lcom/kikin/BarIncomingHandler$MessageType;

    move-result-object v3

    .line 224
    .local v3, "type":Lcom/kikin/BarIncomingHandler$MessageType;
    sget-object v5, Lcom/kikin/BarIncomingHandler$1;->$SwitchMap$com$kikin$BarIncomingHandler$MessageType:[I

    invoke-virtual {v3}, Lcom/kikin/BarIncomingHandler$MessageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarHidden()V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v6, "com.kikin.oldQuery"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.kikin.newQuery"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/kikin/BarIncomingHandler$Callback;->onQueryRewritten(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v6, "com.kikin.query"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/kikin/BarIncomingHandler$Callback;->onQueryChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v0}, Lcom/kikin/BarIncomingHandler$Callback;->onSaveKikinBarState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarIsHidding()V

    goto :goto_0

    .line 250
    :pswitch_5
    const-string v5, "com.kikin.bar.rect"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 251
    .local v2, "rect":Landroid/graphics/Rect;
    const-string v5, "com.kikin.bar.gravity"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "gravity":I
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v2, v1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarRectChanged(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 256
    .end local v1    # "gravity":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_6
    const-string v5, "com.kikin.bar.visibility"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 257
    .local v4, "visibility":I
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v4}, Lcom/kikin/BarIncomingHandler$Callback;->onBarVisibilityChanged(I)V

    goto :goto_0

    .line 261
    .end local v4    # "visibility":I
    :pswitch_7
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarAnimationFinished()V

    goto :goto_0

    .line 265
    :pswitch_8
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onKikinDisabled()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
