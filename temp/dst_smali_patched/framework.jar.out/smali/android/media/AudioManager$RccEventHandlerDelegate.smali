.class Landroid/media/AudioManager$RccEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RccEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 2

    .prologue
    iput-object p1, p0, Landroid/media/AudioManager$RccEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/media/AudioManager$RccEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/media/AudioManager$RccEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$RccEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager$RccEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioManager$RccEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioManager$RccEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
