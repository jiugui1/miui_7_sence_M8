.class Landroid/widget/ListView$CheckForPressAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView$CheckForPressAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ListView$CheckForPressAnimation;


# direct methods
.method constructor <init>(Landroid/widget/ListView$CheckForPressAnimation;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/ListView$CheckForPressAnimation$1;->this$1:Landroid/widget/ListView$CheckForPressAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method
