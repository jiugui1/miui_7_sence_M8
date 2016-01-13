.class public Lcom/kikin/KikinContentViewPusher;
.super Ljava/lang/Object;
.source "KikinContentViewPusher.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinContentViewHandler;


# instance fields
.field private mParentContentView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "selectionView"    # Landroid/view/View;

    .prologue
    const v4, 0x1020002

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method


# virtual methods
.method public getWindowRectWithoutOffset()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowRectWithoutOffset()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushContentView(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->setContentOffset(II)V

    :cond_0
    return-void
.end method