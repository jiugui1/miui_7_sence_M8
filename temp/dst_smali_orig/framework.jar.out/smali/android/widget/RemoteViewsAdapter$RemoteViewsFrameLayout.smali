.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field private mUsedByPosition:I

.field reapplyOnLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pos"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mUsedByPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->reapplyOnLoaded:Z

    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mUsedByPosition:I

    return-void
.end method

.method static synthetic access$1302(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mUsedByPosition:I

    return p1
.end method


# virtual methods
.method public onRemoteViewsLoaded(ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;I)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p4, "loadingTypeId"    # I

    .prologue
    iget-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->reapplyOnLoaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mUsedByPosition:I

    if-eq v2, p1, :cond_0

    const-string v2, "RemoteViewsAdapter"

    const-string v3, "don\'t apply on loaded view if used by position has been changed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->reapplyOnLoaded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v2, p4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2, v1, p3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RemoteViewsAdapter"

    const-string v3, "Failed to apply RemoteViews."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2, p0, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method setReapplyOnLoaded(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->reapplyOnLoaded:Z

    return-void
.end method
