.class public Lcom/kikin/KikinResultsViewController;
.super Ljava/lang/Object;
.source "KikinResultsViewController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/kikin/BarIncomingHandler$Callback;
.implements Lcom/kikin/KikinServiceConnection$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "KIKIN_DISABLED_STATE"

.field public static final SELECTION_TOP_PADDING:I = 0x14

.field private static final TAG:Ljava/lang/String; = "KikinResultsViewController"

.field private static final emptyRect:Landroid/graphics/Rect;


# instance fields
.field private mActionBarContainer:Landroid/view/View;

.field private mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

.field private mActionMode:Landroid/view/ActionMode;

.field private mBarGravity:I

.field private mBarRect:Landroid/graphics/Rect;

.field private mCallbackOnKikinHide:Ljava/lang/Runnable;

.field private mContentPadding:Landroid/graphics/Rect;

.field private mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

.field private mCurrentQuery:Ljava/lang/String;

.field private mDisallowUpdateForSelectionHandleVisibility:Z

.field private mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

.field private mIsListeningViewOnAttachStateChange:Z

.field private mIsResultsContainerForciblyMinimized:Z

.field private mIsSearchFromLongPress:Z

.field private mIsTutorial:Z

.field private mIsVisible:Z

.field private mKikinBarService:Lcom/kikin/KikinBarService;

.field private mKikinResultsContainerState:Landroid/os/Bundle;

.field private mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

.field private mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

.field private mRequestSettings:Landroid/os/Bundle;

.field private mSelection:Lcom/kikin/selection/Selection;

.field private mSelectionPadding:I

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mShouldStoreResultsViewState:Z

.field private mSplitActionBarContainer:Landroid/view/View;

.field private mThemeDetector:Lcom/kikin/theme/ThemeDetector;

.field private mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/kikin/KikinResultsViewController;->emptyRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V
    .locals 6
    .param p1, "handler"    # Lcom/kikin/interfaces/KikinCallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kikin/exception/KikinCallbackHandlerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    sget-object v3, Lcom/kikin/theme/ThemeDetector$KikinTheme;->HTC:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iput v5, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iput v5, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    new-instance v3, Lcom/kikin/theme/HtcThemeDetector;

    invoke-direct {v3}, Lcom/kikin/theme/HtcThemeDetector;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    if-nez p1, :cond_0

    new-instance v3, Lcom/kikin/exception/KikinCallbackHandlerException;

    sget-object v4, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-direct {v3, v4}, Lcom/kikin/exception/KikinCallbackHandlerException;-><init>(Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;)V

    throw v3

    :cond_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    new-instance v3, Lcom/kikin/exception/KikinCallbackHandlerException;

    sget-object v4, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-direct {v3, v4}, Lcom/kikin/exception/KikinCallbackHandlerException;-><init>(Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getContentViewHandler()Lcom/kikin/interfaces/KikinContentViewHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getPopupWindowHandler()Lcom/kikin/interfaces/KikinPopupWindowHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    new-instance v1, Lcom/kikin/requests/RequestSettings;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .local v1, "requestSettings":Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v1}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->findActionBarViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcom/kikin/KikinBarService;

    new-instance v4, Lcom/kikin/BarIncomingHandler;

    invoke-direct {v4, p0}, Lcom/kikin/BarIncomingHandler;-><init>(Lcom/kikin/BarIncomingHandler$Callback;)V

    invoke-direct {v3, v0, v4}, Lcom/kikin/KikinBarService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v3, p0}, Lcom/kikin/KikinBarService;->setServiceStateListener(Lcom/kikin/KikinServiceConnection$ServiceStateListener;)V

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v3}, Lcom/kikin/KikinBarService;->connect()V

    invoke-direct {p0, v0}, Lcom/kikin/KikinResultsViewController;->registerActivityLifecycleCallbacks(Landroid/content/Context;)V

    const-string v3, "com.kikin"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    :cond_2
    new-instance v3, Lcom/kikin/KikinResultsViewController$1;

    invoke-direct {v3, p0}, Lcom/kikin/KikinResultsViewController$1;-><init>(Lcom/kikin/KikinResultsViewController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kikin/KikinResultsViewController;

    .prologue
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->onApplicationWindowSizeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/kikin/KikinResultsViewController;Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kikin/KikinResultsViewController;
    .param p1, "x1"    # Landroid/view/ActionMode;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/kikin/KikinBarState;
    .param p4, "x4"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kikin/KikinResultsViewController;->showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/kikin/KikinResultsViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/kikin/KikinResultsViewController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static dpToPixels(FLandroid/content/Context;)I
    .locals 2
    .param p0, "dip"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private findActionBarViews(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v5, 0x1020317

    const v4, 0x1020316

    const v3, 0x1020314

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_0
.end method

.method private findActivityCABTheme()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kikin/theme/ThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    :cond_0
    return-void
.end method

.method private getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, "decorView":Landroid/view/View;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mActionModeView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "actionModeViewField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    move-object v1, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/kikin/KikinResultsViewController;->findActionBarViews(Landroid/view/View;)V

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "actionModeViewField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "KikinResultsViewController"

    const-string v6, "failed to retreive the cab\'s view"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .local v1, "application":Landroid/app/Application;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Application;

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v0    # "rootView":Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v0    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .end local v0    # "rootView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIsFullscreen()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return v3
.end method

.method private getMaxKikinResContainerRect(Z)Landroid/graphics/Rect;
    .locals 8
    .param p1, "isSearchFromLongPress"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .local v0, "actionBarHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v4

    .local v4, "statusBarHeight":I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getSplitActionBarHeight()I

    move-result v2

    .local v2, "splitActionBarHeight":I
    add-int v5, v0, v4

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_1

    add-int v3, v0, v4

    .local v3, "startPos":I
    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1

    .end local v0    # "actionBarHeight":I
    .end local v2    # "splitActionBarHeight":I
    .end local v3    # "startPos":I
    .end local v4    # "statusBarHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "actionBarHeight":I
    .restart local v2    # "splitActionBarHeight":I
    .restart local v4    # "statusBarHeight":I
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method private getScalingFactor()F
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getWindowPaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method

.method private hideKikinPaddingView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v0, v1, v1}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onApplicationWindowSizeChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    invoke-direct {p0, v1}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kikin/KikinBarService;->sendContainerRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method private registerActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private show(Landroid/view/ActionMode;ZZLcom/kikin/KikinBarState;Z)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "restore"    # Z
    .param p3, "shouldForceToCreate"    # Z
    .param p4, "openState"    # Lcom/kikin/KikinBarState;
    .param p5, "isSearchFromLongPress"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    if-eqz p5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    .local v6, "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    if-nez v6, :cond_3

    const-string v0, "KikinResultsViewController"

    const-string v1, "Could not find the CAB view that\'s why cannot show the results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .end local v6    # "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    :cond_4
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/kikin/KikinResultsViewController$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kikin/KikinResultsViewController$2;-><init>(Lcom/kikin/KikinResultsViewController;Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/kikin/KikinResultsViewController;->showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    goto :goto_0
.end method

.method public static showKikinDisabledToast(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const-string v4, "KIKIN_DISABLED_STATE"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "com.kikin.easySearch.disabled"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "hasShownDisabledMessage":Z
    if-nez v1, :cond_1

    const-string v4, "com.kikin"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Lcom/kikin/requests/RequestSettings;

    invoke-direct {v3, p0}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .local v3, "settings":Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v3}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kikin/KikinBarService;->showKikinDisabledToast(Landroid/content/Context;Landroid/os/Bundle;)V

    .end local v3    # "settings":Lcom/kikin/requests/RequestSettings;
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.kikin.easySearch.disabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "restore"    # Z
    .param p3, "openState"    # Lcom/kikin/KikinBarState;
    .param p4, "isSearchFromLongPress"    # Z

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    :try_start_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    const-string v2, "fullscreen"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getIsFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v1}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v1}, Lcom/kikin/KikinBarService;->connect()V

    :cond_0
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/ActionBarContextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    :cond_1
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect(Z)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getWindowPaddingRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    if-nez p2, :cond_2

    iget-boolean v8, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    if-eqz v8, :cond_4

    :cond_2
    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    :goto_0
    const/4 v10, 0x1

    move-object/from16 v8, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/kikin/KikinBarService;->show(Landroid/os/IBinder;Lcom/kikin/selection/Selection;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/kikin/theme/ThemeDetector$KikinTheme;Lcom/kikin/KikinBarState;Landroid/os/Bundle;ZZ)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    invoke-virtual {p0, v1, v2}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(Landroid/graphics/Rect;I)V

    :cond_3
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelectionInCAB(Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    move-object/from16 v0, p3

    if-ne v1, v0, :cond_6

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    :goto_3
    return-void

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    goto :goto_3

    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static trackPageLoad(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1, p1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;Ljava/util/Map;)V

    sget-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->WEBVIEW_PAGE_LOADED:Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-static {p0, v0}, Lcom/kikin/reminders/ReminderTracker;->track(Landroid/view/View;Lcom/kikin/reminders/ReminderTrackerSource;)V

    return-void
.end method

.method private unregisterActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 4
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    const/16 v2, 0x30

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->getPopupWindowPosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "handleRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->isPopupWindowShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v2, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0
.end method


# virtual methods
.method public connectToKikinBarService()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->connect()V

    return-void
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 3
    .param p1, "selection"    # Lcom/kikin/selection/Selection;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1, v2}, Lcom/kikin/KikinBarService;->doSearch(Lcom/kikin/selection/Selection;)Z

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    :cond_1
    if-eqz p1, :cond_3

    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v2

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SELECT_TEXT:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    invoke-static {v0}, Lcom/kikin/KikinGlobal;->hasUserAgreedKikinTerms(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    :cond_2
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    sget-object v2, Lcom/kikin/reminders/ReminderTrackerSource;->KIKIN_SEARCH:Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-static {v1, v2}, Lcom/kikin/reminders/ReminderTracker;->track(Landroid/view/View;Lcom/kikin/reminders/ReminderTrackerSource;)V

    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method public getActionBarHeight()I
    .locals 6

    .prologue
    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .local v0, "actionBarHeight":I
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v3, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    return v0

    :cond_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getContentHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .local v2, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0
.end method

.method public getActionBarTop()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .local v0, "actionBarTop":I
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->top:I

    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    int-to-float v4, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    return v0

    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .local v1, "location":[I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    aget v0, v1, v6

    goto :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getBarGravity()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    return v0
.end method

.method public getBarPadding()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v0, v3, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getBarRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContextualActionBarView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getHandler()Lcom/kikin/interfaces/KikinCallbackHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    .local v2, "scalingFactor":F
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getSplitActionBarHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "splitActionBarHeight":I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public hide(Z)Z
    .locals 5
    .param p1, "isFinished"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "isHided":Z
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v2}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    if-nez p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/kikin/KikinBarService;->hide(Z)Z

    move-result v1

    .local v1, "success":Z
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v1    # "success":Z
    :cond_0
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput v4, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/ActionBarContextView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    :cond_2
    return v0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public hideSelectionHandles()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-interface {v0, v1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_END:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-interface {v0, v1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    return v0
.end method

.method public makeSelectionVisible(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "barRect"    # Landroid/graphics/Rect;
    .param p2, "gravity"    # I

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getBarPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2}, Lcom/kikin/interfaces/KikinContentViewHandler;->getWindowRectWithoutOffset()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "contentViewRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    const/16 v2, 0x30

    if-ne p2, v2, :cond_6

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .end local v1    # "contentViewRect":Landroid/graphics/Rect;
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_END:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    .restart local v1    # "contentViewRect":Landroid/graphics/Rect;
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "contentPadding":Landroid/graphics/Rect;
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_4
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v5, v3}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto :goto_1

    .end local v0    # "contentPadding":Landroid/graphics/Rect;
    :cond_5
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    sget-object v3, Lcom/kikin/KikinResultsViewController;->emptyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2, v5, v5}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0    # "contentPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_7

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_7
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v3, v5}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto/16 :goto_1

    .end local v0    # "contentPadding":Landroid/graphics/Rect;
    :cond_8
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    sget-object v3, Lcom/kikin/KikinResultsViewController;->emptyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2, v5, v5}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->disconnect()V

    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->unregisterActivityLifecycleCallbacks(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onBarAnimationFinished()V
    .locals 0

    .prologue
    return-void
.end method

.method public onBarHidden()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onBarIsHidding()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onBarMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "com.kikin.isTutorialMessage"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "isTutorialMessage":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    invoke-interface {v2, p1}, Lcom/kikin/MessageHandlerCallback;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onBarRectChanged(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "gravity"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public onBarVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    invoke-interface {v0, p1}, Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onKikinDisabled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    return-void
.end method

.method public onQueryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v0, p1}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelectionInCAB(Ljava/lang/String;)V

    return-void
.end method

.method public onQueryRewritten(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldQuery"    # Ljava/lang/String;
    .param p2, "newQuery"    # Ljava/lang/String;

    .prologue
    iput-object p2, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v0, p1, p2}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveKikinBarState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-eqz v0, :cond_0

    .end local p1    # "bundle":Landroid/os/Bundle;
    :goto_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    return-void

    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kikin/KikinBarService;->sendCabWindowToken(Landroid/os/IBinder;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public playKikinSound()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->connect()V

    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->playKikinSound()Z

    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    return-void
.end method

.method public sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z
    .locals 1
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z

    move-result v0

    return v0
.end method

.method public setContentViewHandler(Lcom/kikin/interfaces/KikinContentViewHandler;)V
    .locals 0
    .param p1, "contentViewHandler"    # Lcom/kikin/interfaces/KikinContentViewHandler;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    return-void
.end method

.method public setHandler(Lcom/kikin/interfaces/KikinCallbackHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/kikin/interfaces/KikinCallbackHandler;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    return-void
.end method

.method public setKikinAppMessageHandlerCallback(Lcom/kikin/MessageHandlerCallback;)V
    .locals 0
    .param p1, "tutorialMessageHandlerCallback"    # Lcom/kikin/MessageHandlerCallback;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    return-void
.end method

.method public setKikinResultsViewControllerVisibility(Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;)V
    .locals 0
    .param p1, "instance"    # Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    return-void
.end method

.method public setResultsViewState(Ljava/io/Serializable;)V
    .locals 4
    .param p1, "resultsViewState"    # Ljava/io/Serializable;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kikin.view.bar.ActionBarViewState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "barViewState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    :cond_0
    const-string v1, "KikinResultsViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSelectionRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    return-void
.end method

.method public shouldShowSelectionHandles(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "selectionHandleRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "restore"    # Z
    .param p3, "openState"    # Lcom/kikin/KikinBarState;
    .param p4, "isSearchFromLongPress"    # Z

    .prologue
    iput-boolean p4, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    if-eqz v0, :cond_0

    sget-object p3, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZLcom/kikin/KikinBarState;Z)V

    return-void
.end method
