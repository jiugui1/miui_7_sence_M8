.class Landroid/widget/StackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 634
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .locals 2

    .prologue
    .line 656
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 658
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 660
    const/4 v1, 0x1

    .line 663
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cancelTransformAnimator()Z
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 647
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 649
    const/4 v1, 0x1

    .line 652
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 641
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 642
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 637
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 638
    return-void
.end method