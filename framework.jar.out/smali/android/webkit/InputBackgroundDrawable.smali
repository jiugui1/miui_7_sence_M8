.class public Landroid/webkit/InputBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "InputBackgroundDrawable.java"


# static fields
.field private static final DONW_DURATION:I = 0x12c

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final MODE_DARK:I = 0x0

.field public static final MODE_LIGHT:I = 0x1


# instance fields
.field private mColor:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaddingLeftRight:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v6, -0x1

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 38
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 39
    .local v0, "id":I
    if-nez p2, :cond_1

    const/4 v1, 0x1

    .line 41
    .local v1, "isModeDark":Z
    :goto_0
    if-nez v1, :cond_0

    .line 42
    const-string v3, "common_inputfield_outer"

    invoke-static {p1, v3}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 43
    if-lez v0, :cond_2

    .line 44
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    const-string v3, "common_b_inputfield_pressed"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    :goto_2
    if-lez v0, :cond_4

    .line 55
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    :goto_3
    if-eqz v1, :cond_5

    const-string v3, "common_b_inputfield_rest"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    :goto_4
    if-lez v0, :cond_6

    .line 64
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    :goto_5
    const-string v3, "margin_m"

    const-string v4, "dimen"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    .line 70
    const-string v3, "multiply_color"

    const-string v4, "multiply_color"

    const-string v5, "color"

    const-string v6, "com.htc"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/InputBackgroundDrawable;->mColor:I

    .line 72
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Landroid/webkit/InputBackgroundDrawable;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 73
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 74
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    return-void

    .line 39
    .end local v1    # "isModeDark":Z
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 46
    .restart local v1    # "isModeDark":Z
    :cond_2
    const-string v3, "InputBackgroundDrawable"

    const-string v4, "resource common_inputfield_outer not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 51
    :cond_3
    const-string v3, "common_inputfield_pressed"

    invoke-static {p1, v3}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 57
    :cond_4
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 60
    :cond_5
    const-string v3, "common_inputfield_rest"

    invoke-static {p1, v3}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 66
    :cond_6
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 73
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "defRes":I
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/InputBackgroundDrawable;->mIsFocused:Z

    if-eqz v0, :cond_2

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :goto_0
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 149
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 151
    iget v0, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 152
    iget v0, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 104
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "isPressed":Z
    const/4 v1, 0x0

    .line 114
    .local v1, "isFocused":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 115
    aget v3, p1, v0

    const v4, 0x101009c

    if-ne v3, v4, :cond_1

    .line 116
    const/4 v1, 0x1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 118
    const/4 v2, 0x1

    goto :goto_1

    .line 121
    :cond_2
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-nez v3, :cond_4

    .line 122
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    :cond_3
    :goto_2
    iput-boolean v2, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    .line 127
    iput-boolean v1, p0, Landroid/webkit/InputBackgroundDrawable;->mIsFocused:Z

    .line 128
    invoke-virtual {p0}, Landroid/webkit/InputBackgroundDrawable;->invalidateSelf()V

    .line 129
    const/4 v3, 0x1

    return v3

    .line 123
    :cond_4
    iget-boolean v3, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    invoke-virtual {p0}, Landroid/webkit/InputBackgroundDrawable;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 167
    return-void
.end method
