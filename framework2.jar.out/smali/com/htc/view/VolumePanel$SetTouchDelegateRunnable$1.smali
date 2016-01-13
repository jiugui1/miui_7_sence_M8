.class Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable$1;
.super Landroid/view/TouchDelegate;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/graphics/Rect;
    .param p3, "x1"    # Landroid/view/View;

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable$1;->this$1:Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;

    invoke-direct {p0, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable$1;->this$1:Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;

    iget-object v0, v0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
