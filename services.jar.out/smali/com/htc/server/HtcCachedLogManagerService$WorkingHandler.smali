.class Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcCachedLogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcCachedLogManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcCachedLogManagerService;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcCachedLogManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 105
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 107
    const-string v3, "severity"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "severity":I
    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "name":Ljava/lang/String;
    sget-boolean v3, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcCachedLogMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMessage: msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v1, "all"

    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", severity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 129
    .end local v2    # "severity":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 130
    return-void

    .line 114
    .restart local v2    # "severity":I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    # invokes: Lcom/htc/server/HtcCachedLogManagerService;->handleDump(Landroid/os/Bundle;)V
    invoke-static {v3, v0}, Lcom/htc/server/HtcCachedLogManagerService;->access$100(Lcom/htc/server/HtcCachedLogManagerService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    # invokes: Lcom/htc/server/HtcCachedLogManagerService;->trimCacheToLWM()V
    invoke-static {v3}, Lcom/htc/server/HtcCachedLogManagerService;->access$200(Lcom/htc/server/HtcCachedLogManagerService;)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->this$0:Lcom/htc/server/HtcCachedLogManagerService;

    # invokes: Lcom/htc/server/HtcCachedLogManagerService;->trimCache(I)V
    invoke-static {v3, v2}, Lcom/htc/server/HtcCachedLogManagerService;->access$300(Lcom/htc/server/HtcCachedLogManagerService;I)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
