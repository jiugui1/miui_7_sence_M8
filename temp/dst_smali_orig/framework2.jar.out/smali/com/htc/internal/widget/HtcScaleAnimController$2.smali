.class Lcom/htc/internal/widget/HtcScaleAnimController$2;
.super Ljava/lang/Object;
.source "HtcScaleAnimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/internal/widget/HtcScaleAnimController;->onAnimationEnd(Landroid/animation/Animator;)V
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
    iput-object p1, p0, Lcom/htc/internal/widget/HtcScaleAnimController$2;->this$0:Lcom/htc/internal/widget/HtcScaleAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/internal/widget/HtcScaleAnimController$2;->this$0:Lcom/htc/internal/widget/HtcScaleAnimController;

    const/4 v1, 0x0

    # invokes: Lcom/htc/internal/widget/HtcScaleAnimController;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/internal/widget/HtcScaleAnimController;->access$000(Lcom/htc/internal/widget/HtcScaleAnimController;Z)V

    return-void
.end method
