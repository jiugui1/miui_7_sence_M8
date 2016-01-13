.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field protected static final BASE_PAGE_INDEX:I = 0x2

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field protected static final DEFAULT_ANIMATION_DURATION_HTC:I = 0x320

.field protected static final DEFAULT_GROUND_ROTATION:F = 6.0f

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field protected static final GROUND_ALPHA:F = 0.7f

.field protected static final HIDDEN_PAGE_INDEX:I = 0x3

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MINIMUM_ANIMATION_DURATION_HTC:I = 0xc8

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field protected static final NUM_ACTIVE_VIEWS_HTC:I = 0x4

.field protected static final PARAMETER_SCALE_X:F = 0.3f

.field protected static final PARAMETER_SCALE_Y:F = -0.7f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field protected static final PERSPECTIVE_SHIFT_FACTOR_X_HTC:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field protected static final PERSPECTIVE_SHIFT_FACTOR_Y_HTC:F = 0.0f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field protected mGroundRotation:F

.field private mHighlight:Landroid/widget/ImageView;

.field private mHtcStackViewGestureMode:I

.field protected mHtcStyle:Z

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mPositionDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    const v0, 0x1010402

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const-string v1, "StackView"

    iput-object v1, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 133
    iput v3, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 134
    iput v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 140
    iput-boolean v3, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 147
    iput-boolean v3, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 149
    iput-boolean v3, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 150
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 158
    iput-boolean v3, p0, Landroid/widget/StackView;->mHtcStyle:Z

    .line 159
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/widget/StackView;->mGroundRotation:F

    .line 170
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->mPositionDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 171
    iput v3, p0, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    .line 219
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mResOutColor:I

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mClickColor:I

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/StackView;->readHtcConfig(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/StackView;->mPositionDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 56
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 56
    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 13
    .param p1, "deltaY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 807
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iget v12, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v11, v12, :cond_0

    iget v11, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v11, :cond_0

    .line 808
    const/4 v11, 0x0

    cmpg-float v11, p1, v11

    if-gez v11, :cond_1

    move v5, v7

    .line 809
    .local v5, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 810
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 812
    iget-object v11, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v11, :cond_2

    .line 852
    .end local v5    # "swipeGestureType":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v8

    .line 808
    goto :goto_0

    .line 813
    .restart local v5    # "swipeGestureType":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v1

    .line 816
    .local v1, "adapterCount":I
    iget v11, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v11, :cond_9

    .line 817
    if-ne v5, v8, :cond_8

    move v0, v9

    .line 822
    .local v0, "activeIndex":I
    :goto_2
    iget-boolean v11, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v11, :cond_b

    if-ne v1, v7, :cond_b

    iget v11, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v11, :cond_3

    if-eq v5, v7, :cond_4

    :cond_3
    iget v11, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v11, v7, :cond_b

    if-ne v5, v8, :cond_b

    :cond_4
    move v3, v7

    .line 825
    .local v3, "endOfStack":Z
    :goto_3
    iget-boolean v11, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v11, :cond_c

    if-ne v1, v7, :cond_c

    iget v11, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v11, v7, :cond_5

    if-eq v5, v7, :cond_6

    :cond_5
    iget v11, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v11, :cond_c

    if-ne v5, v8, :cond_c

    :cond_6
    move v2, v7

    .line 830
    .local v2, "beginningOfStack":Z
    :goto_4
    iget-boolean v8, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v8, :cond_d

    if-nez v2, :cond_d

    if-nez v3, :cond_d

    .line 831
    const/4 v4, 0x0

    .line 841
    .local v4, "stackMode":I
    :goto_5
    if-nez v4, :cond_12

    :goto_6
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 843
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 844
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 846
    iget-boolean v7, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v7, :cond_13

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v7

    :goto_7
    iget-boolean v8, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v8, :cond_7

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v10

    :cond_7
    invoke-direct {p0, v6, v7, v10, v4}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 849
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 850
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    goto :goto_1

    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    move v0, v7

    .line 817
    goto :goto_2

    .line 819
    :cond_9
    if-ne v5, v8, :cond_a

    move v0, v7

    .restart local v0    # "activeIndex":I
    :goto_8
    goto :goto_2

    .end local v0    # "activeIndex":I
    :cond_a
    move v0, v9

    goto :goto_8

    .restart local v0    # "activeIndex":I
    :cond_b
    move v3, v9

    .line 822
    goto :goto_3

    .restart local v3    # "endOfStack":Z
    :cond_c
    move v2, v9

    .line 825
    goto :goto_4

    .line 832
    .restart local v2    # "beginningOfStack":Z
    :cond_d
    iget v8, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    const/4 v11, -0x1

    if-eq v8, v11, :cond_e

    if-eqz v2, :cond_f

    .line 833
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 834
    const/4 v4, 0x1

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 835
    .end local v4    # "stackMode":I
    :cond_f
    iget v8, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    add-int/lit8 v11, v1, -0x1

    if-eq v8, v11, :cond_10

    if-eqz v3, :cond_11

    .line 836
    :cond_10
    const/4 v4, 0x2

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 838
    .end local v4    # "stackMode":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "stackMode":I
    goto :goto_5

    :cond_12
    move v7, v9

    .line 841
    goto :goto_6

    .restart local v6    # "v":Landroid/view/View;
    :cond_13
    move-object v7, v10

    .line 846
    goto :goto_7
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 960
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 961
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 962
    .local v4, "newY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 963
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 965
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 966
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 967
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 970
    :cond_0
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 971
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 972
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_4

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_4

    .line 977
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    .line 980
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 983
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_3

    .line 984
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 988
    :goto_0
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 1042
    :cond_2
    :goto_1
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 1043
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 1044
    return-void

    .line 986
    :cond_3
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0

    .line 989
    :cond_4
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_6

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_6

    .line 991
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    .line 994
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 997
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 998
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1003
    :goto_2
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 1000
    :cond_5
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_2

    .line 1004
    :cond_6
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 1007
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1008
    .local v3, "finalYProgress":F
    :goto_3
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_9

    .line 1009
    :cond_7
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1014
    .local v2, "duration":I
    :goto_4
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 1015
    .local v0, "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 1016
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1017
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1019
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1020
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/StackView;->createInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1021
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 1007
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 1011
    .restart local v3    # "finalYProgress":F
    :cond_9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_4

    .line 1022
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 1024
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    const/4 v3, 0x0

    .line 1026
    .restart local v3    # "finalYProgress":F
    :goto_5
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_d

    .line 1027
    :cond_b
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1032
    .restart local v2    # "duration":I
    :goto_6
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 1033
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 1035
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1036
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1038
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1039
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 1024
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    .line 1029
    .restart local v3    # "finalYProgress":F
    :cond_d
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_6
.end method

.method private initStackView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 254
    invoke-virtual {p0}, Landroid/widget/StackView;->NUM_ACTIVE_VIEWS()I

    move-result v2

    invoke-virtual {p0, v2, v7}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 255
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 257
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 258
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 259
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 261
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 262
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-boolean v2, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 266
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 267
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 269
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 273
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_1

    .line 274
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 276
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 277
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 284
    iget-boolean v2, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v2, :cond_2

    iput v6, p0, Landroid/widget/StackView;->mStackMode:I

    .line 288
    :goto_0
    iput v5, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 292
    iget-object v2, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 293
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 294
    return-void

    .line 285
    .end local v1    # "density":F
    :cond_2
    iput v7, p0, Landroid/widget/StackView;->mStackMode:I

    goto :goto_0
.end method

.method private measureChildren()V
    .locals 15

    .prologue
    const/high16 v14, -0x80000000

    const/high16 v13, 0x3f800000    # 1.0f

    .line 1356
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v5

    .line 1358
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v10

    .line 1359
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v9

    .line 1361
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_X()F

    move-result v12

    sub-float v12, v13, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1363
    .local v4, "childWidth":I
    int-to-float v11, v9

    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_Y()F

    move-result v12

    sub-float v12, v13, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1366
    .local v1, "childHeight":I
    const/4 v8, 0x0

    .line 1367
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 1369
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1370
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1371
    .local v0, "child":Landroid/view/View;
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1374
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    .line 1375
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1376
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1377
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_0

    .line 1378
    move v8, v3

    .line 1380
    :cond_0
    if-le v2, v7, :cond_1

    .line 1381
    move v7, v2

    .line 1369
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1386
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_X()F

    move-result v11

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1387
    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_Y()F

    move-result v11

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1389
    iget-boolean v11, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v11, :cond_4

    .line 1391
    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-ge v8, v4, :cond_3

    .line 1392
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1395
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    if-ge v7, v1, :cond_4

    .line 1396
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1399
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .prologue
    .line 712
    iget-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_0

    .line 713
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 714
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 717
    :cond_0
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 718
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 719
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 720
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 723
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 727
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 728
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 730
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 917
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 918
    .local v5, "pointerId":I
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v9, :cond_0

    .line 920
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v1, 0x0

    .line 922
    .local v1, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 923
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_2

    .line 957
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 920
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 929
    .restart local v1    # "activeViewIndex":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 930
    if-eq v2, v0, :cond_3

    .line 932
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 933
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 935
    .local v8, "y":F
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 936
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 937
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 938
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 941
    .local v4, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 942
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 944
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 945
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 946
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 929
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 955
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private pacedScroll(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 754
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 755
    if-eqz p1, :cond_1

    .line 756
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 760
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 762
    :cond_0
    return-void

    .line 758
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 488
    return-void
.end method

.method private setupStackSlider(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groundView"    # Landroid/view/View;
    .param p3, "baseView"    # Landroid/view/View;
    .param p4, "mode"    # I

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p4}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 492
    if-eqz p1, :cond_1

    .line 493
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 496
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 497
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 498
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 501
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setGroundView(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p3}, Landroid/widget/StackView$StackSlider;->setBaseView(Landroid/view/View;)V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    if-eqz p2, :cond_1

    .line 509
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setGroundView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 26
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 405
    .local v6, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 406
    .local v5, "maxPerspectiveShiftX":F
    move/from16 v8, p1

    .line 408
    .local v8, "origIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mStackMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v22, v0

    sub-int v22, v22, p1

    add-int/lit8 p1, v22, -0x1

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 416
    :cond_0
    :goto_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 418
    .local v11, "r":F
    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v11

    mul-float v23, v23, v24

    sub-float v13, v22, v23

    .line 420
    .local v13, "scale":F
    mul-float v10, v11, v6

    .line 421
    .local v10, "perspectiveTranslationY":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_Y()F

    move-result v25

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    mul-float v17, v22, v23

    .line 423
    .local v17, "scaleShiftCorrectionY":F
    add-float v19, v10, v17

    .line 425
    .local v19, "transY":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v11

    mul-float v9, v22, v5

    .line 426
    .local v9, "perspectiveTranslationX":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_X()F

    move-result v25

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    mul-float v16, v22, v23

    .line 428
    .local v16, "scaleShiftCorrectionX":F
    add-float v18, v9, v16

    .line 430
    .local v18, "transX":F
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/StackView;->mGroundRotation:F

    .line 434
    .local v4, "fRotate":F
    :goto_1
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p2

    .line 435
    check-cast v22, Landroid/widget/StackView$StackFrame;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 438
    :cond_1
    if-eqz p3, :cond_d

    .line 439
    const-string v22, "translationX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    .line 440
    .local v20, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string v22, "translationY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v19, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    .line 441
    .local v21, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string v22, "scaleX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 442
    .local v14, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string v22, "scaleY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 445
    .local v15, "scalePropY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/StackView;->mHtcStyle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 446
    const/high16 v2, 0x3f800000    # 1.0f

    .line 448
    .local v2, "alpha":F
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v8, v0, :cond_9

    .line 449
    const v2, 0x3f333333    # 0.7f

    .line 453
    :cond_2
    :goto_2
    const-string v22, "rotation"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v4, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 454
    .local v12, "rotateProp":Landroid/animation/PropertyValuesHolder;
    const-string v22, "alpha"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v2, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 457
    .local v3, "alphaProp":Landroid/animation/PropertyValuesHolder;
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    :cond_3
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 458
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView;->mHtcStackViewGestureMode:I

    .line 459
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v21, v22, v23

    const/16 v23, 0x1

    aput-object v20, v22, v23

    const/16 v23, 0x2

    aput-object v12, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 471
    .end local v2    # "alpha":F
    .end local v3    # "alphaProp":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "rotateProp":Landroid/animation/PropertyValuesHolder;
    .local v7, "oa":Landroid/animation/ObjectAnimator;
    :goto_3
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 472
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 473
    check-cast p2, Landroid/widget/StackView$StackFrame;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 475
    :cond_5
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 484
    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    .end local v14    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    :goto_4
    return-void

    .line 412
    .end local v4    # "fRotate":F
    .end local v9    # "perspectiveTranslationX":F
    .end local v10    # "perspectiveTranslationY":F
    .end local v11    # "r":F
    .end local v13    # "scale":F
    .end local v16    # "scaleShiftCorrectionX":F
    .end local v17    # "scaleShiftCorrectionY":F
    .end local v18    # "transX":F
    .end local v19    # "transY":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 413
    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 430
    .restart local v9    # "perspectiveTranslationX":F
    .restart local v10    # "perspectiveTranslationY":F
    .restart local v11    # "r":F
    .restart local v13    # "scale":F
    .restart local v16    # "scaleShiftCorrectionX":F
    .restart local v17    # "scaleShiftCorrectionY":F
    .restart local v18    # "transX":F
    .restart local v19    # "transY":F
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 450
    .restart local v2    # "alpha":F
    .restart local v4    # "fRotate":F
    .restart local v14    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_9
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v8, v0, :cond_2

    .line 451
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 461
    .restart local v3    # "alphaProp":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "rotateProp":Landroid/animation/PropertyValuesHolder;
    :cond_a
    if-eqz v8, :cond_b

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    const/16 v23, 0x1

    aput-object v15, v22, v23

    const/16 v23, 0x2

    aput-object v21, v22, v23

    const/16 v23, 0x3

    aput-object v20, v22, v23

    const/16 v23, 0x4

    aput-object v12, v22, v23

    const/16 v23, 0x5

    aput-object v3, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .restart local v7    # "oa":Landroid/animation/ObjectAnimator;
    :goto_5
    goto :goto_3

    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    :cond_b
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    const/16 v23, 0x1

    aput-object v15, v22, v23

    const/16 v23, 0x2

    aput-object v21, v22, v23

    const/16 v23, 0x3

    aput-object v20, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_5

    .line 468
    .end local v2    # "alpha":F
    .end local v3    # "alphaProp":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "rotateProp":Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    const/16 v23, 0x1

    aput-object v15, v22, v23

    const/16 v23, 0x2

    aput-object v21, v22, v23

    const/16 v23, 0x3

    aput-object v20, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .restart local v7    # "oa":Landroid/animation/ObjectAnimator;
    goto/16 :goto_3

    .line 477
    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    .end local v14    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_d
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 478
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 479
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleX(F)V

    .line 480
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleY(F)V

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/StackView;->mHtcStyle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_4
.end method

.method private updateChildTransforms()V
    .locals 3

    .prologue
    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 621
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 622
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 623
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected DEFAULT_ANIMATION_DURATION()I
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x190

    goto :goto_0
.end method

.method protected MINIMUM_ANIMATION_DURATION()I
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method protected NUM_ACTIVE_VIEWS()I
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected PERSPECTIVE_SHIFT_FACTOR_X()F
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0
.end method

.method protected PERSPECTIVE_SHIFT_FACTOR_Y()F
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0
.end method

.method public advance()V
    .locals 7

    .prologue
    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long v1, v3, v5

    .line 1345
    .local v1, "timeSinceLastInteraction":J
    iget-object v3, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v0

    .line 1347
    .local v0, "adapterCount":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-nez v3, :cond_0

    .line 1349
    :cond_2
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 678
    return-void
.end method

.method protected createInterpolator(Z)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "slideOut"    # Z

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40900000    # 4.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1287
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1288
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1289
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1290
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1291
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1292
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1295
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 682
    const/4 v3, 0x0

    .line 684
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 685
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 686
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 687
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 689
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_0

    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 691
    :cond_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 693
    :cond_2
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 694
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 695
    const/4 v3, 0x1

    .line 696
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 686
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 702
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 703
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 704
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    :goto_1
    return-void

    .line 707
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 669
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 670
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 671
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 617
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 748
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 737
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 738
    .local v0, "vscroll":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 739
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/StackView;->pacedScroll(Z)V

    goto :goto_0

    .line 741
    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 742
    invoke-direct {p0, v1}, Landroid/widget/StackView;->pacedScroll(Z)V

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1455
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1456
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1457
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1461
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1462
    const-class v1, Landroid/widget/StackView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1463
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1464
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1466
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1468
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_1

    .line 1469
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1472
    :cond_1
    return-void

    .line 1463
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 770
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 803
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    .line 772
    :pswitch_1
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialX:F

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    .line 775
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_0

    .line 780
    :pswitch_2
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 781
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_2

    .line 783
    const-string v5, "StackView"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 786
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 787
    .local v2, "newY":F
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v1, v2, v5

    .line 789
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 793
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 798
    :pswitch_4
    iput v6, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 799
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v3

    .line 1304
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v13, :cond_0

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int v12, v13, v14

    .line 1306
    .local v12, "nContentWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int v11, v13, v14

    .line 1308
    .local v11, "nContentHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1309
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1311
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1312
    .local v10, "nChildWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1314
    .local v7, "nChildHeight":I
    sub-int v13, v12, v10

    div-int/lit8 v8, v13, 0x2

    .line 1315
    .local v8, "nChildLeft":I
    sub-int v13, v11, v7

    div-int/lit8 v9, v13, 0x2

    .line 1316
    .local v9, "nChildTop":I
    add-int v4, v8, v10

    .line 1317
    .local v4, "childRight":I
    add-int v2, v9, v7

    .line 1318
    .local v2, "childBottom":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 1320
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v13, v8

    iget v14, v6, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v14, v9

    iget v15, v6, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v15, v4

    iget v0, v6, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    move/from16 v16, v0

    add-int v16, v16, v2

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1308
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1326
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBottom":I
    .end local v4    # "childRight":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    .end local v7    # "nChildHeight":I
    .end local v8    # "nChildLeft":I
    .end local v9    # "nChildTop":I
    .end local v10    # "nChildWidth":I
    .end local v11    # "nContentHeight":I
    .end local v12    # "nContentWidth":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1327
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1329
    .restart local v1    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int v4, v13, v14

    .line 1330
    .restart local v4    # "childRight":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v2, v13, v14

    .line 1331
    .restart local v2    # "childBottom":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 1333
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v14, v6, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mPaddingTop:I

    iget v15, v6, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v15, v4

    iget v0, v6, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    move/from16 v16, v0

    add-int v16, v16, v2

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1326
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1338
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBottom":I
    .end local v4    # "childRight":I
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/StackView;->onLayout()V

    .line 1339
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1403
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1404
    .local v8, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1405
    .local v5, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1406
    .local v7, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1408
    .local v4, "heightSpecMode":I
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v2, 0x1

    .line 1412
    .local v2, "haveChildRefSize":Z
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_Y()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v1, v9, v10

    .line 1413
    .local v1, "factorY":F
    if-nez v4, :cond_4

    .line 1414
    if-eqz v2, :cond_3

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int v5, v9, v10

    .line 1432
    :cond_0
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/StackView;->PERSPECTIVE_SHIFT_FACTOR_X()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v0, v9, v10

    .line 1433
    .local v0, "factorX":F
    if-nez v7, :cond_8

    .line 1434
    if-eqz v2, :cond_7

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 1449
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v5}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1450
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1451
    return-void

    .line 1408
    .end local v0    # "factorX":F
    .end local v1    # "factorY":F
    .end local v2    # "haveChildRefSize":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1414
    .restart local v1    # "factorY":F
    .restart local v2    # "haveChildRefSize":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1417
    :cond_4
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_0

    .line 1418
    if-eqz v2, :cond_6

    .line 1419
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1421
    .local v3, "height":I
    if-gt v3, v5, :cond_5

    .line 1422
    move v5, v3

    goto :goto_1

    .line 1424
    :cond_5
    const/high16 v9, 0x1000000

    or-int/2addr v5, v9

    goto :goto_1

    .line 1428
    .end local v3    # "height":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1434
    .restart local v0    # "factorX":F
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1437
    :cond_8
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_1

    .line 1438
    if-eqz v2, :cond_a

    .line 1439
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1440
    .local v6, "width":I
    if-gt v6, v8, :cond_9

    .line 1441
    move v8, v6

    goto :goto_2

    .line 1443
    :cond_9
    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    goto :goto_2

    .line 1446
    .end local v6    # "width":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 859
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 862
    .local v0, "action":I
    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 863
    .local v5, "pointerIndex":I
    if-ne v5, v12, :cond_0

    .line 865
    const-string v9, "StackView"

    const-string v10, "Error: No data for our primary pointer."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_0
    return v8

    .line 869
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 870
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 871
    .local v3, "newX":F
    iget v10, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v4, v10

    .line 872
    .local v2, "deltaY":F
    iget v10, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v1, v3, v10

    .line 873
    .local v1, "deltaX":F
    iget-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 874
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 876
    :cond_1
    iget-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 878
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 912
    goto :goto_0

    .line 880
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 882
    iget v8, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float v7, v1, v8

    .line 883
    .local v7, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 884
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    sub-float v8, v2, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 885
    .local v6, "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v9, :cond_3

    sub-float v6, v11, v6

    .line 886
    :cond_3
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v8, v10}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 887
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 888
    goto :goto_0

    .line 889
    .end local v6    # "r":F
    :cond_4
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v9, :cond_2

    .line 890
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 891
    .restart local v6    # "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v9, :cond_5

    sub-float v6, v11, v6

    .line 892
    :cond_5
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 893
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 894
    goto :goto_0

    .line 899
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 903
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 907
    :pswitch_4
    iput v12, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 908
    iput v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_1

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1476
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1496
    :goto_0
    return v0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1480
    goto :goto_0

    .line 1482
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1496
    goto :goto_0

    .line 1484
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1485
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1488
    goto :goto_0

    .line 1490
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v2

    if-lez v2, :cond_3

    .line 1491
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1494
    goto :goto_0

    .line 1482
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected readHtcConfig(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v2, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "config":Ljava/lang/String;
    const-string v2, "htc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/StackView;->mHtcStyle:Z

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    iget-boolean v2, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v2, :cond_0

    .line 244
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    const/4 v2, 0x1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mGroundRotation:F

    .line 247
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    :cond_0
    const-string v2, "StackView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcStyle? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/widget/StackView;->mHtcStyle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/StackView;->mGroundRotation:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public showNext()V
    .locals 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 521
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v3, :cond_0

    .line 542
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-boolean v3, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v3, :cond_1

    .line 523
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, "v":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v3, :cond_2

    .line 525
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 526
    .local v1, "v2":Landroid/view/View;
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    .line 527
    .local v2, "v3":Landroid/view/View;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 528
    invoke-direct {p0, v0, v1, v2, v5}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 529
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v4}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 530
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v4}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 541
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "v2":Landroid/view/View;
    .end local v2    # "v3":Landroid/view/View;
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_0

    .line 534
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_1

    .line 535
    invoke-direct {p0, v0, v5}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 536
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v4}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 537
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v4}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto :goto_1
.end method

.method showOnly(IZ)V
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 577
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_1

    .line 578
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 579
    .local v1, "index":I
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 580
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    .line 581
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 582
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 577
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 585
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 586
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 588
    :cond_2
    iput-boolean v6, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 589
    iput-boolean v6, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 590
    return-void
.end method

.method public showPrevious()V
    .locals 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 550
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 552
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, "v":Landroid/view/View;
    iget-boolean v1, p0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v1, :cond_2

    .line 554
    if-eqz v0, :cond_1

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 556
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v5}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 557
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v4}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 569
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_0

    .line 561
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_1

    .line 562
    invoke-direct {p0, v0, v3}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 563
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v5}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 564
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v4}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto :goto_1
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 608
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 610
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 611
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    .line 300
    if-nez p4, :cond_0

    move-object/from16 v13, p3

    .line 301
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 302
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 304
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 305
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 308
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    .line 309
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 310
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 312
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 398
    :cond_1
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_2

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 401
    :cond_2
    return-void

    .line 314
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 316
    :cond_4
    if-nez p1, :cond_6

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    move-object/from16 v13, p3

    .line 318
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 319
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 322
    .local v5, "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 323
    .local v4, "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 325
    if-eqz p4, :cond_5

    .line 326
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 327
    .local v9, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 328
    .local v8, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 330
    .local v7, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v13, v5

    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/StackView;->createInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 332
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v7}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 333
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 335
    .end local v7    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v8    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 336
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 338
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_6
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    if-nez p2, :cond_8

    move-object/from16 v13, p3

    .line 340
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 343
    .restart local v5    # "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 344
    .restart local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 345
    if-eqz p4, :cond_7

    .line 346
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 347
    .local v12, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 348
    .local v11, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 350
    .local v10, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v13, v5

    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/StackView;->createInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 352
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v10}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 353
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 355
    .end local v10    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v11    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_7
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 356
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 358
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_8
    if-nez p2, :cond_9

    .line 360
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 361
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 362
    :cond_9
    if-eqz p1, :cond_a

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    :cond_a
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_c

    .line 363
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 366
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v13, :cond_b

    .line 367
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 373
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 375
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 376
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_b
    move-object/from16 v13, p3

    .line 371
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    goto :goto_1

    .line 377
    :cond_c
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_e

    .line 378
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v13, :cond_d

    const/4 v13, 0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_d

    .line 380
    const v13, 0x3f333333    # 0.7f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 384
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 382
    :cond_d
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 385
    :cond_e
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 386
    if-eqz p4, :cond_f

    .line 387
    new-instance v13, Landroid/widget/StackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 393
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 593
    iget-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_1

    .line 594
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 595
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v3, p0, Landroid/widget/StackView;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 598
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 599
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 601
    :cond_0
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 603
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
