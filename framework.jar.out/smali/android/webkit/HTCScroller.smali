.class public Landroid/webkit/HTCScroller;
.super Ljava/lang/Object;
.source "HTCScroller.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I = 0x0

.field private static final SLIGHT_MOVEMENT:I = 0xfa

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFinalX:I

.field private mFlingFinalY:I

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0x64

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 71
    const-wide v8, 0x3fd999999999999aL    # 0.4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Landroid/webkit/HTCScroller;->DECELERATION_RATE:F

    .line 72
    sput v13, Landroid/webkit/HTCScroller;->ALPHA:F

    .line 73
    const v8, 0x3e99999a    # 0.3f

    sput v8, Landroid/webkit/HTCScroller;->START_TENSION:F

    .line 74
    sget v8, Landroid/webkit/HTCScroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Landroid/webkit/HTCScroller;->END_TENSION:F

    .line 76
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Landroid/webkit/HTCScroller;->SPLINE:[F

    .line 82
    const/4 v7, 0x0

    .line 83
    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v14, :cond_2

    .line 84
    int-to-float v8, v2

    div-float v3, v8, v13

    .line 85
    .local v3, "t":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 89
    .local v5, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 90
    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Landroid/webkit/HTCScroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Landroid/webkit/HTCScroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 91
    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 95
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 96
    .local v1, "d":F
    sget-object v8, Landroid/webkit/HTCScroller;->SPLINE:[F

    aput v1, v8, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    .line 93
    :cond_1
    move v7, v5

    goto :goto_1

    .line 98
    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Landroid/webkit/HTCScroller;->SPLINE:[F

    aput v12, v8, v14

    .line 101
    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Landroid/webkit/HTCScroller;->sViscousFluidScale:F

    .line 103
    sput v12, Landroid/webkit/HTCScroller;->sViscousFluidNormalize:F

    .line 104
    invoke-static {v12}, Landroid/webkit/HTCScroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Landroid/webkit/HTCScroller;->sViscousFluidNormalize:F

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/HTCScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/HTCScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 134
    iput-object p2, p0, Landroid/webkit/HTCScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/HTCScroller;->mPpi:F

    .line 136
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/webkit/HTCScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeceleration:F

    .line 137
    iput-boolean p3, p0, Landroid/webkit/HTCScroller;->mFlywheel:Z

    .line 138
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 152
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/webkit/HTCScroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 441
    sget v1, Landroid/webkit/HTCScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 442
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 443
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 449
    :goto_0
    sget v1, Landroid/webkit/HTCScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 450
    return p0

    .line 445
    :cond_0
    const v0, 0x3ebc5ab2

    .line 446
    .local v0, "start":F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 447
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    iput v0, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 462
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    iput v0, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 464
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    .line 256
    iget-boolean v10, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    if-eqz v10, :cond_1

    .line 257
    const/4 v9, 0x0

    .line 307
    :cond_0
    :goto_0
    return v9

    .line 260
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/webkit/HTCScroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 262
    .local v7, "timePassed":I
    iget v10, p0, Landroid/webkit/HTCScroller;->mDuration:I

    if-ge v7, v10, :cond_3

    .line 263
    iget v10, p0, Landroid/webkit/HTCScroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Landroid/webkit/HTCScroller;->mDurationReciprocal:F

    mul-float v8, v10, v11

    .line 267
    .local v8, "x":F
    iget-object v10, p0, Landroid/webkit/HTCScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    .line 268
    invoke-static {v8}, Landroid/webkit/HTCScroller;->viscousFluid(F)F

    move-result v8

    .line 272
    :goto_1
    iget v10, p0, Landroid/webkit/HTCScroller;->mStartX:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 273
    iget v10, p0, Landroid/webkit/HTCScroller;->mStartY:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v10, p0, Landroid/webkit/HTCScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 276
    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Landroid/webkit/HTCScroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 277
    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .line 278
    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .line 279
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .line 280
    .local v6, "t_sup":F
    sget-object v10, Landroid/webkit/HTCScroller;->SPLINE:[F

    aget v0, v10, v3

    .line 281
    .local v0, "d_inf":F
    sget-object v10, Landroid/webkit/HTCScroller;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 282
    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .line 284
    .local v2, "distanceCoef":F
    iget v10, p0, Landroid/webkit/HTCScroller;->mStartX:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mFlingFinalX:I

    iget v12, p0, Landroid/webkit/HTCScroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 286
    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 287
    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 289
    iget v10, p0, Landroid/webkit/HTCScroller;->mStartY:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mFlingFinalY:I

    iget v12, p0, Landroid/webkit/HTCScroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    .line 292
    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    .line 293
    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    .line 295
    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    iget v11, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    if-ne v10, v11, :cond_0

    .line 296
    iput-boolean v9, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    goto/16 :goto_0

    .line 303
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    .line 304
    iget v10, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    iput v10, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    .line 305
    iput-boolean v9, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/webkit/HTCScroller;->timePassed()I

    move-result v0

    .line 476
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/webkit/HTCScroller;->mDuration:I

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/webkit/HTCScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCScroller;->mDurationReciprocal:F

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 479
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 25
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HTCScroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HTCScroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HTCScroller;->getCurrVelocity()F

    move-result v12

    .line 382
    .local v12, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v5, v0

    .line 383
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 384
    .local v6, "dy":F
    mul-float v17, v6, v6

    mul-float v18, v6, v6

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 386
    .local v7, "hyp":F
    div-float v10, v6, v7

    .line 387
    .local v10, "ndx":F
    div-float v11, v6, v7

    .line 389
    .local v11, "ndy":F
    mul-float v13, v10, v12

    .line 390
    .local v13, "oldVelocityX":F
    mul-float v14, v11, v12

    .line 391
    .local v14, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 393
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41000000    # 8.0f

    div-float v18, v13, v18

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 394
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41000000    # 8.0f

    div-float v18, v14, v18

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 398
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v7    # "hyp":F
    .end local v10    # "ndx":F
    .end local v11    # "ndy":F
    .end local v12    # "oldVel":F
    .end local v13    # "oldVelocityX":F
    .end local v14    # "oldVelocityY":F
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mMode:I

    .line 399
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 404
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 407
    .local v16, "velocity":F
    const/high16 v17, 0x437a0000    # 250.0f

    cmpg-float v17, v16, v17

    if-gez v17, :cond_1

    .line 408
    const/16 v16, 0x0

    .line 409
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mVelocity:F

    .line 410
    sget v17, Landroid/webkit/HTCScroller;->START_TENSION:F

    mul-float v17, v17, v16

    sget v18, Landroid/webkit/HTCScroller;->ALPHA:F

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 411
    .local v8, "l":D
    const-wide v17, 0x408f400000000000L    # 1000.0

    sget v19, Landroid/webkit/HTCScroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v19, v19, v21

    div-double v19, v8, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mDuration:I

    .line 412
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/HTCScroller;->mStartTime:J

    .line 413
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mStartX:I

    .line 414
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mStartY:I

    .line 416
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 417
    .local v3, "coeffX":F
    :goto_0
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 419
    .local v4, "coeffY":F
    :goto_1
    sget v17, Landroid/webkit/HTCScroller;->ALPHA:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sget v19, Landroid/webkit/HTCScroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sget v21, Landroid/webkit/HTCScroller;->DECELERATION_RATE:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    sub-double v21, v21, v23

    div-double v19, v19, v21

    mul-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v15, v0

    .line 422
    .local v15, "totalDistance":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mMinX:I

    .line 423
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mMaxX:I

    .line 424
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mMinY:I

    .line 425
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mMaxY:I

    .line 427
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalX:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFlingFinalX:I

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalX:I

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalX:I

    .line 432
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalY:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFlingFinalY:I

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalY:I

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCScroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCScroller;->mFinalY:I

    .line 437
    return-void

    .line 416
    .end local v3    # "coeffX":F
    .end local v4    # "coeffY":F
    .end local v15    # "totalDistance":I
    :cond_2
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v17, v16

    goto/16 :goto_0

    .line 417
    .restart local v3    # "coeffX":F
    :cond_3
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 175
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Landroid/webkit/HTCScroller;->mVelocity:F

    iget v1, p0, Landroid/webkit/HTCScroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/webkit/HTCScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/HTCScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/webkit/HTCScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/webkit/HTCScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/webkit/HTCScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/webkit/HTCScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 520
    iget-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    iget v2, p0, Landroid/webkit/HTCScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    iget v2, p0, Landroid/webkit/HTCScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 498
    iput p1, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    .line 499
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    iget v1, p0, Landroid/webkit/HTCScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeltaX:F

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 501
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 511
    iput p1, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    .line 512
    iget v0, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    iget v1, p0, Landroid/webkit/HTCScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeltaY:F

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 514
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/webkit/HTCScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeceleration:F

    .line 149
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 325
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTCScroller;->startScroll(IIIII)V

    .line 326
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 342
    iput v0, p0, Landroid/webkit/HTCScroller;->mMode:I

    .line 343
    iput-boolean v0, p0, Landroid/webkit/HTCScroller;->mFinished:Z

    .line 344
    iput p5, p0, Landroid/webkit/HTCScroller;->mDuration:I

    .line 345
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/HTCScroller;->mStartTime:J

    .line 346
    iput p1, p0, Landroid/webkit/HTCScroller;->mStartX:I

    .line 347
    iput p2, p0, Landroid/webkit/HTCScroller;->mStartY:I

    .line 348
    add-int v0, p1, p3

    iput v0, p0, Landroid/webkit/HTCScroller;->mFinalX:I

    .line 349
    add-int v0, p2, p4

    iput v0, p0, Landroid/webkit/HTCScroller;->mFinalY:I

    .line 350
    int-to-float v0, p3

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeltaX:F

    .line 351
    int-to-float v0, p4

    iput v0, p0, Landroid/webkit/HTCScroller;->mDeltaY:F

    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/webkit/HTCScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/HTCScroller;->mDurationReciprocal:F

    .line 353
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 487
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/HTCScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
