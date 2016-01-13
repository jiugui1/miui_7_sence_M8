.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private final mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

.field private mInFling:Z

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 4611
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4582
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    .line 4584
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4612
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4613
    new-instance v0, Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    .line 4614
    return-void
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 4568
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/AbsListView$HtcScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 4568
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 4675
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_2

    .line 4676
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4680
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4681
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4683
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4684
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4685
    .local v1, "vel":I
    :goto_1
    if-lez p1, :cond_4

    .line 4686
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4696
    .end local v1    # "vel":I
    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4697
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4698
    return-void

    .line 4678
    .end local v0    # "overscrollMode":I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/AbsListView$HtcScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 4684
    .restart local v0    # "overscrollMode":I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    goto :goto_1

    .line 4688
    .restart local v1    # "vel":I
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 4691
    .end local v1    # "vel":I
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4692
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 4693
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_2
.end method

.method endFling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4715
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sLogFling:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    if-eqz v0, :cond_1

    .line 4716
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2102) [FPS][AbsListView][Scrolling][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    iput-boolean v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    .line 4719
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4721
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4722
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4724
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4725
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)V

    .line 4726
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_4

    .line 4727
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4732
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4733
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4734
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4737
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPageScroll:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mInPageScroll:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4738
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mInPageScroll:Z
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->access$2802(Landroid/widget/AbsListView;Z)Z

    .line 4740
    :cond_3
    return-void

    .line 4729
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$HtcScroller;->abortAnimation()V

    goto :goto_0
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4743
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4744
    return-void
.end method

.method public run()V
    .locals 32

    .prologue
    .line 4748
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    .line 4749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 4751
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4903
    :cond_0
    :goto_0
    return-void

    .line 4755
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_4

    .line 4756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4766
    :cond_1
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 4767
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4770
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 4771
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4760
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$HtcScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4777
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_9

    .line 4778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v29, v0

    .line 4779
    .local v29, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v25

    .line 4780
    .local v25, "more":Z
    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v31

    .line 4789
    .end local v29    # "scroller":Landroid/widget/OverScroller;
    .local v31, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v20, v2, v31

    .line 4792
    .local v20, "delta":I
    if-lez v20, :cond_a

    .line 4794
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4795
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4796
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4799
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 4813
    .end local v21    # "firstView":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 4814
    .local v26, "motionView":Landroid/view/View;
    const/16 v28, 0x0

    .line 4815
    .local v28, "oldTop":I
    if-eqz v26, :cond_6

    .line 4816
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v28

    .line 4820
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v2, :cond_7

    .line 4821
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v3, v0, v5, v6}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 4826
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 4827
    .local v15, "atEdge":Z
    if-eqz v15, :cond_b

    if-eqz v20, :cond_b

    const/16 v16, 0x1

    .line 4828
    .local v16, "atEnd":Z
    :goto_3
    if-eqz v16, :cond_d

    .line 4829
    if-eqz v26, :cond_8

    .line 4831
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v28

    sub-int v2, v20, v2

    neg-int v4, v2

    .line 4832
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 4834
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isOverScrollAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4836
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    if-lez v20, :cond_c

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->onOverFling(Z)V

    .line 4839
    .end local v4    # "overshoot":I
    :cond_8
    if-eqz v25, :cond_0

    .line 4840
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4782
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v25    # "more":Z
    .end local v26    # "motionView":Landroid/view/View;
    .end local v28    # "oldTop":I
    .end local v31    # "y":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move-object/from16 v29, v0

    .line 4783
    .local v29, "scroller":Landroid/widget/AbsListView$HtcScroller;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$HtcScroller;->computeScrollOffset()Z

    move-result v25

    .line 4784
    .restart local v25    # "more":Z
    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$HtcScroller;->getCurrY()I

    move-result v31

    .restart local v31    # "y":I
    goto/16 :goto_1

    .line 4802
    .end local v29    # "scroller":Landroid/widget/AbsListView$HtcScroller;
    .restart local v20    # "delta":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v27, v2, -0x1

    .line 4803
    .local v27, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v27

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4805
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 4806
    .local v24, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_2

    .line 4827
    .end local v24    # "lastView":Landroid/view/View;
    .end local v27    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v26    # "motionView":Landroid/view/View;
    .restart local v28    # "oldTop":I
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 4836
    .restart local v4    # "overshoot":I
    .restart local v16    # "atEnd":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 4845
    .end local v4    # "overshoot":I
    :cond_d
    if-eqz v25, :cond_f

    if-nez v16, :cond_f

    .line 4846
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4847
    :cond_e
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4850
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4868
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v25    # "more":Z
    .end local v26    # "motionView":Landroid/view/View;
    .end local v28    # "oldTop":I
    .end local v31    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v29, v0

    .line 4869
    .local v29, "scroller":Landroid/widget/OverScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move-object/from16 v22, v0

    .line 4870
    .local v22, "htcScroller":Landroid/widget/AbsListView$HtcScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_12

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v23

    .line 4872
    .local v23, "isContinueScroll":Z
    :goto_5
    if-eqz v23, :cond_1a

    .line 4873
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v9

    .line 4874
    .local v9, "scrollY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_13

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    .line 4875
    .local v19, "currY":I
    :goto_6
    sub-int v7, v19, v9

    .line 4876
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4878
    if-gtz v9, :cond_14

    if-lez v19, :cond_14

    const/16 v17, 0x1

    .line 4879
    .local v17, "crossDown":Z
    :goto_7
    if-ltz v9, :cond_15

    if-gez v19, :cond_15

    const/16 v18, 0x1

    .line 4880
    .local v18, "crossUp":Z
    :goto_8
    if-nez v17, :cond_10

    if-eqz v18, :cond_18

    .line 4881
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_16

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 4882
    .local v30, "velocity":I
    :goto_9
    if-eqz v18, :cond_11

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    .line 4885
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_17

    .line 4886
    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4889
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4870
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    .end local v19    # "currY":I
    .end local v23    # "isContinueScroll":Z
    .end local v30    # "velocity":I
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->computeScrollOffset()Z

    move-result v23

    goto :goto_5

    .line 4874
    .restart local v9    # "scrollY":I
    .restart local v23    # "isContinueScroll":Z
    :cond_13
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->getCurrY()I

    move-result v19

    goto :goto_6

    .line 4878
    .restart local v7    # "deltaY":I
    .restart local v19    # "currY":I
    :cond_14
    const/16 v17, 0x0

    goto :goto_7

    .line 4879
    .restart local v17    # "crossDown":Z
    :cond_15
    const/16 v18, 0x0

    goto :goto_8

    .line 4881
    .restart local v18    # "crossUp":Z
    :cond_16
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    goto :goto_9

    .line 4888
    .restart local v30    # "velocity":I
    :cond_17
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->abortAnimation()V

    goto :goto_a

    .line 4891
    .end local v30    # "velocity":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4894
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4898
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4749
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v4, 0x0

    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4617
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sLogFling:Z

    if-eqz v0, :cond_1

    .line 4618
    :cond_0
    const-string v0, "AutoTest"

    const-string v3, "[AutoProf](2101) [FPS][AbsListView][Scrolling][START]"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    :cond_1
    if-gez p1, :cond_3

    move v2, v6

    .line 4621
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4622
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_4

    .line 4623
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v4}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4624
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4631
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4632
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4641
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4642
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4644
    :cond_2
    return-void

    .end local v2    # "initialY":I
    :cond_3
    move v2, v1

    .line 4620
    goto :goto_0

    .line 4627
    .restart local v2    # "initialY":I
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4628
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    .line 4660
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_0

    .line 4661
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4662
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4669
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4670
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4671
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4672
    return-void

    .line 4665
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4666
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIIII)V

    goto :goto_0
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4701
    if-gez p1, :cond_1

    const v2, 0x7fffffff

    .line 4702
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4703
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v3, :cond_2

    .line 4704
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_0

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4705
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4710
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4711
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4712
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 4701
    goto :goto_0

    .line 4707
    .restart local v2    # "initialY":I
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    if-eqz p3, :cond_3

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4708
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$HtcScroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method startSpringback()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 4647
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v7

    .line 4649
    .local v7, "isContinueSpringBack":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 4650
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4651
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4652
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4657
    :goto_1
    return-void

    .line 4647
    .end local v7    # "isContinueSpringBack":Z
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView$HtcScroller;->springBack(IIIIII)Z

    move-result v7

    goto :goto_0

    .line 4654
    .restart local v7    # "isContinueSpringBack":Z
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4655
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1
.end method
