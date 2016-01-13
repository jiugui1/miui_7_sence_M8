.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final ANIMATION_STYLE:I = 0x2

.field private static final NO_ANIMATION:I = 0x2

.field private static final SCREEN_ANIMATION:I = 0x1


# instance fields
.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mScreenPaint:Landroid/graphics/Paint;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->animDuration:I

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->setupAnimationEnv()V

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->initPadding()V

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->initFontStyle(Landroid/content/Context;)V

    return-void
.end method

.method private initFontStyle(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x20300d7

    :try_start_0
    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .local v5, "ts":I
    if-eqz v5, :cond_1

    const/4 v6, 0x0

    int-to-float v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/htc/quickselection/HtcCheckableImageView;->setTextSize(IF)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .end local v5    # "ts":I
    :cond_1
    :goto_1
    const/16 v6, 0xc

    :try_start_3
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "familyName":Ljava/lang/String;
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "styleIndex":I
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/quickselection/HtcCheckableImageView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .end local v2    # "familyName":Ljava/lang/String;
    .end local v3    # "styleIndex":I
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    :goto_3
    return-void

    .restart local v0    # "appearance":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/quickselection/HtcCheckableImageView;->setTextColor(I)V

    goto :goto_0

    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    goto :goto_3

    .restart local v0    # "appearance":Landroid/content/res/TypedArray;
    :catch_2
    move-exception v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    const/4 v6, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {p0, v6, v7}, Lcom/htc/quickselection/HtcCheckableImageView;->setTextSize(IF)V

    goto :goto_1

    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string v6, "sans-serif-condensed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/quickselection/HtcCheckableImageView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method initPadding()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "M6":I
    div-int/lit8 v2, v0, 0x2

    .local v2, "left":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v4

    .local v4, "top":I
    div-int/lit8 v3, v0, 0x2

    .local v3, "right":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v1

    .local v1, "bottom":I
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .local v7, "canvasCount":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v7    # "canvasCount":I
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setCategoryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleY(F)V

    return-void
.end method
