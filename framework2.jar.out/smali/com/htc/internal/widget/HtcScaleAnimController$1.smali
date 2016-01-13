.class Lcom/htc/internal/widget/HtcScaleAnimController$1;
.super Ljava/lang/Object;
.source "HtcScaleAnimController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/internal/widget/HtcScaleAnimController;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/internal/widget/HtcScaleAnimController;


# direct methods
.method constructor <init>(Lcom/htc/internal/widget/HtcScaleAnimController;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController$1;->this$0:Lcom/htc/internal/widget/HtcScaleAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController$1;->this$0:Lcom/htc/internal/widget/HtcScaleAnimController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/internal/widget/HtcScaleAnimController;->access$000(Lcom/htc/internal/widget/HtcScaleAnimController;Z)V

    .line 190
    return-void
.end method
