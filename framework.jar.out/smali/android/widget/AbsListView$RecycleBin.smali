.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 7061
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7075
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 7061
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 7061
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 7428
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 7429
    .local v3, "maxViews":I
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7430
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7431
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 7432
    aget-object v4, v5, v1

    .line 7433
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7434
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 7435
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 7436
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 7437
    iget-object v13, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v13, v12, v14}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7436
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 7431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7441
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7442
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    .line 7443
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 7444
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 7445
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 7446
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v14}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7447
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7448
    add-int/lit8 v1, v1, -0x1

    .line 7443
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7453
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7454
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    .line 7455
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 7456
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 7457
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4

    .line 7458
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v14}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7459
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 7460
    add-int/lit8 v1, v1, -0x1

    .line 7455
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7464
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 7276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 7277
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 7341
    :cond_0
    :goto_0
    return-void

    .line 7281
    :cond_1
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7285
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7286
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7290
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7296
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7300
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 7301
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 7302
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 7305
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 7306
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7308
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 7309
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 7312
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 7313
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7315
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 7318
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 7319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7321
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7324
    :cond_7
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_9

    .line 7325
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7331
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7332
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7335
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7337
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 7338
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 7327
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7144
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 7145
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7146
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7147
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 7148
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7151
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7152
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 7153
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 7154
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7155
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 7156
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7161
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7162
    return-void
.end method

.method clearTransientStateViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7232
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7233
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 7234
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7235
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7236
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v4, v6}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7238
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 7241
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7242
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 7243
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7244
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 7245
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v4, v6}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7247
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 7249
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 7172
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 7173
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7175
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 7178
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7179
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 7180
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7181
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7183
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 7186
    aput-object v1, v0, v2

    .line 7179
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7189
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 7199
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 7200
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7201
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 7202
    aget-object v2, v0, v1

    .line 7203
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 7206
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 7255
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7256
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 7263
    :goto_0
    return-object v1

    .line 7258
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7259
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 7260
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 7263
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 7210
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 7211
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7212
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7213
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7224
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 7216
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 7217
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 7218
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 7219
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7220
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 7224
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 7106
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 7107
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7108
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7109
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 7110
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7113
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7114
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 7115
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 7116
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7117
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 7118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7117
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7122
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 7123
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7124
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 7125
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7124
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7128
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 7129
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7130
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 7131
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7130
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7134
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7470
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7471
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7480
    :cond_0
    return-void

    .line 7473
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7474
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7475
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 7476
    aget-object v1, v2, v0

    .line 7477
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 5

    .prologue
    .line 7347
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 7355
    :goto_0
    return-void

    .line 7350
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7351
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 7352
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7354
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 13

    .prologue
    .line 7361
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7362
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v11, :cond_2

    const/4 v2, 0x1

    .line 7363
    .local v2, "hasListener":Z
    :goto_0
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    const/4 v7, 0x1

    .line 7365
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7366
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 7367
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 7368
    aget-object v9, v0, v3

    .line 7369
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 7370
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 7372
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7374
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 7376
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 7378
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7380
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 7381
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 7382
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7384
    :cond_0
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 7385
    .local v4, "id":J
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7367
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 7362
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 7363
    .restart local v2    # "hasListener":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 7386
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 7387
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 7388
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7390
    :cond_5
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 7391
    :cond_6
    const/4 v11, -0x2

    if-eq v10, v11, :cond_1

    .line 7393
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v9, v12}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_3

    .line 7395
    :cond_7
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 7397
    const/4 v11, -0x2

    if-eq v10, v11, :cond_1

    .line 7398
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v9, v12}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_3

    .line 7402
    :cond_8
    if-eqz v7, :cond_9

    .line 7403
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 7406
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7407
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7408
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7410
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7411
    if-eqz v2, :cond_1

    .line 7412
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 7418
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 7419
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 7488
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 7489
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7490
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7491
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 7492
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7495
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7496
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 7497
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 7498
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7499
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 7500
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7499
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7496
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7505
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7506
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 7507
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 7508
    aget-object v7, v0, v2

    .line 7509
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 7510
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7507
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7513
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 7092
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 7093
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7096
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 7097
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 7098
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 7097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7100
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7101
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7102
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7103
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 7137
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
