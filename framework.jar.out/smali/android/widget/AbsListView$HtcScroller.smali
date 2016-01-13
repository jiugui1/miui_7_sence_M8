.class Landroid/widget/AbsListView$HtcScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtcScroller"
.end annotation


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
    .line 7767
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 7768
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 7775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7715
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    .line 7717
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    .line 7748
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    .line 7776
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 7777
    iput-object p2, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7778
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 7779
    .local v0, "ppi":F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    sput v1, Landroid/widget/AbsListView$HtcScroller;->sGravityDeceleration:F

    .line 7783
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 8344
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 8345
    .local v2, "durationToApex":F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 8346
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 8347
    .local v1, "distanceToEdge":F
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 8349
    .local v3, "totalDuration":F
    iget-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    const/high16 v6, 0x447a0000    # 1000.0f

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8350
    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8351
    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8352
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 8426
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

    .line 8364
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 8365
    .local v0, "distance":F
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 8367
    .local v1, "sign":F
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 8370
    neg-float v2, v1

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    .line 8371
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v0, v2

    .line 8374
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    .line 8375
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    .line 8376
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .end local v0    # "distance":F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8377
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8380
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    .line 8381
    return-void

    .line 8376
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
    .line 8317
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 8318
    const-string v3, "HtcScroller"

    const-string v4, "startAfterEdge called from a valid position"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8319
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8340
    :goto_0
    return-void

    .line 8322
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    const/4 v15, 0x1

    .line 8323
    .local v15, "positive":Z
    :goto_1
    if-eqz v15, :cond_2

    move/from16 v12, p3

    .line 8324
    .local v12, "edge":I
    :goto_2
    sub-int v14, p1, v12

    .line 8325
    .local v14, "overDistance":I
    mul-int v3, v14, p4

    if-ltz v3, :cond_3

    const/4 v13, 0x1

    .line 8327
    .local v13, "keepIncreasing":Z
    :goto_3
    if-eqz v13, :cond_4

    .line 8330
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/AbsListView$HtcScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 8322
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

    .line 8323
    goto :goto_2

    .line 8325
    .restart local v12    # "edge":I
    .restart local v14    # "overDistance":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 8332
    .restart local v13    # "keepIncreasing":Z
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    move/from16 v16, v0

    .line 8333
    .local v16, "totalDistance":I
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v16

    if-le v0, v3, :cond_7

    .line 8334
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

    invoke-virtual/range {v3 .. v11}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_5
    move/from16 v9, p1

    goto :goto_4

    :cond_6
    move/from16 v11, p3

    goto :goto_5

    .line 8337
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 8355
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    .line 8356
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView$HtcScroller;->fitOnBounceCurve(III)V

    .line 8357
    invoke-direct {p0}, Landroid/widget/AbsListView$HtcScroller;->onEdgeReached()V

    .line 8358
    return-void

    :cond_0
    move v0, p3

    .line 8355
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 8406
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8407
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    .line 8408
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8409
    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8410
    sub-int v0, p1, p2

    .line 8411
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    .line 8413
    neg-int v1, v0

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8414
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    .line 8415
    const-wide v1, 0x408f400000000000L    # 1000.0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8419
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    .line 8420
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8115
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 8116
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 8117
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 8123
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 8124
    return p1

    .line 8119
    :cond_0
    const v0, 0x3ebc5ab2

    .line 8120
    .local v0, "start":F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 8121
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 8133
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 8134
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 8135
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8138
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->finish()V

    .line 8139
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 7930
    iget-boolean v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    if-eqz v3, :cond_1

    .line 7931
    const/4 v2, 0x0

    .line 7971
    :cond_0
    :goto_0
    return v2

    .line 7934
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    if-ne v3, v2, :cond_2

    .line 7935
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->update()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7936
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->continueWhenFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7937
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->finish()V

    goto :goto_0

    .line 7942
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 7944
    .local v0, "timePassed":I
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    if-ge v0, v3, :cond_4

    .line 7945
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 7947
    :pswitch_0
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    .line 7948
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    mul-float v1, v3, v4

    .line 7949
    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_3

    .line 7950
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$HtcScroller;->viscousFluid(F)F

    move-result v1

    .line 7954
    :goto_1
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 7955
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 7958
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    .line 7960
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    if-ne v3, v4, :cond_0

    .line 7961
    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    goto :goto_0

    .line 7952
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_1

    .line 7966
    .end local v1    # "x":F
    :cond_4
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 7967
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    .line 7968
    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    goto :goto_0

    .line 7945
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

    .line 8254
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 8278
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->update()Z

    .line 8279
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 8257
    :pswitch_1
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mUniformDeceleratedDuration:I

    if-ge v1, v2, :cond_0

    .line 8259
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8261
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8262
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    .line 8263
    iget-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8264
    invoke-direct {p0}, Landroid/widget/AbsListView$HtcScroller;->onEdgeReached()V

    goto :goto_0

    .line 8271
    :pswitch_2
    iget-wide v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8272
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0

    .line 8254
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
    .line 8153
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->timePassed()I

    move-result v0

    .line 8154
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8155
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    .line 8156
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8157
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 8283
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 8284
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 8285
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    .line 8290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8291
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
    .line 8070
    sget v2, Landroid/widget/AbsListView$HtcScroller;->sGravityDeceleration:F

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    .line 8073
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    .line 8074
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8076
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 8078
    .local v1, "velocity":F
    int-to-float v2, p4

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8079
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8082
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8083
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    .line 8084
    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8086
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    .line 8087
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    .line 8089
    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 8091
    .local v0, "totalDistance":I
    iput p5, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    .line 8092
    iput p6, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    .line 8093
    iput p7, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    .line 8094
    iput p8, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    .line 8096
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    .line 8098
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    .line 8099
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    .line 8101
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8103
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8104
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8107
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    .line 8108
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    .line 8109
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    .line 8110
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mUniformDeceleratedDuration:I

    .line 8112
    return-void

    .line 8086
    .end local v0    # "totalDistance":I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 8087
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
    .line 8295
    iput p9, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    .line 8296
    invoke-virtual/range {p0 .. p8}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    .line 8297
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 7814
    iput-boolean p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 7815
    return-void
.end method

.method public getCurrVelocity()F
    .locals 6

    .prologue
    .line 8191
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 8192
    .local v0, "timePassed":I
    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 8193
    .local v1, "timePassedSeconds":F
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 7842
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 7856
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    if-nez v0, :cond_0

    .line 7857
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 7859
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 7828
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 7902
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 7916
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 7874
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 7888
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 7800
    iget-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 8305
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    if-nez v0, :cond_0

    .line 8306
    iput p3, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    .line 8307
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8312
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/AbsListView$HtcScroller;->startAfterEdge(IIII)V

    .line 8314
    :cond_0
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 0
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 8300
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView$HtcScroller;->notifyEdgeReached(III)V

    .line 8301
    return-void
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 8174
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    .line 8175
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    .line 8176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8177
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 8185
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8186
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    .line 8187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8188
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 7786
    iput-object p1, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7787
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
    .line 8384
    invoke-virtual {p0, p2, p5, p6}, Landroid/widget/AbsListView$HtcScroller;->springback(III)Z

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

    .line 8388
    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8390
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8391
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8393
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8394
    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8396
    if-ge p1, p2, :cond_1

    .line 8397
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    .line 8401
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 8398
    :cond_1
    if-le p1, p3, :cond_0

    .line 8399
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8401
    goto :goto_1
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 7994
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$HtcScroller;->startScroll(IIIII)V

    .line 7995
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

    .line 8017
    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    .line 8018
    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8019
    iput p5, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    .line 8020
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    .line 8021
    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    .line 8022
    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    .line 8023
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    .line 8024
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    .line 8025
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    .line 8026
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    .line 8027
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    .line 8029
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidScale:F

    .line 8031
    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    .line 8032
    invoke-direct {p0, v2}, Landroid/widget/AbsListView$HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    .line 8035
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    .line 8036
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    const/high16 v0, -0x3a860000    # -4000.0f

    :goto_0
    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    .line 8037
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    .line 8039
    return-void

    .line 8036
    :cond_0
    const/high16 v0, 0x457a0000    # 4000.0f

    goto :goto_0
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 8165
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

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

    .line 8203
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long v0, v9, v11

    .line 8205
    .local v0, "currentTime":J
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v9, v9

    cmp-long v9, v0, v9

    if-lez v9, :cond_0

    .line 8206
    const/4 v8, 0x0

    .line 8250
    :goto_0
    return v8

    .line 8209
    :cond_0
    const/4 v2, 0x0

    .line 8210
    .local v2, "distance":F
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 8249
    :goto_1
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    goto :goto_0

    .line 8212
    :pswitch_0
    long-to-int v6, v0

    .line 8213
    .local v6, "timePassed":I
    int-to-float v9, v6

    div-float v7, v9, v14

    .line 8214
    .local v7, "timePassedSeconds":F
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v7

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v7

    mul-float/2addr v10, v7

    div-float/2addr v10, v13

    sub-float v2, v9, v10

    .line 8217
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 8219
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 8220
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    .line 8222
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 8224
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 8225
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    .line 8227
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    .line 8229
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    if-ne v9, v10, :cond_1

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    if-ne v9, v10, :cond_1

    .line 8230
    iput-boolean v8, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    .line 8234
    .end local v6    # "timePassed":I
    .end local v7    # "timePassedSeconds":F
    :cond_1
    :pswitch_1
    long-to-float v9, v0

    div-float v4, v9, v14

    .line 8235
    .local v4, "t":F
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    .line 8236
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v9, v4

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v10, v4

    mul-float/2addr v10, v4

    div-float/2addr v10, v13

    add-float v2, v9, v10

    .line 8237
    goto/16 :goto_1

    .line 8240
    .end local v4    # "t":F
    :pswitch_2
    long-to-float v9, v0

    iget v10, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 8241
    .restart local v4    # "t":F
    mul-float v5, v4, v4

    .line 8242
    .local v5, "t2":F
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 8243
    .local v3, "sign":F
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v5

    mul-float v11, v13, v4

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    mul-float v2, v9, v10

    .line 8244
    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v9, v10

    neg-float v10, v4

    add-float/2addr v10, v5

    mul-float/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 8210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
