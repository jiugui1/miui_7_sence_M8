.class Landroid/widget/ListView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->onOverFling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    # setter for: Landroid/widget/ListView;->mInBouncing:Z
    invoke-static {v0, v2}, Landroid/widget/ListView;->access$702(Landroid/widget/ListView;Z)Z

    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mOverFlingBouncing:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mOverFlingBouncing:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/ListView;->mOverFlingBouncing:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->reportScrollStateChange(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/widget/ListView$7;->this$0:Landroid/widget/ListView;

    const/4 v1, 0x1

    # setter for: Landroid/widget/ListView;->mInBouncing:Z
    invoke-static {v0, v1}, Landroid/widget/ListView;->access$702(Landroid/widget/ListView;Z)Z

    return-void
.end method
