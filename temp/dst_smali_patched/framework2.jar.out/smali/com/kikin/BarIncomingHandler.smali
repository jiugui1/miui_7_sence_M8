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
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/kikin/BarIncomingHandler$MessageType;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, p1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/kikin/BarIncomingHandler$MessageType;->getMessagType(I)Lcom/kikin/BarIncomingHandler$MessageType;

    move-result-object v3

    .local v3, "type":Lcom/kikin/BarIncomingHandler$MessageType;
    sget-object v5, Lcom/kikin/BarIncomingHandler$1;->$SwitchMap$com$kikin$BarIncomingHandler$MessageType:[I

    invoke-virtual {v3}, Lcom/kikin/BarIncomingHandler$MessageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarHidden()V

    goto :goto_0

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

    :pswitch_2
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v6, "com.kikin.query"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/kikin/BarIncomingHandler$Callback;->onQueryChanged(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v0}, Lcom/kikin/BarIncomingHandler$Callback;->onSaveKikinBarState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarIsHidding()V

    goto :goto_0

    :pswitch_5
    const-string v5, "com.kikin.bar.rect"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, "rect":Landroid/graphics/Rect;
    const-string v5, "com.kikin.bar.gravity"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "gravity":I
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v2, v1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarRectChanged(Landroid/graphics/Rect;I)V

    goto :goto_0

    .end local v1    # "gravity":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_6
    const-string v5, "com.kikin.bar.visibility"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "visibility":I
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5, v4}, Lcom/kikin/BarIncomingHandler$Callback;->onBarVisibilityChanged(I)V

    goto :goto_0

    .end local v4    # "visibility":I
    :pswitch_7
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onBarAnimationFinished()V

    goto :goto_0

    :pswitch_8
    iget-object v5, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v5}, Lcom/kikin/BarIncomingHandler$Callback;->onKikinDisabled()V

    goto :goto_0

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
