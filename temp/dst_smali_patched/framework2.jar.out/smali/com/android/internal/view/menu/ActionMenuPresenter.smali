.class public Lcom/android/internal/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private activeItemLMax:I

.field private activeItemPMax:I

.field private defaultDisplay:Landroid/view/Display;

.field private enableActionLimit:Z

.field private enableHtcPopup:Z

.field private invokeOverflowMenu:Landroid/view/View$OnClickListener;

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAllMenusAreClosing:Z

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private popupanchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const v0, 0x109001c

    const v1, 0x109001b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$2;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    .local v1, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$1;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public enableActionLimit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    if-gez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "resource":Landroid/content/res/Resources;
    const/high16 v1, 0x20d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    const v1, 0x20d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    .end local v0    # "resource":Landroid/content/res/Resources;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    goto :goto_0
.end method

.method public enableHtcPopup(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    return-void
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 30

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v26

    .local v26, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v27, v0

    .local v27, "widthLimit":I
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .local v21, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/ViewGroup;

    .local v20, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Display;->getRotation()I

    move-result v19

    .local v19, "orientation":I
    if-eqz v19, :cond_0

    const/16 v28, 0x2

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    move/from16 v17, v0

    .end local v19    # "orientation":I
    :cond_1
    :goto_0
    const/16 v23, 0x0

    .local v23, "requiredItems":I
    const/16 v22, 0x0

    .local v22, "requestedItems":I
    const/4 v8, 0x0

    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_6

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_4

    add-int/lit8 v23, v23, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v28

    if-eqz v28, :cond_2

    const/16 v17, 0x0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v22    # "requestedItems":I
    .end local v23    # "requiredItems":I
    .restart local v19    # "orientation":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    move/from16 v17, v0

    goto :goto_0

    .end local v19    # "orientation":I
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v22    # "requestedItems":I
    .restart local v23    # "requiredItems":I
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_5

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    goto :goto_2

    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    if-nez v10, :cond_7

    add-int v28, v23, v22

    move/from16 v0, v28

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    :cond_7
    add-int/lit8 v17, v17, -0x1

    :cond_8
    sub-int v17, v17, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    .local v24, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v4, 0x0

    .local v4, "cellSize":I
    const/4 v7, 0x0

    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v7, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    rem-int v5, v27, v28

    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v29, v5, v7

    add-int v4, v28, v29

    .end local v5    # "cellSizeRemaining":I
    :cond_9
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_20

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v28

    sub-int v7, v7, v28

    :goto_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .local v18, "measuredWidth":I
    sub-int v27, v27, v18

    if-nez v8, :cond_b

    move/from16 v8, v18

    :cond_b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .local v9, "groupId":I
    if-eqz v9, :cond_c

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_c
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v25    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .restart local v25    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .end local v25    # "v":Landroid/view/View;
    :cond_e
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_1f

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .restart local v9    # "groupId":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .local v12, "inGroup":Z
    if-gtz v17, :cond_f

    if-eqz v12, :cond_17

    :cond_f
    if-lez v27, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_10

    if-lez v7, :cond_17

    :cond_10
    const/4 v13, 0x1

    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_11

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_18

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .local v6, "cells":I
    sub-int/2addr v7, v6

    if-nez v6, :cond_12

    const/4 v13, 0x0

    .end local v6    # "cells":I
    :cond_12
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .restart local v18    # "measuredWidth":I
    sub-int v27, v27, v18

    if-nez v8, :cond_13

    move/from16 v8, v18

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1a

    if-ltz v27, :cond_19

    const/16 v28, 0x1

    :goto_8
    and-int v13, v13, v28

    .end local v18    # "measuredWidth":I
    .end local v25    # "v":Landroid/view/View;
    :cond_14
    :goto_9
    if-eqz v13, :cond_1c

    if-eqz v9, :cond_1c

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_15
    if-eqz v13, :cond_16

    add-int/lit8 v17, v17, -0x1

    :cond_16
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .end local v13    # "isAction":Z
    :cond_17
    const/4 v13, 0x0

    goto :goto_6

    .restart local v13    # "isAction":Z
    .restart local v25    # "v":Landroid/view/View;
    :cond_18
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .restart local v18    # "measuredWidth":I
    :cond_19
    const/16 v28, 0x0

    goto :goto_8

    :cond_1a
    add-int v28, v27, v8

    if-lez v28, :cond_1b

    const/16 v28, 0x1

    :goto_a
    and-int v13, v13, v28

    goto :goto_9

    :cond_1b
    const/16 v28, 0x0

    goto :goto_a

    .end local v18    # "measuredWidth":I
    .end local v25    # "v":Landroid/view/View;
    :cond_1c
    if-eqz v12, :cond_15

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_15

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v9, :cond_1e

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v28

    if-eqz v28, :cond_1d

    add-int/lit8 v17, v17, 0x1

    :cond_1d
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_1e
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1f
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_20
    const/16 v28, 0x1

    return v28
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .local v2, "menuParent":Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-nez v2, :cond_3

    const-string v3, "HTCActionBar"

    const-string v4, "ActionMenuPresenter:getItemView()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/android/internal/view/menu/ActionMenuView;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mAllMenusAreClosing:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCloseAnimationEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_2
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .local v3, "width":I
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/util/ActionBarUtil;->getItemWidth(Landroid/content/Context;)I

    move-result v5

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x2090005

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v4, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/OverflowMenuView;->setLines(I)V

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const v5, 0x202000e

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void

    :cond_4
    const-string v4, "HTCActionBar"

    const-string v5, "overflowView id not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "spec":I
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    .end local v2    # "spec":I
    :cond_6
    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mAllMenusAreClosing:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;->onOverFlowMenuClosed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    .local v1, "saved":Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .local v0, "state":Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 6
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->enableHtcPopup(Z)V

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setVerticalOffset(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move v2, v3

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setListMenuAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .local v0, "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .end local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .restart local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->enableHtcPopup(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;->onOverFlowMenuCreated()V

    :cond_1
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .end local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_1
    return v5

    .restart local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :cond_2
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .end local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .restart local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    goto :goto_0

    .end local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 17
    .param p1, "cleared"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->requestLayout()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v10

    .local v10, "provider":Landroid/view/ActionProvider;
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v10    # "provider":Landroid/view/ActionProvider;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v3, 0x0

    .local v3, "hasOverflow":Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v13, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "count":I
    const/4 v13, 0x1

    if-ne v2, v13, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v3, 0x1

    .end local v2    # "count":I
    :cond_3
    :goto_2
    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x2090005

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .local v9, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v9, v13, :cond_6

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    .local v6, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, "resource":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .local v5, "lparams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/util/ActionBarUtil;->getItemWidth(Landroid/content/Context;)I

    move-result v13

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "icon_btn_menu_dark"

    const-string v15, "drawable"

    const-string v16, "com.htc"

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .local v12, "resourceid":I
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v13, Lcom/android/internal/view/menu/OverflowMenuView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/view/menu/OverflowMenuView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .end local v5    # "lparams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    .end local v9    # "parent":Landroid/view/ViewGroup;
    .end local v11    # "resource":Landroid/content/res/Resources;
    .end local v12    # "resourceid":I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    return-void

    .end local v3    # "hasOverflow":Z
    .end local v8    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .restart local v2    # "count":I
    .restart local v3    # "hasOverflow":Z
    .restart local v8    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    if-lez v2, :cond_a

    const/4 v3, 0x1

    :goto_5
    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .end local v2    # "count":I
    :cond_b
    new-instance v13, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto/16 :goto_3

    .restart local v5    # "lparams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    .restart local v9    # "parent":Landroid/view/ViewGroup;
    .restart local v11    # "resource":Landroid/content/res/Resources;
    .restart local v12    # "resourceid":I
    :cond_c
    const-string v13, "HTCActionBar"

    const-string v14, "icon_btn_menu_dark not found"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v5    # "lparams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "resource":Landroid/content/res/Resources;
    .end local v12    # "resourceid":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v6    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    .end local v9    # "parent":Landroid/view/ViewGroup;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method