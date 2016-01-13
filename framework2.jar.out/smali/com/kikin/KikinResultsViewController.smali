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
    .line 80
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

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 149
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    .line 152
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 155
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 158
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 161
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 167
    sget-object v3, Lcom/kikin/theme/ThemeDetector$KikinTheme;->HTC:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 170
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    .line 173
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    .line 176
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    .line 179
    iput v5, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    .line 182
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    .line 185
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    .line 188
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 191
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    .line 194
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 197
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 200
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 203
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    .line 206
    iput v5, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    .line 212
    new-instance v3, Lcom/kikin/theme/HtcThemeDetector;

    invoke-direct {v3}, Lcom/kikin/theme/HtcThemeDetector;-><init>()V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    .line 215
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    .line 221
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    .line 227
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    .line 230
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    .line 233
    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    .line 236
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    .line 239
    iput-boolean v5, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v3, Lcom/kikin/exception/KikinCallbackHandlerException;

    sget-object v4, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_CALLBACK_HANDLER:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-direct {v3, v4}, Lcom/kikin/exception/KikinCallbackHandlerException;-><init>(Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;)V

    throw v3

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    .line 261
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 263
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 264
    new-instance v3, Lcom/kikin/exception/KikinCallbackHandlerException;

    sget-object v4, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->INVALID_VIEW:Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;

    invoke-direct {v3, v4}, Lcom/kikin/exception/KikinCallbackHandlerException;-><init>(Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;)V

    throw v3

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getContentViewHandler()Lcom/kikin/interfaces/KikinContentViewHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    .line 271
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v3}, Lcom/kikin/interfaces/KikinCallbackHandler;->getPopupWindowHandler()Lcom/kikin/interfaces/KikinPopupWindowHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    .line 274
    new-instance v1, Lcom/kikin/requests/RequestSettings;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 275
    .local v1, "requestSettings":Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v1}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 278
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 279
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->findActionBarViews(Landroid/view/View;)V

    .line 282
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 285
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcom/kikin/KikinBarService;

    new-instance v4, Lcom/kikin/BarIncomingHandler;

    invoke-direct {v4, p0}, Lcom/kikin/BarIncomingHandler;-><init>(Lcom/kikin/BarIncomingHandler$Callback;)V

    invoke-direct {v3, v0, v4}, Lcom/kikin/KikinBarService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    .line 287
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v3, p0}, Lcom/kikin/KikinBarService;->setServiceStateListener(Lcom/kikin/KikinServiceConnection$ServiceStateListener;)V

    .line 288
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v3}, Lcom/kikin/KikinBarService;->connect()V

    .line 291
    invoke-direct {p0, v0}, Lcom/kikin/KikinResultsViewController;->registerActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 294
    const-string v3, "com.kikin"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    .line 300
    :cond_2
    new-instance v3, Lcom/kikin/KikinResultsViewController$1;

    invoke-direct {v3, p0}, Lcom/kikin/KikinResultsViewController$1;-><init>(Lcom/kikin/KikinResultsViewController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kikin/KikinResultsViewController;

    .prologue
    .line 66
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
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kikin/KikinResultsViewController;->showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/kikin/KikinResultsViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/kikin/KikinResultsViewController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static dpToPixels(FLandroid/content/Context;)I
    .locals 2
    .param p0, "dip"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
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

    .line 1141
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 1146
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1148
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1149
    check-cast v0, Landroid/app/Activity;

    .line 1150
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 1153
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 1156
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1168
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 1165
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_0
.end method

.method private findActivityCABTheme()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kikin/theme/ThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 1132
    :cond_0
    return-void
.end method

.method private getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 7

    .prologue
    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 962
    .local v3, "decorView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 971
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mActionModeView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 972
    .local v2, "actionModeViewField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 973
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    move-object v1, v0

    .line 974
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 976
    if-nez v1, :cond_0

    .line 977
    invoke-direct {p0, v3}, Lcom/kikin/KikinResultsViewController;->findActionBarViews(Landroid/view/View;)V

    .line 978
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v2    # "actionModeViewField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v1

    .line 981
    :catch_0
    move-exception v4

    .line 982
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
    .line 1192
    const/4 v1, 0x0

    .line 1193
    .local v1, "application":Landroid/app/Application;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 1194
    check-cast v0, Landroid/app/Activity;

    .line 1195
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1199
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v1

    .line 1196
    :cond_1
    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1197
    check-cast v1, Landroid/app/Application;

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1234
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1240
    .end local v0    # "rootView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 1237
    .restart local v0    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 1240
    .end local v0    # "rootView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIsFullscreen()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1062
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1063
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 1066
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1067
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1068
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 1069
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1073
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return v3
.end method

.method private getMaxKikinResContainerRect(Z)Landroid/graphics/Rect;
    .locals 8
    .param p1, "isSearchFromLongPress"    # Z

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v1

    .line 1100
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .line 1101
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v4

    .line 1102
    .local v4, "statusBarHeight":I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getSplitActionBarHeight()I

    move-result v2

    .line 1103
    .local v2, "splitActionBarHeight":I
    add-int v5, v0, v4

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_1

    add-int v3, v0, v4

    .line 1106
    .local v3, "startPos":I
    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1107
    return-object v1

    .line 1100
    .end local v0    # "actionBarHeight":I
    .end local v2    # "splitActionBarHeight":I
    .end local v3    # "startPos":I
    .end local v4    # "statusBarHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1103
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
    .line 1176
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
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

    .line 1181
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getWindowPaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1082
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1083
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1084
    return-object v0
.end method

.method private hideKikinPaddingView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1115
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v0, v1, v1}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1121
    return-void
.end method

.method private onApplicationWindowSizeChanged()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    invoke-direct {p0, v1}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kikin/KikinBarService;->sendContainerRect(Landroid/graphics/Rect;)Z

    .line 319
    :cond_0
    return-void
.end method

.method private registerActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 1209
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1212
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
    .line 913
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    if-eqz p5, :cond_2

    .line 952
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v0, :cond_4

    .line 926
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    .line 927
    .local v6, "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    if-nez v6, :cond_3

    .line 928
    const-string v0, "KikinResultsViewController"

    const-string v1, "Could not find the CAB view that\'s why cannot show the results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_3
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 936
    .end local v6    # "actionBarContextView":Lcom/android/internal/widget/ActionBarContextView;
    :cond_4
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 940
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    new-instance v0, Lcom/kikin/KikinResultsViewController$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kikin/KikinResultsViewController$2;-><init>(Lcom/kikin/KikinResultsViewController;Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    goto :goto_0

    .line 950
    :cond_5
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/kikin/KikinResultsViewController;->showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    goto :goto_0
.end method

.method public static showKikinDisabledToast(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 107
    const-string v4, "KIKIN_DISABLED_STATE"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 108
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "com.kikin.easySearch.disabled"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 112
    .local v1, "hasShownDisabledMessage":Z
    if-nez v1, :cond_1

    .line 116
    const-string v4, "com.kikin"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    new-instance v3, Lcom/kikin/requests/RequestSettings;

    invoke-direct {v3, p0}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "settings":Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v3}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kikin/KikinBarService;->showKikinDisabledToast(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 122
    .end local v3    # "settings":Lcom/kikin/requests/RequestSettings;
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.kikin.easySearch.disabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
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
    .line 1002
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 1005
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    const-string v2, "fullscreen"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getIsFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1012
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v1}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v1}, Lcom/kikin/KikinBarService;->connect()V

    .line 1016
    :cond_0
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    if-nez v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/ActionBarContextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1020
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    .line 1025
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

    .line 1031
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 1034
    if-eqz p2, :cond_3

    .line 1035
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    invoke-virtual {p0, v1, v2}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(Landroid/graphics/Rect;I)V

    .line 1038
    :cond_3
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 1040
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 1047
    :goto_1
    sget-object v1, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    move-object/from16 v0, p3

    if-ne v1, v0, :cond_6

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    .line 1054
    :goto_3
    return-void

    .line 1025
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1049
    :catch_0
    move-exception v12

    .line 1052
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    goto :goto_3

    .line 1047
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
    .line 137
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1, p1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;Ljava/util/Map;)V

    .line 138
    sget-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->WEBVIEW_PAGE_LOADED:Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-static {p0, v0}, Lcom/kikin/reminders/ReminderTracker;->track(Landroid/view/View;Lcom/kikin/reminders/ReminderTrackerSource;)V

    .line 139
    return-void
.end method

.method private unregisterActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 1221
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1224
    :cond_0
    return-void
.end method

.method private updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 4
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    const/16 v2, 0x30

    const/4 v3, 0x5

    .line 1250
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    if-nez v1, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->getPopupWindowPosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1254
    .local v0, "handleRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->isPopupWindowShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_2

    .line 1257
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    .line 1259
    :cond_2
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    .line 1263
    :cond_3
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v2, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_4

    .line 1264
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    .line 1266
    :cond_4
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    invoke-interface {v1, p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0
.end method


# virtual methods
.method public connectToKikinBarService()V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->connect()V

    .line 1443
    return-void
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 3
    .param p1, "selection"    # Lcom/kikin/selection/Selection;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    .line 457
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1, v2}, Lcom/kikin/KikinBarService;->doSearch(Lcom/kikin/selection/Selection;)Z

    .line 462
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v1}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    .line 470
    :cond_0
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-nez v1, :cond_1

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 475
    :cond_1
    if-eqz p1, :cond_3

    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SELECT_TEXT:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 483
    invoke-static {v0}, Lcom/kikin/KikinGlobal;->hasUserAgreedKikinTerms(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, v1}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 488
    :cond_2
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-nez v1, :cond_3

    .line 489
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    sget-object v2, Lcom/kikin/reminders/ReminderTrackerSource;->KIKIN_SEARCH:Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-static {v1, v2}, Lcom/kikin/reminders/ReminderTracker;->track(Landroid/view/View;Lcom/kikin/reminders/ReminderTrackerSource;)V

    .line 491
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method public getActionBarHeight()I
    .locals 6

    .prologue
    .line 503
    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 507
    .local v0, "actionBarHeight":I
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 508
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 537
    :goto_0
    int-to-float v3, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 539
    return v0

    .line 509
    :cond_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getContentHeight()I

    move-result v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 513
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 514
    .local v2, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 515
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

    .line 552
    const/high16 v4, 0x41c80000    # 25.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 554
    .local v0, "actionBarTop":I
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 555
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 556
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 557
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 558
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 573
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    int-to-float v4, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 575
    return v0

    .line 562
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 563
    .local v1, "location":[I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 564
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 565
    aget v0, v1, v6

    goto :goto_0

    .line 566
    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_0

    .line 567
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    .line 568
    aget v0, v1, v6

    goto :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getBarGravity()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    return v0
.end method

.method public getBarPadding()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 639
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 640
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 644
    :goto_0
    return-object v0

    .line 641
    :cond_0
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 642
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v0, v3, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 644
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getBarRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContextualActionBarView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getHandler()Lcom/kikin/interfaces/KikinCallbackHandler;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 607
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 608
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 610
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 611
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 613
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    .line 614
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
    .line 586
    const/4 v0, 0x0

    .line 590
    .local v0, "splitActionBarHeight":I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 595
    :cond_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 597
    return v0
.end method

.method public hide(Z)Z
    .locals 5
    .param p1, "isFinished"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 370
    const/4 v0, 0x0

    .line 375
    .local v0, "isHided":Z
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 384
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v2}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    if-nez p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 389
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/kikin/KikinBarService;->hide(Z)Z

    move-result v1

    .line 390
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 397
    .end local v1    # "success":Z
    :cond_0
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    .line 401
    if-eqz p1, :cond_2

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 403
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    iput v4, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    .line 407
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/ActionBarContextView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 411
    :cond_1
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mIsListeningViewOnAttachStateChange:Z

    .line 414
    :cond_2
    return v0

    :cond_3
    move v2, v4

    .line 388
    goto :goto_0

    :cond_4
    move v3, v4

    .line 389
    goto :goto_1
.end method

.method public hideSelectionHandles()V
    .locals 2

    .prologue
    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    .line 790
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-interface {v0, v1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    .line 791
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mPopupWindowHandlerHandler:Lcom/kikin/interfaces/KikinPopupWindowHandler;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_END:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-interface {v0, v1}, Lcom/kikin/interfaces/KikinPopupWindowHandler;->dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    .line 792
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 439
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

    .line 655
    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    if-nez v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    .line 659
    iput p2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    .line 662
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getBarPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    .line 664
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2}, Lcom/kikin/interfaces/KikinContentViewHandler;->getWindowRectWithoutOffset()Landroid/graphics/Rect;

    move-result-object v1

    .line 668
    .local v1, "contentViewRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 669
    const/16 v2, 0x30

    if-ne p2, v2, :cond_6

    .line 671
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .line 742
    .end local v1    # "contentViewRect":Landroid/graphics/Rect;
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mDisallowUpdateForSelectionHandleVisibility:Z

    if-nez v2, :cond_0

    .line 743
    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    .line 744
    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_END:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-direct {p0, v2}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    goto :goto_0

    .line 676
    .restart local v1    # "contentViewRect":Landroid/graphics/Rect;
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_5

    .line 678
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 679
    .local v0, "contentPadding":Landroid/graphics/Rect;
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 682
    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    .line 683
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 687
    :cond_4
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 691
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v5, v3}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto :goto_1

    .line 695
    .end local v0    # "contentPadding":Landroid/graphics/Rect;
    :cond_5
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    sget-object v3, Lcom/kikin/KikinResultsViewController;->emptyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 699
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2, v5, v5}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto :goto_1

    .line 702
    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    .line 704
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

    .line 710
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_8

    .line 712
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 713
    .restart local v0    # "contentPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 716
    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_7

    .line 717
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 721
    :cond_7
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 722
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 725
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

    .line 729
    .end local v0    # "contentPadding":Landroid/graphics/Rect;
    :cond_8
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    sget-object v3, Lcom/kikin/KikinResultsViewController;->emptyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 733
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    invoke-interface {v2, v5, v5}, Lcom/kikin/interfaces/KikinContentViewHandler;->pushContentView(II)V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1488
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->disconnect()V

    .line 1495
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->unregisterActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 1497
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1485
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1482
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1479
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1476
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1473
    return-void
.end method

.method public onBarAnimationFinished()V
    .locals 0

    .prologue
    .line 1368
    return-void
.end method

.method public onBarHidden()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1346
    :cond_0
    return-void
.end method

.method public onBarIsHidding()V
    .locals 1

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    .line 1356
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 1361
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1364
    :cond_0
    return-void
.end method

.method public onBarMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1386
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1387
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "com.kikin.isTutorialMessage"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1388
    .local v1, "isTutorialMessage":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController;->mIsTutorial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    if-eqz v2, :cond_0

    .line 1389
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    invoke-interface {v2, p1}, Lcom/kikin/MessageHandlerCallback;->handleMessage(Landroid/os/Message;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public onBarRectChanged(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "gravity"    # I

    .prologue
    .line 1373
    invoke-virtual {p0, p1, p2}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(Landroid/graphics/Rect;I)V

    .line 1374
    return-void
.end method

.method public onBarVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    invoke-interface {v0, p1}, Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;->setVisibility(I)V

    .line 1381
    :cond_0
    return-void
.end method

.method public onKikinDisabled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1396
    sput-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    .line 1399
    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 1400
    return-void
.end method

.method public onQueryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    .line 1431
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v0, p1}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method public onQueryRewritten(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldQuery"    # Ljava/lang/String;
    .param p2, "newQuery"    # Ljava/lang/String;

    .prologue
    .line 1412
    iput-object p2, p0, Lcom/kikin/KikinResultsViewController;->mCurrentQuery:Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    invoke-interface {v0, p1, p2}, Lcom/kikin/interfaces/KikinCallbackHandler;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method public onSaveKikinBarState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-eqz v0, :cond_0

    .end local p1    # "bundle":Landroid/os/Bundle;
    :goto_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 1439
    return-void

    .line 1438
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:Z

    .line 1456
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->setArea(Landroid/graphics/Rect;)V

    .line 1460
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    .line 1461
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kikin/KikinBarService;->sendCabWindowToken(Landroid/os/IBinder;Z)Z

    .line 1515
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1509
    return-void
.end method

.method public playKikinSound()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->connect()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0}, Lcom/kikin/KikinBarService;->playKikinSound()Z

    .line 759
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Lcom/kikin/selection/Selection;

    .line 424
    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 425
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 426
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 427
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 428
    iput v1, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    .line 429
    return-void
.end method

.method public sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z
    .locals 1
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinBarService:Lcom/kikin/KikinBarService;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z

    move-result v0

    return v0
.end method

.method public setContentViewHandler(Lcom/kikin/interfaces/KikinContentViewHandler;)V
    .locals 0
    .param p1, "contentViewHandler"    # Lcom/kikin/interfaces/KikinContentViewHandler;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mContentViewHandler:Lcom/kikin/interfaces/KikinContentViewHandler;

    .line 854
    return-void
.end method

.method public setHandler(Lcom/kikin/interfaces/KikinCallbackHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/kikin/interfaces/KikinCallbackHandler;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Lcom/kikin/interfaces/KikinCallbackHandler;

    .line 845
    return-void
.end method

.method public setKikinAppMessageHandlerCallback(Lcom/kikin/MessageHandlerCallback;)V
    .locals 0
    .param p1, "tutorialMessageHandlerCallback"    # Lcom/kikin/MessageHandlerCallback;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialMessageHandlerCallback:Lcom/kikin/MessageHandlerCallback;

    .line 805
    return-void
.end method

.method public setKikinResultsViewControllerVisibility(Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;)V
    .locals 0
    .param p1, "instance"    # Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    .line 1300
    return-void
.end method

.method public setResultsViewState(Ljava/io/Serializable;)V
    .locals 4
    .param p1, "resultsViewState"    # Ljava/io/Serializable;

    .prologue
    .line 816
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kikin.view.bar.ActionBarViewState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 820
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "barViewState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 821
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 822
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 827
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 825
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
    .line 624
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 625
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 627
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 629
    return-void
.end method

.method public shouldShowSelectionHandles(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "selectionHandleRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 771
    if-eqz p1, :cond_0

    .line 772
    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 773
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 773
    goto :goto_0

    .line 774
    :cond_2
    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mBarGravity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 775
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
    .line 338
    iput-boolean p4, p0, Lcom/kikin/KikinResultsViewController;->mIsSearchFromLongPress:Z

    .line 349
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsResultsContainerForciblyMinimized:Z

    if-eqz v0, :cond_0

    .line 350
    sget-object p3, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    .line 352
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZLcom/kikin/KikinBarState;Z)V

    .line 353
    return-void
.end method
