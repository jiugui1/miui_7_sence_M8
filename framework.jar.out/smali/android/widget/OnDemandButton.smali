.class public Landroid/widget/OnDemandButton;
.super Landroid/widget/Button;
.source "OnDemandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private alphaColor:I

.field private draw_color:Z

.field private oldLocale:Ljava/util/Locale;

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;

.field private scaleXDifference:I

.field private scaleYDifference:I

.field private support_scale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "OnDemandButton"

    iput-object v0, p0, Landroid/widget/OnDemandButton;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->DEBUG:Z

    .line 46
    iput v2, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    .line 47
    iput v2, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    .line 123
    iput-object v1, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    iput-object v1, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 223
    iput-object v1, p0, Landroid/widget/OnDemandButton;->oldLocale:Ljava/util/Locale;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->draw_color:Z

    .line 230
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/OnDemandButton;->alphaColor:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/OnDemandButton;->initAnimationEnv(Landroid/content/res/Resources;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "OnDemandButton"

    iput-object v0, p0, Landroid/widget/OnDemandButton;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->DEBUG:Z

    .line 46
    iput v2, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    .line 47
    iput v2, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    .line 123
    iput-object v1, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    iput-object v1, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 223
    iput-object v1, p0, Landroid/widget/OnDemandButton;->oldLocale:Ljava/util/Locale;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->draw_color:Z

    .line 230
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/OnDemandButton;->alphaColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/OnDemandButton;->initAnimationEnv(Landroid/content/res/Resources;)V

    .line 43
    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 177
    :cond_1
    iput-object v1, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 178
    iput-object v1, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 179
    return-void
.end method

.method private get2DPressAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 70
    iget-boolean v7, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-nez v7, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 74
    .local v6, "width":F
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 76
    .local v0, "height":F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .line 77
    .local v4, "scaleX":F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .line 79
    .local v5, "scaleY":F
    const-string v7, "scaleX"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 80
    .local v2, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 83
    .local v3, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 86
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 88
    .local v1, "pressAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x3c

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private get2DReleaseAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 98
    iget-boolean v7, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-nez v7, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v3

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 102
    .local v6, "width":F
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 104
    .local v0, "height":F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .line 105
    .local v5, "scaleY":F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .line 107
    .local v4, "scaleX":F
    const-string v7, "scaleX"

    new-array v8, v11, [F

    aput v4, v8, v9

    aput v12, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 108
    .local v1, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v12, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 111
    .local v2, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 114
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v9

    aput-object v2, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 116
    .local v3, "releaseAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x3c

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private initAnimationEnv(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resource"    # Landroid/content/res/Resources;

    .prologue
    const/16 v1, 0xa

    .line 52
    const v0, 0x20d003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    .line 53
    const v0, 0x20d003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    .line 56
    iget v0, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    if-gez v0, :cond_1

    .line 58
    :cond_0
    iput v1, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    .line 59
    iput v1, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    .line 60
    const-string v0, "OnDemandButton"

    const-string v1, "!!!!!incorrect load scale resource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->isInAllCapsLocale()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/OnDemandButton;->setAllCaps(Z)V

    .line 64
    return-void
.end method

.method private isInAllCapsLocale()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v4

    .line 204
    :goto_0
    return v3

    .line 198
    :cond_0
    :try_start_0
    const-string v3, "com.htc.util.res.HtcResUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "clz":Ljava/lang/Class;
    const-string v3, "isInAllCapsLocale"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 200
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 201
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 204
    goto :goto_0
.end method

.method private setColorSelectorEnable(Z)V
    .locals 2
    .param p1, "_enable"    # Z

    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->draw_color:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iput-boolean p1, p0, Landroid/widget/OnDemandButton;->draw_color:Z

    .line 252
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 185
    iget-object v0, p0, Landroid/widget/OnDemandButton;->mContext:Landroid/content/Context;

    const v1, 0x203005b

    invoke-virtual {p0, v0, v1}, Landroid/widget/OnDemandButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 186
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/OnDemandButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/OnDemandButton;->setTextColor(I)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 215
    .local v0, "newLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/widget/OnDemandButton;->oldLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OnDemandButton;->oldLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    :cond_0
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->isInAllCapsLocale()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/OnDemandButton;->setAllCaps(Z)V

    .line 218
    iput-object v0, p0, Landroid/widget/OnDemandButton;->oldLocale:Ljava/util/Locale;

    .line 220
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    .line 259
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->draw_color:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    iget v0, p0, Landroid/widget/OnDemandButton;->alphaColor:I

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_1
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-ne v0, v1, :cond_2

    .line 137
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    .line 138
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->get2DPressAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 139
    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 142
    :cond_2
    invoke-direct {p0, v1}, Landroid/widget/OnDemandButton;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 145
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-ne v0, v1, :cond_3

    .line 147
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    .line 148
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->get2DReleaseAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 149
    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0, v3}, Landroid/widget/OnDemandButton;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 155
    :pswitch_3
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    if-ne v0, v1, :cond_4

    .line 157
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/widget/OnDemandButton;->setScaleX(F)V

    .line 159
    invoke-virtual {p0, v2}, Landroid/widget/OnDemandButton;->setScaleY(F)V

    goto :goto_1

    .line 162
    :cond_4
    invoke-direct {p0, v3}, Landroid/widget/OnDemandButton;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setColorEffectEnable(ZI)V
    .locals 3
    .param p1, "_enable"    # Z
    .param p2, "_alpha"    # I

    .prologue
    const/4 v1, 0x1

    .line 237
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->support_scale:Z

    .line 238
    iput p2, p0, Landroid/widget/OnDemandButton;->alphaColor:I

    .line 239
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->postInvalidate()V

    .line 241
    iget-boolean v0, p0, Landroid/widget/OnDemandButton;->DEBUG:Z

    if-ne v0, v1, :cond_0

    .line 242
    const-string v0, "OnDemandButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorEffectEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alphaColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/OnDemandButton;->alphaColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
