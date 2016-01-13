.class public Lcom/android/internal/view/menu/OverflowMenuView;
.super Landroid/widget/TextView;
.source "OverflowMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOrientation:I

.field mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrset"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->ENABLE_ALPHA:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->DISABLE_ALPHA:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "label_off_m"

    const-string v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "fontStyle":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->setTextColor(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ActionBarUtil;->getItemWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinWidth:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinHeight:I

    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;

    return-void
.end method

.method private getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/internal/widget/HtcScaleAnimController;

    invoke-direct {v0, p0, p0}, Lcom/htc/internal/widget/HtcScaleAnimController;-><init>(Landroid/view/View;Lcom/htc/internal/widget/HtcScaleAnimController$AnimationListener;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    invoke-virtual {v0}, Lcom/htc/internal/widget/HtcScaleAnimController;->setupAnimationEnv()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    return-object v0
.end method


# virtual methods
.method public isEnableAnimation()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinHeight:I

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawMultiplyContent(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mMinHeight:I

    .local v1, "h":I
    iget-object v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getPaddingLeft()I

    move-result v2

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getPaddingBottom()I

    move-result v5

    invoke-super {p0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public onScaleUpAnimationEnd()V
    .locals 0

    .prologue
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setMultiplyForceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setMultiplyForceEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/internal/widget/HtcScaleAnimController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getScaleAnimcontroller()Lcom/htc/internal/widget/HtcScaleAnimController;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
