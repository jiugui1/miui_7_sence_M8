.class Lcom/htc/server/FingerGestureService$2;
.super Landroid/os/HandlerThread;
.source "FingerGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/FingerGestureService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/FingerGestureService;


# direct methods
.method constructor <init>(Lcom/htc/server/FingerGestureService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/server/FingerGestureService$2;->this$0:Lcom/htc/server/FingerGestureService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 94
    iget-object v0, p0, Lcom/htc/server/FingerGestureService$2;->this$0:Lcom/htc/server/FingerGestureService;

    # invokes: Lcom/htc/server/FingerGestureService;->initInThread()V
    invoke-static {v0}, Lcom/htc/server/FingerGestureService;->access$400(Lcom/htc/server/FingerGestureService;)V

    .line 95
    return-void
.end method
