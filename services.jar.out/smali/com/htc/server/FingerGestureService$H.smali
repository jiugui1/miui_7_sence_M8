.class final Lcom/htc/server/FingerGestureService$H;
.super Landroid/os/Handler;
.source "FingerGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/FingerGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/FingerGestureService;


# direct methods
.method constructor <init>(Lcom/htc/server/FingerGestureService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/server/FingerGestureService$H;->this$0:Lcom/htc/server/FingerGestureService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    iget v2, p1, Landroid/os/Message;->what:I

    .line 38
    .local v2, "type":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 39
    .local v0, "arg1":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 41
    .local v1, "arg2":I
    packed-switch v2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const-string v3, "FingerGestureService"

    const-string v4, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v3, p0, Lcom/htc/server/FingerGestureService$H;->this$0:Lcom/htc/server/FingerGestureService;

    const-string v4, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/4 v5, 0x0

    # invokes: Lcom/htc/server/FingerGestureService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v5}, Lcom/htc/server/FingerGestureService;->access$000(Lcom/htc/server/FingerGestureService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v3, p0, Lcom/htc/server/FingerGestureService$H;->this$0:Lcom/htc/server/FingerGestureService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/server/FingerGestureService;->setFingerGestureEnable(Z)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
    .end packed-switch
.end method