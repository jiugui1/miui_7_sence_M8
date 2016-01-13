.class Lvenom/common/FlashLight$1;
.super Landroid/os/Handler;
.source "FlashLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvenom/common/FlashLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvenom/common/FlashLight;


# direct methods
.method constructor <init>(Lvenom/common/FlashLight;)V
    .locals 0

    iput-object p1, p0, Lvenom/common/FlashLight$1;->this$0:Lvenom/common/FlashLight;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lvenom/common/FlashLight$1;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lvenom/common/FlashLight;->access$0(Lvenom/common/FlashLight;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvenom/common/OnFlashLightChangedListener;

    iget-object v2, p0, Lvenom/common/FlashLight$1;->this$0:Lvenom/common/FlashLight;

    # getter for: Lvenom/common/FlashLight;->mBrightness:I
    invoke-static {v2}, Lvenom/common/FlashLight;->access$1(Lvenom/common/FlashLight;)I

    move-result v2

    invoke-interface {v0, v2}, Lvenom/common/OnFlashLightChangedListener;->onBrightnessChanged(I)V

    goto :goto_0
.end method
