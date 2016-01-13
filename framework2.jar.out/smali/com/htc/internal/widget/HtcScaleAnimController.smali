.class public Lcom/htc/internal/widget/HtcScaleAnimController;
.super Ljava/lang/Object;
.source "HtcScaleAnimController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;
    }
.end annotation


# static fields
.field private static SIZE_100_PERCENT:F

.field private static SIZE_90_PERCENT:F


# instance fields
.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field mActor:Landroid/view/View;

.field private mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

.field private mColor:I

.field mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private mIsPostDelayMultiplyFalse:Z

.field mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_90_PERCENT:F

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_100_PERCENT:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/internal/widget/HtcScaleAnimController;-><init>(Landroid/view/View;Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "listener"    # Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->animDuration:I

    .line 154
    iput-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 155
    iput-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mIsPostDelayMultiplyFalse:Z

    .line 230
    iput-boolean v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->forceMultiply:Z

    .line 245
    iput-boolean v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->internalForceMultiply:Z

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HtcScaleAnimController(null) is not supported in HtcScaleAnimController"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setActor(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/htc/internal/widget/HtcScaleAnimController;->setColor(I)V

    .line 61
    invoke-virtual {p0, p3}, Lcom/htc/internal/widget/HtcScaleAnimController;->setListener(Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/internal/widget/HtcScaleAnimController;->setupAnimationEnv()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/internal/widget/HtcScaleAnimController;-><init>(Landroid/view/View;ILcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V

    .line 51
    invoke-direct {p0}, Lcom/htc/internal/widget/HtcScaleAnimController;->initColor()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/htc/internal/widget/HtcScaleAnimController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/internal/widget/HtcScaleAnimController;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private getFocusIndicator(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "actor"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 96
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 107
    const v3, 0x208012b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 111
    iget-object v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 114
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    iget-object v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    iget-object v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private initColor()V
    .locals 5

    .prologue
    .line 67
    iget-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    if-nez v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, "c":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 76
    sget-object v3, Lcom/htc/internal/R$styleable;->OverlayDrawable:[I

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 78
    .local v2, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/htc/internal/widget/HtcScaleAnimController;->setColor(I)V

    goto :goto_0
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-boolean v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 251
    iput-boolean p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->internalForceMultiply:Z

    .line 252
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public getFocusIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isScaleUpAnimRuning()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V

    .line 348
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mIsPostDelayMultiplyFalse:Z

    if-eqz v1, :cond_2

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 354
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/htc/internal/widget/HtcScaleAnimController$2;

    invoke-direct {v1, p0}, Lcom/htc/internal/widget/HtcScaleAnimController$2;-><init>(Lcom/htc/internal/widget/HtcScaleAnimController;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v1}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->onScaleUpAnimationEnd()V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

    .line 372
    :cond_1
    return-void

    .line 360
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 376
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 380
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mAnimationEndOnClickListener:Landroid/view/View$OnClickListener;

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->isEnableAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->onDrawMultiplyContent(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->onDrawMultiplyContent(Landroid/graphics/Canvas;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 284
    :cond_3
    iget-boolean v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->internalForceMultiply:Z

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v4, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 295
    .local v7, "canvasCount":I
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->onDrawMultiplyContent(Landroid/graphics/Canvas;)V

    .line 298
    iget v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 299
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 303
    .end local v7    # "canvasCount":I
    :cond_4
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->onDrawMultiplyContent(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;->isEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 210
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 215
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 220
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 222
    sget v0, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_100_PERCENT:F

    invoke-virtual {p0, v0}, Lcom/htc/internal/widget/HtcScaleAnimController;->setViewScale(F)V

    .line 223
    invoke-direct {p0, v1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setActor(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mColor:I

    .line 86
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    iget v1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mColor:I

    invoke-direct {p0, v0, v1}, Lcom/htc/internal/widget/HtcScaleAnimController;->getFocusIndicator(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public setListener(Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mListener:Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;

    .line 121
    return-void
.end method

.method public setMultiplyForceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-boolean v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 239
    iput-boolean p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->forceMultiply:Z

    .line 240
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 243
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 147
    return-void
.end method

.method public setPostDelayMultiplyFalse(Z)V
    .locals 0
    .param p1, "isDelay"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mIsPostDelayMultiplyFalse:Z

    .line 343
    return-void
.end method

.method public setViewScale(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 133
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mActor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 135
    :cond_0
    return-void
.end method

.method public setupAnimationEnv()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "viewScale"

    new-array v1, v5, [F

    sget v2, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_90_PERCENT:F

    aput v2, v1, v3

    sget v2, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_100_PERCENT:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 168
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    const-string v0, "viewScale"

    new-array v1, v5, [F

    sget v2, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_100_PERCENT:F

    aput v2, v1, v3

    sget v2, Lcom/htc/internal/widget/HtcScaleAnimController;->SIZE_90_PERCENT:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController;->mScaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/htc/internal/widget/HtcScaleAnimController$1;

    invoke-direct {v1, p0}, Lcom/htc/internal/widget/HtcScaleAnimController$1;-><init>(Lcom/htc/internal/widget/HtcScaleAnimController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
