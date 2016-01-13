.class Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "HtcAnimationManagerImpl2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HtcAnimationManagerImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimation"
.end annotation


# instance fields
.field mFadeIn:Z

.field mWidth:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "fadeIn"    # Z

    .prologue
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->setDuration(J)V

    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mFadeIn:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mFadeIn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mWidth:I

    return-void
.end method
