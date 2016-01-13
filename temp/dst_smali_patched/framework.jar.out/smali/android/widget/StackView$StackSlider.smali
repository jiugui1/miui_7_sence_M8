.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mBaseView:Landroid/view/View;

.field mGroundView:Landroid/view/View;

.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 1
    .param p2, "copy"    # Landroid/widget/StackView$StackSlider;

    .prologue
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    iget-object v0, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iget v0, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iget v0, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iget v0, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method private cubic(F)F
    .locals 5
    .param p1, "r"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v4, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    div-float/2addr v0, v4

    return v0
.end method

.method private getDuration(ZF)F
    .locals 12
    .param p1, "invert"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    .local v4, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget v6, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .local v0, "d":F
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v6}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const v8, 0x3ecccccd    # 0.4f

    iget-object v9, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v9}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    .local v2, "maxd":F
    cmpl-float v6, p2, v5

    if-nez v6, :cond_2

    if-eqz p1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v0, v2

    sub-float/2addr v5, v6

    :goto_0
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-virtual {v6}, Landroid/widget/StackView;->DEFAULT_ANIMATION_DURATION()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v5, v6

    .end local v0    # "d":F
    .end local v2    # "maxd":F
    .end local v4    # "viewLp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    :goto_1
    return v1

    .restart local v0    # "d":F
    .restart local v2    # "maxd":F
    .restart local v4    # "viewLp":Landroid/widget/StackView$LayoutParams;
    :cond_1
    div-float v5, v0, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v1, v0, v6

    .local v1, "duration":F
    :goto_2
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-virtual {v6}, Landroid/widget/StackView;->MINIMUM_ANIMATION_DURATION()I

    move-result v3

    .local v3, "minDuration":I
    int-to-float v6, v3

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-virtual {v6}, Landroid/widget/StackView;->DEFAULT_ANIMATION_DURATION()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    :cond_3
    invoke-direct {p0, p1, v5}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v1

    goto :goto_1

    .end local v1    # "duration":F
    .end local v3    # "minDuration":I
    :cond_4
    sub-float v6, v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v1, v6, v7

    goto :goto_2

    .end local v0    # "d":F
    .end local v2    # "maxd":F
    .end local v4    # "viewLp":Landroid/widget/StackView$LayoutParams;
    :cond_5
    move v1, v5

    goto :goto_1
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 5
    .param p1, "r"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f59999a    # 0.85f

    const v0, 0x3ecccccd    # 0.4f

    .local v0, "pivot":F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    div-float v1, p1, v0

    invoke-direct {p0, v1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    :goto_0
    return v1

    :cond_0
    sub-float v1, p1, v0

    sub-float v2, v4, v0

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    invoke-direct {p0, v1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    goto :goto_0
.end method

.method private positionInterpolator(F)F
    .locals 1
    .param p1, "r"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mPositionDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private rotationInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v2, v2, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v2, :cond_0

    move v0, v1

    .local v0, "pivot":F
    :goto_0
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    :goto_1
    return v1

    .end local v0    # "pivot":F
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .restart local v0    # "pivot":F
    :cond_1
    sub-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    goto :goto_1
.end method

.method private viewAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .prologue
    const v0, 0x3e99999a    # 0.3f

    .local v0, "pivot":F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition()F
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getXProgress()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method setBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mBaseView:Landroid/view/View;

    return-void
.end method

.method setGroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "groundView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mGroundView:Landroid/view/View;

    return-void
.end method

.method setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    return-void
.end method

.method public setXProgress(F)V
    .locals 3
    .param p1, "r"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v2, v2, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .local v1, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .local v0, "highlightLp":Landroid/widget/StackView$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v2}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v2}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setYProgress(F)V
    .locals 10
    .param p1, "r"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v7, 0x0

    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .local v6, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .local v3, "highlightLp":Landroid/widget/StackView$LayoutParams;
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mStackMode:I
    invoke-static {v7}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v7

    if-nez v7, :cond_5

    const/4 v5, 0x1

    .local v5, "stackDirection":I
    :goto_1
    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayerType()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    iget v7, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->positionInterpolator(F)F

    move-result v4

    .local v4, "positionY":F
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v7, v7, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v7, :cond_7

    neg-float v7, v4

    int-to-float v8, v5

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    :goto_3
    neg-float v7, p1

    int-to-float v8, v5

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    invoke-direct {p0, v7}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    .local v0, "alpha":F
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_8

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_4
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v7, v7, Landroid/widget/StackView;->mHtcStyle:Z

    if-eqz v7, :cond_9

    int-to-float v7, v5

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v8

    mul-float v1, v7, v8

    .local v1, "fProgress":F
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const v8, -0x40cccccd    # -0.7f

    mul-float/2addr v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/high16 v8, 0x42b40000    # 90.0f

    mul-float/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setRotationX(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    const/high16 v8, 0x42b40000    # 90.0f

    mul-float/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setRotationX(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget v7, v7, Landroid/widget/StackView;->mGroundRotation:F

    mul-float v2, v1, v7

    .local v2, "fRotate":F
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/high16 v8, -0x3f600000    # -5.0f

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/view/View;->setRotation(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mGroundView:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mGroundView:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget v8, v8, Landroid/widget/StackView;->mGroundRotation:F

    sub-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/view/View;->setRotation(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mGroundView:Landroid/view/View;

    const v8, 0x3f333333    # 0.7f

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mBaseView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mBaseView:Landroid/view/View;

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .end local v0    # "alpha":F
    .end local v1    # "fProgress":F
    .end local v2    # "fRotate":F
    .end local v4    # "positionY":F
    .end local v5    # "stackDirection":I
    :cond_5
    const/4 v5, -0x1

    goto/16 :goto_1

    .restart local v5    # "stackDirection":I
    :cond_6
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayerType()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .restart local v4    # "positionY":F
    :cond_7
    neg-float v7, p1

    int-to-float v8, v5

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    goto/16 :goto_3

    .restart local v0    # "alpha":F
    :cond_8
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    int-to-float v8, v5

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setRotationX(F)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    int-to-float v8, v5

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setRotationX(F)V

    goto/16 :goto_0

    .end local v0    # "alpha":F
    .end local v4    # "positionY":F
    :pswitch_1
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v7, v7, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v7, :cond_0

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v7

    neg-int v7, v5

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    neg-int v7, v5

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    iget-boolean v7, v7, Landroid/widget/StackView;->mHtcStyle:Z

    if-nez v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    const v8, 0x3e4ccccd    # 0.2f

    mul-float p1, v7, v8

    int-to-float v7, v5

    mul-float/2addr v7, p1

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    int-to-float v7, v5

    mul-float/2addr v7, p1

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$300(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    # getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
