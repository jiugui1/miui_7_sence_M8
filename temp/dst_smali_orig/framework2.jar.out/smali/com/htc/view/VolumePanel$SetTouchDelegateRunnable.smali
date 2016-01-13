.class Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetTouchDelegateRunnable"
.end annotation


# instance fields
.field mDelegateView:Landroid/view/View;

.field mParentView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p2, "delegateView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mDelegateView:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mParentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable$1;

    iget-object v3, p0, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;->mDelegateView:Landroid/view/View;

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable$1;-><init>(Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
