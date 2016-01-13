.class public final Landroid/webkit/QuickActionsHelper;
.super Ljava/lang/Object;
.source "QuickActionsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/QuickActionsHelper$MyActionMode;,
        Landroid/webkit/QuickActionsHelper$ShowQuickAction;
    }
.end annotation


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "QuickActionsHelper"

.field private static final VISIBLILTY_DELAY:I = 0x32


# instance fields
.field private ENABLE_QUICKACTION:Z

.field private GAP_DIP:I

.field private innerAnimation:Z

.field private mArrowDown:Landroid/view/View;

.field private mArrowUp:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDelayShow:Ljava/lang/Runnable;

.field private mDelayVisible:Ljava/lang/Runnable;

.field private mPopupContent:Landroid/view/View;

.field private mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

.field private mSelectRect:Landroid/graphics/Rect;

.field private mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

.field private mTargetView:Landroid/view/View;

.field private mode:Landroid/webkit/QuickActionsHelper$MyActionMode;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    .line 49
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    .line 50
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mArrowUp:Landroid/view/View;

    .line 51
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mArrowDown:Landroid/view/View;

    .line 162
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    .line 168
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    .line 170
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    .line 236
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    .line 237
    iput-object v1, p0, Landroid/webkit/QuickActionsHelper;->mTargetView:Landroid/view/View;

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mSelectRect:Landroid/graphics/Rect;

    .line 58
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    .line 59
    iget v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/webkit/QuickActionsHelper$ShowQuickAction;)V
    .locals 1
    .param p1, "showQuickAction"    # Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    .prologue
    .line 174
    invoke-interface {p1}, Landroid/webkit/QuickActionsHelper$ShowQuickAction;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    .line 175
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    .line 176
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/QuickActionsHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/QuickActionsHelper;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/QuickActionsHelper;)Landroid/webkit/QuickActionsHelper$MyActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/QuickActionsHelper;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/QuickActionsHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/QuickActionsHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/QuickActionsHelper;->showInner()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/QuickActionsHelper;)Landroid/webkit/QuickActionsHelper$ShowQuickAction;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/QuickActionsHelper;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    return-object v0
.end method

.method private showInner()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    .local v6, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mArrowDown:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 77
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mArrowDown:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 78
    instance-of v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_0

    move-object v5, v6

    .line 79
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 83
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mArrowUp:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 84
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mArrowUp:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 85
    instance-of v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_1

    move-object v5, v6

    .line 86
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    .restart local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v9}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 92
    const/4 v3, 0x0

    .line 94
    .local v3, "hasVisibleItems":Z
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    if-eqz v9, :cond_6

    .line 95
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    invoke-virtual {v9}, Landroid/webkit/QuickActionsHelper$MyActionMode;->prepareAction()V

    .line 96
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    invoke-virtual {v9}, Landroid/webkit/QuickActionsHelper$MyActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 97
    .local v1, "actions":Landroid/view/Menu;
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v7

    .line 98
    .local v7, "size":I
    if-nez v7, :cond_3

    .line 121
    .end local v1    # "actions":Landroid/view/Menu;
    .end local v7    # "size":I
    :cond_2
    :goto_0
    return-void

    .line 100
    .restart local v1    # "actions":Landroid/view/Menu;
    .restart local v7    # "size":I
    :cond_3
    const/4 v0, 0x0

    .line 101
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_6

    .line 102
    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-nez v9, :cond_4

    .line 101
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    .local v2, "descript":Ljava/lang/CharSequence;
    iget-object v10, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v11, v12, p0, v9}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x1

    goto :goto_2

    .line 107
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 113
    .end local v0    # "actionItem":Landroid/view/MenuItem;
    .end local v1    # "actions":Landroid/view/Menu;
    .end local v2    # "descript":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v7    # "size":I
    :cond_6
    if-eqz v3, :cond_2

    .line 116
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mSelectRect:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 117
    .local v8, "viewAnchorRect":Landroid/graphics/Rect;
    iget v9, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 118
    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-object v10, p0, Landroid/webkit/QuickActionsHelper;->mTargetView:Landroid/view/View;

    iget-boolean v11, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    invoke-virtual {v9, v10, v8, v11}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 119
    iget-boolean v9, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    if-eqz v9, :cond_2

    .line 120
    iput-boolean v13, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    goto :goto_0
.end method


# virtual methods
.method public getMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    return-object v0
.end method

.method public hide(Z)V
    .locals 3
    .param p1, "fastHide"    # Z

    .prologue
    .line 224
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    if-nez v1, :cond_0

    .line 225
    const-string v1, "QuickActionsHelper"

    const-string v2, "Cannot hide without interface ShowQuickAction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    invoke-interface {v1}, Landroid/webkit/QuickActionsHelper$ShowQuickAction;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "anchoView":Landroid/view/View;
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    invoke-virtual {p0, p1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    goto :goto_0
.end method

.method hideQuickAction()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    goto :goto_0
.end method

.method hideQuickAction(Z)V
    .locals 1
    .param p1, "fastHide"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    .line 151
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    .line 156
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 251
    .local v0, "id":Landroid/view/MenuItem;
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    if-eqz v1, :cond_0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    invoke-virtual {v1, v0}, Landroid/webkit/QuickActionsHelper$MyActionMode;->performAction(Landroid/view/MenuItem;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v1, "QuickActionsHelper"

    const-string v2, "menu item is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallback(Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 241
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Landroid/webkit/QuickActionsHelper$MyActionMode;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkit/QuickActionsHelper$MyActionMode;-><init>(Landroid/webkit/QuickActionsHelper;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    .line 246
    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;

    invoke-virtual {v0, p1}, Landroid/webkit/QuickActionsHelper$MyActionMode;->createAction(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method public setEnableQuickAction(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 24
    iput-boolean p1, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    .line 25
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v3, :cond_0

    .line 26
    new-instance v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, "content":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const-string v4, "mContent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 35
    .local v2, "popupContent":Landroid/view/View;
    iput-object v2, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    .line 36
    const v3, 0x3110031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/QuickActionsHelper;->mArrowUp:Landroid/view/View;

    .line 37
    const v3, 0x3110032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/QuickActionsHelper;->mArrowDown:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    .end local v2    # "popupContent":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 45
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "QuickActionsHelper"

    const-string v4, "error!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 41
    throw v3
.end method

.method public show(I)V
    .locals 5
    .param p1, "delay"    # I

    .prologue
    .line 179
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    if-nez v2, :cond_1

    .line 180
    const-string v2, "QuickActionsHelper"

    const-string v3, "Cannot show without interface ShowQuickAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    invoke-interface {v2}, Landroid/webkit/QuickActionsHelper$ShowQuickAction;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "anchoView":Landroid/view/View;
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    if-nez p1, :cond_4

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "mayDelayVisible":Z
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_2
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    invoke-interface {v2}, Landroid/webkit/QuickActionsHelper$ShowQuickAction;->getSelectRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 195
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    .line 198
    new-instance v2, Landroid/webkit/QuickActionsHelper$1;

    invoke-direct {v2, p0}, Landroid/webkit/QuickActionsHelper$1;-><init>(Landroid/webkit/QuickActionsHelper;)V

    iput-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    .line 206
    :cond_3
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayVisible:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 209
    .end local v1    # "mayDelayVisible":Z
    :cond_4
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    if-nez v2, :cond_5

    .line 210
    new-instance v2, Landroid/webkit/QuickActionsHelper$2;

    invoke-direct {v2, p0}, Landroid/webkit/QuickActionsHelper$2;-><init>(Landroid/webkit/QuickActionsHelper;)V

    iput-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    .line 219
    :cond_5
    iget-object v2, p0, Landroid/webkit/QuickActionsHelper;->mDelayShow:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1
    .param p1, "viewAnchorRect"    # Landroid/graphics/Rect;
    .param p2, "parent"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    iput-object p2, p0, Landroid/webkit/QuickActionsHelper;->mTargetView:Landroid/view/View;

    .line 70
    invoke-direct {p0}, Landroid/webkit/QuickActionsHelper;->showInner()V

    goto :goto_0
.end method
