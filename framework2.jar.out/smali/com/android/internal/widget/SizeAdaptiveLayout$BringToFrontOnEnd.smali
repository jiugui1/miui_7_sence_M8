.class Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;
.super Ljava/lang/Object;
.source "SizeAdaptiveLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SizeAdaptiveLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BringToFrontOnEnd"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 410
    const-class v0, Lcom/android/internal/widget/SizeAdaptiveLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/widget/SizeAdaptiveLayout;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # operator++ for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mCanceledAnimationCount:I
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$008(Lcom/android/internal/widget/SizeAdaptiveLayout;)I

    .line 427
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # getter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mCanceledAnimationCount:I
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$000(Lcom/android/internal/widget/SizeAdaptiveLayout;)I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # getter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mLeavingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$100(Lcom/android/internal/widget/SizeAdaptiveLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # getter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mModestyPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$200(Lcom/android/internal/widget/SizeAdaptiveLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # getter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mEnteringView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$300(Lcom/android/internal/widget/SizeAdaptiveLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # setter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mEnteringView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$302(Lcom/android/internal/widget/SizeAdaptiveLayout;Landroid/view/View;)Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # setter for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mLeavingView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$102(Lcom/android/internal/widget/SizeAdaptiveLayout;Landroid/view/View;)Landroid/view/View;

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->this$0:Lcom/android/internal/widget/SizeAdaptiveLayout;

    # operator-- for: Lcom/android/internal/widget/SizeAdaptiveLayout;->mCanceledAnimationCount:I
    invoke-static {v0}, Lcom/android/internal/widget/SizeAdaptiveLayout;->access$010(Lcom/android/internal/widget/SizeAdaptiveLayout;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 432
    sget-boolean v0, Lcom/android/internal/widget/SizeAdaptiveLayout$BringToFrontOnEnd;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 433
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    return-void
.end method
