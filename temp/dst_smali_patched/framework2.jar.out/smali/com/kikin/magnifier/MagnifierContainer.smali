.class public Lcom/kikin/magnifier/MagnifierContainer;
.super Landroid/widget/FrameLayout;
.source "MagnifierContainer.java"


# instance fields
.field private area:Landroid/graphics/Rect;

.field private backgroundView:Landroid/view/View;

.field private magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

.field private visible:Z

.field private wrapperView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->backgroundView:Landroid/view/View;

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->backgroundView:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->backgroundView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/kikin/magnifier/MagnifierContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->wrapperView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->wrapperView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->wrapperView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/kikin/magnifier/MagnifierContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xc8

    .local v0, "sizeDp":I
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .local v1, "sizePx":I
    new-instance v2, Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-direct {v2, p1, v1, v1}, Lcom/kikin/magnifier/MagnifyingGlassView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->wrapperView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->visible:Z

    return v0
.end method

.method public setArea(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    if-eqz p1, :cond_0

    .end local p1    # "rect":Landroid/graphics/Rect;
    :goto_0
    iput-object p1, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->wrapperView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "rect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public setBackgroundVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierContainer;->backgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setDecorView(Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifyingGlassView;->setDecorView(Landroid/view/View;)V

    return-void
.end method

.method public setMagnifyingVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-virtual {v1, v0}, Lcom/kikin/magnifier/MagnifyingGlassView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setNeedsRedraw()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierContainer;->invalidate()V

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-virtual {v0}, Lcom/kikin/magnifier/MagnifyingGlassView;->invalidate()V

    return-void
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Point;

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierContainer;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/kikin/magnifier/MagnifyingGlassView;->setPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setVisibile(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->visible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/kikin/magnifier/MagnifierContainer;->setBackgroundVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/kikin/magnifier/MagnifierContainer;->setMagnifyingVisible(Z)V

    iput-boolean v2, p0, Lcom/kikin/magnifier/MagnifierContainer;->visible:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/kikin/magnifier/MagnifierContainer;->setBackgroundVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/kikin/magnifier/MagnifierContainer;->setMagnifyingVisible(Z)V

    iput-boolean v1, p0, Lcom/kikin/magnifier/MagnifierContainer;->visible:Z

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierContainer;->magnifyingView:Lcom/kikin/magnifier/MagnifyingGlassView;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifyingGlassView;->setZoom(F)V

    return-void
.end method
