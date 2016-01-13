.class public Lcom/htc/internal/widget/HtcScroller;
.super Ljava/lang/Object;
.source "HtcScroller.java"


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final GRAVITY:F = 2000.0f

.field private static final NORMAL:I

.field private static final SCROLL_MODE:I

.field private static sGravityDeceleration:F


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mCurrentPositionY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mOver:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mState:I

.field private mUniformDeceleratedDuration:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/internal/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffX:F

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 115
    iput-object p2, p0, Lcom/htc/internal/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 117
    .local v0, "ppi":F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    sput v1, Lcom/htc/internal/widget/HtcScroller;->sGravityDeceleration:F

    .line 121
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 727
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 728
    .local v2, "durationToApex":F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 729
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 730
    .local v1, "distanceToEdge":F
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 732
    .local v3, "totalDuration":F
    iget-wide v4, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    const/high16 v6, 0x447a0000    # 1000.0f

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 733
    iput p2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 734
    iget v4, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 735
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 807
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private onEdgeReached()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 747
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 748
    .local v0, "distance":F
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 750
    .local v1, "sign":F
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 753
    neg-float v2, v1

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    .line 754
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    int-to-float v0, v2

    .line 757
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    .line 758
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 759
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .end local v0    # "distance":F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 760
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 762
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    .line 763
    return-void

    .line 759
    .restart local v0    # "distance":F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 702
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 703
    const-string v3, "HtcScroller"

    const-string v4, "startAfterEdge called from a valid position"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 723
    :goto_0
    return-void

    .line 707
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    const/4 v15, 0x1

    .line 708
    .local v15, "positive":Z
    :goto_1
    if-eqz v15, :cond_2

    move/from16 v12, p3

    .line 709
    .local v12, "edge":I
    :goto_2
    sub-int v14, p1, v12

    .line 710
    .local v14, "overDistance":I
    mul-int v3, v14, p4

    if-ltz v3, :cond_3

    const/4 v13, 0x1

    .line 712
    .local v13, "keepIncreasing":Z
    :goto_3
    if-eqz v13, :cond_4

    .line 714
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/internal/widget/HtcScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 707
    .end local v12    # "edge":I
    .end local v13    # "keepIncreasing":Z
    .end local v14    # "overDistance":I
    .end local v15    # "positive":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .restart local v15    # "positive":Z
    :cond_2
    move/from16 v12, p2

    .line 708
    goto :goto_2

    .line 710
    .restart local v12    # "edge":I
    .restart local v14    # "overDistance":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 716
    .restart local v13    # "keepIncreasing":Z
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    move/from16 v16, v0

    .line 717
    .local v16, "totalDistance":I
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v16

    if-le v0, v3, :cond_7

    .line 718
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v15, :cond_5

    move/from16 v9, p2

    :goto_4
    const/4 v10, 0x0

    if-eqz v15, :cond_6

    move/from16 v11, p1

    :goto_5
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Lcom/htc/internal/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_5
    move/from16 v9, p1

    goto :goto_4

    :cond_6
    move/from16 v11, p3

    goto :goto_5

    .line 720
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/internal/widget/HtcScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 738
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Lcom/htc/internal/widget/HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/internal/widget/HtcScroller;->fitOnBounceCurve(III)V

    .line 741
    invoke-direct {p0}, Lcom/htc/internal/widget/HtcScroller;->onEdgeReached()V

    .line 742
    return-void

    :cond_0
    move v0, p3

    .line 738
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 788
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 789
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 790
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 791
    iput p2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 792
    sub-int v0, p1, p2

    .line 793
    .local v0, "delta":I
    invoke-static {v0}, Lcom/htc/internal/widget/HtcScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    .line 795
    neg-int v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 796
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    .line 797
    const-wide v1, 0x408f400000000000L    # 1000.0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 800
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    .line 801
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 499
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 500
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 501
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 507
    :goto_0
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 508
    return p1

    .line 503
    :cond_0
    const v0, 0x3ebc5ab2

    .line 504
    .local v0, "start":F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 505
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 521
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 525
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->finish()V

    .line 526
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 264
    iget-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 268
    :cond_0
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    if-ne v0, v8, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->finish()V

    :cond_1
    :goto_1
    move v0, v8

    .line 311
    goto :goto_0

    .line 276
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v6, v2

    .line 278
    .local v6, "timePassed":I
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    if-ge v6, v0, :cond_5

    .line 279
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 281
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDurationReciprocal:F

    .line 282
    int-to-float v0, v6

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDurationReciprocal:F

    mul-float v7, v0, v2

    .line 283
    .local v7, "x":F
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    int-to-float v2, v6

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaX:F

    iget v5, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/internal/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 285
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    int-to-float v2, v6

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    iget v5, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/internal/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    goto :goto_1

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 289
    invoke-direct {p0, v7}, Lcom/htc/internal/widget/HtcScroller;->viscousFluid(F)F

    move-result v7

    .line 293
    :goto_2
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaX:F

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 294
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 297
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    .line 299
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 300
    iput-boolean v8, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    goto :goto_1

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_2

    .line 306
    .end local v7    # "x":F
    :cond_5
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 307
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 308
    iput-boolean v8, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 640
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 664
    :goto_0
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->update()Z

    .line 665
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 643
    :pswitch_1
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mUniformDeceleratedDuration:I

    if-ge v1, v2, :cond_0

    .line 645
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 647
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 648
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/htc/internal/widget/HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    .line 649
    iget-wide v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 650
    invoke-direct {p0}, Lcom/htc/internal/widget/HtcScroller;->onEdgeReached()V

    goto :goto_0

    .line 657
    :pswitch_2
    iget-wide v1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 658
    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/internal/widget/HtcScroller;->startSpringback(III)V

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->timePassed()I

    move-result v0

    .line 541
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 542
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDurationReciprocal:F

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 544
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 670
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 671
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 676
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 454
    sget v2, Lcom/htc/internal/widget/HtcScroller;->sGravityDeceleration:F

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    .line 457
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    .line 458
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 460
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 462
    .local v1, "velocity":F
    int-to-float v2, p4

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 463
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 465
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 466
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    .line 467
    iput p2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 469
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffX:F

    .line 470
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    .line 472
    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 474
    .local v0, "totalDistance":I
    iput p5, p0, Lcom/htc/internal/widget/HtcScroller;->mMinX:I

    .line 475
    iput p6, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxX:I

    .line 476
    iput p7, p0, Lcom/htc/internal/widget/HtcScroller;->mMinY:I

    .line 477
    iput p8, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxY:I

    .line 479
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 481
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 482
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 484
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 486
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 487
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 488
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    .line 491
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 492
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    .line 493
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    .line 494
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mUniformDeceleratedDuration:I

    .line 496
    return-void

    .line 469
    .end local v0    # "totalDistance":I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 470
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public fling(IIIIIIIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overY"    # I

    .prologue
    .line 680
    iput p9, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    .line 681
    invoke-virtual/range {p0 .. p8}, Lcom/htc/internal/widget/HtcScroller;->fling(IIIIIIII)V

    .line 682
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 149
    return-void
.end method

.method public getCurrVelocity()F
    .locals 6

    .prologue
    .line 578
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 579
    .local v0, "timePassed":I
    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 580
    .local v1, "timePassedSeconds":F
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    iget v3, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    iget v4, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 193
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 690
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    if-nez v0, :cond_0

    .line 691
    iput p3, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    .line 692
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 697
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/htc/internal/widget/HtcScroller;->startAfterEdge(IIII)V

    .line 699
    :cond_0
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 0
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 685
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/internal/widget/HtcScroller;->notifyEdgeReached(III)V

    .line 686
    return-void
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 561
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 562
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaX:F

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 564
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 573
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 575
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    .line 766
    invoke-virtual {p0, p2, p5, p6}, Lcom/htc/internal/widget/HtcScroller;->springback(III)Z

    move-result v0

    return v0
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 772
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 773
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 776
    iput v1, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 778
    if-ge p1, p2, :cond_1

    .line 779
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/internal/widget/HtcScroller;->startSpringback(III)V

    .line 783
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 780
    :cond_1
    if-le p1, p3, :cond_0

    .line 781
    invoke-direct {p0, p1, p3, v1}, Lcom/htc/internal/widget/HtcScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 783
    goto :goto_1
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 334
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/internal/widget/HtcScroller;->startScroll(IIIII)V

    .line 335
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 356
    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    .line 357
    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 358
    iput p5, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 359
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 360
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    .line 361
    iput p2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 362
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 363
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 364
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaX:F

    .line 365
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    .line 366
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDurationReciprocal:F

    .line 368
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidScale:F

    .line 370
    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 371
    invoke-direct {p0, v2}, Lcom/htc/internal/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 376
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    const/high16 v0, -0x3a860000    # -4000.0f

    :goto_0
    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 377
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    .line 379
    return-void

    .line 376
    :cond_0
    const/high16 v0, 0x457a0000    # 4000.0f

    goto :goto_0
.end method

.method public startScroll(IIIIILcom/htc/internal/widget/EasingFunction;)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I
    .param p6, "function"    # Lcom/htc/internal/widget/EasingFunction;

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 401
    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mMode:I

    .line 402
    iput-object p6, p0, Lcom/htc/internal/widget/HtcScroller;->mEasingFunction:Lcom/htc/internal/widget/EasingFunction;

    .line 403
    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 404
    iput p5, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    .line 405
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    .line 406
    iput p1, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    .line 407
    iput p2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    .line 408
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    .line 409
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    .line 410
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaX:F

    .line 411
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDeltaY:F

    .line 412
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mDurationReciprocal:F

    .line 414
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidScale:F

    .line 416
    iput v2, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 417
    invoke-direct {p0, v2}, Lcom/htc/internal/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 420
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    .line 421
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    const/high16 v0, -0x3a860000    # -4000.0f

    :goto_0
    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    .line 422
    iget v0, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iput v0, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    .line 424
    return-void

    .line 421
    :cond_0
    const/high16 v0, 0x457a0000    # 4000.0f

    goto :goto_0
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 552
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method update()Z
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/high16 v14, 0x447a0000    # 1000.0f

    const/high16 v13, 0x40000000    # 2.0f

    .line 589
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/htc/internal/widget/HtcScroller;->mStartTime:J

    sub-long v0, v9, v11

    .line 591
    .local v0, "currentTime":J
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-long v9, v9

    cmp-long v9, v0, v9

    if-lez v9, :cond_0

    .line 592
    const/4 v8, 0x0

    .line 636
    :goto_0
    return v8

    .line 595
    :cond_0
    const/4 v2, 0x0

    .line 596
    .local v2, "distance":F
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 635
    :goto_1
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrentPositionY:I

    goto :goto_0

    .line 598
    :pswitch_0
    long-to-int v6, v0

    .line 599
    .local v6, "timePassed":I
    int-to-float v9, v6

    div-float v7, v9, v14

    .line 600
    .local v7, "timePassedSeconds":F
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v7

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v7

    mul-float/2addr v10, v7

    div-float/2addr v10, v13

    sub-float v2, v9, v10

    .line 603
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mStartX:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 605
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 606
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mMinX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    .line 608
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mStartY:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 610
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mMaxY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 611
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mMinY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    .line 613
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScroller;->getCurrVelocity()F

    move-result v9

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    .line 615
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrX:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalX:I

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrY:I

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mFinalY:I

    if-ne v9, v10, :cond_1

    .line 616
    iput-boolean v8, p0, Lcom/htc/internal/widget/HtcScroller;->mFinished:Z

    .line 620
    .end local v6    # "timePassed":I
    .end local v7    # "timePassedSeconds":F
    :cond_1
    :pswitch_1
    long-to-float v9, v0

    div-float v4, v9, v14

    .line 621
    .local v4, "t":F
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    .line 622
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v9, v4

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v4

    mul-float/2addr v10, v4

    div-float/2addr v10, v13

    add-float v2, v9, v10

    .line 623
    goto/16 :goto_1

    .line 626
    .end local v4    # "t":F
    :pswitch_2
    long-to-float v9, v0

    iget v10, p0, Lcom/htc/internal/widget/HtcScroller;->mDuration:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 627
    .restart local v4    # "t":F
    mul-float v5, v4, v4

    .line 628
    .local v5, "t2":F
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 629
    .local v3, "sign":F
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v5

    mul-float v11, v13, v4

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    mul-float v2, v9, v10

    .line 630
    iget v9, p0, Lcom/htc/internal/widget/HtcScroller;->mOver:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v9, v10

    neg-float v10, v4

    add-float/2addr v10, v5

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/htc/internal/widget/HtcScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
