.class Landroid/media/AudioManager$2;
.super Landroid/media/IRccEventDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 3386
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IRccEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchRccEventChange(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "change"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 3389
    # getter for: Landroid/media/AudioManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioManager;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RccEvent]dispatchRccEventChange change="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    iget-object v2, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mRccEventHandlerDelegate:Landroid/media/AudioManager$RccEventHandlerDelegate;
    invoke-static {v2}, Landroid/media/AudioManager;->access$500(Landroid/media/AudioManager;)Landroid/media/AudioManager$RccEventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager$RccEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3392
    .local v0, "h":Landroid/os/Handler;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3393
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3394
    return-void
.end method
