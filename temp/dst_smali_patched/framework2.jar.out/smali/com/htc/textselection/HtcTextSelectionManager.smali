.class public Lcom/htc/textselection/HtcTextSelectionManager;
.super Ljava/lang/Object;
.source "HtcTextSelectionManager.java"

# interfaces
.implements Landroid/text/method/MovementMethod;
.implements Landroid/text/method/TextSelectionMovementMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field public static final FLAG_END_BY_OUTSIDE_TOUCH:I = 0x8

.field public static final FLAG_INPUT_TYPE_NULL_SELECTION:I = 0x4

.field public static final FLAG_NON_EDITABLE_SELECTION:I = 0x1

.field public static final FLAG_NOT_SUPPORT_IMAGE_CLIP:I = 0x40

.field public static final FLAG_SHOW_QUICK_ACTION:I = 0x10

.field public static final FLAG_SUPPORT_IMAGE_CLIP:I = 0x20

.field public static final FLAG_TRIGGER_BY_LONG_CLICK:I = 0x2

.field private static HTC_SKIN_ENABLED:Z = false

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static WebSearchExist:Z

.field private static firstTimeCheck:Z

.field private static icon_copy:Landroid/graphics/drawable/Drawable;

.field private static icon_cut:Landroid/graphics/drawable/Drawable;

.field private static icon_lookup:Landroid/graphics/drawable/Drawable;

.field private static icon_open_link:Landroid/graphics/drawable/Drawable;

.field private static icon_paste:Landroid/graphics/drawable/Drawable;

.field private static icon_select:Landroid/graphics/drawable/Drawable;

.field private static icon_select_all:Landroid/graphics/drawable/Drawable;

.field private static icon_share:Landroid/graphics/drawable/Drawable;

.field private static isPasteWindow:Z

.field private static mAnchorBar:Landroid/graphics/drawable/Drawable;

.field private static mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

.field private static mAnchorBarTop:Landroid/graphics/drawable/Drawable;

.field private static mAutoScroller:Lcom/htc/textselection/AutoScroller;

.field private static mCategoryColor:I

.field private static mMagnifier:Lcom/htc/textselection/Magnifier;

.field private static mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private static mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

.field private static mSkinName:Ljava/lang/String;

.field private static sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

.field private static str_lookup:Ljava/lang/String;


# instance fields
.field private ACTION_BAR_HEIGHT:I

.field private final MSG_FLY_POST_ANCHOR_TO_END:I

.field private final MSG_FLY_PRIOR_ANCHOR_TO_START:I

.field private STATUS_BAR_HEIGHT:I

.field private mCurrentView:Landroid/widget/TextView;

.field private mPreMenuSize:I

.field private mPrivateHandler:Landroid/os/Handler;

.field private mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->WebSearchExist:Z

    sput-boolean v1, Lcom/htc/textselection/HtcTextSelectionManager;->firstTimeCheck:Z

    sput-boolean v1, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_PRIOR_ANCHOR_TO_START:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_POST_ANCHOR_TO_END:I

    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$2;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$2;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/textselection/AutoScroller;

    invoke-direct {v0}, Lcom/htc/textselection/AutoScroller;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/HtcTextSelectionManager;

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/HtcTextSelectionManager;

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/textselection/HtcTextSelectionManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/htc/textselection/HtcTextSelectionManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/HtcTextSelectionManager;

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSkinChanged(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .local v0, "currentSkin":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "sp"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .local v2, "start":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    sub-int v3, v0, v2

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    invoke-direct {p0, p1, v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I

    move-result-object v1

    .local v1, "ret":[I
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v4, v1, v5

    invoke-static {p2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v1    # "ret":[I
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private doesWebSearchExist(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    sget-boolean v3, Lcom/htc/textselection/HtcTextSelectionManager;->firstTimeCheck:Z

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "target":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/textselection/HtcTextSelectionManager;->WebSearchExist:Z

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/textselection/HtcTextSelectionManager;->firstTimeCheck:Z

    .end local v0    # "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "target":Landroid/content/Intent;
    :cond_1
    sget-boolean v3, Lcom/htc/textselection/HtcTextSelectionManager;->WebSearchExist:Z

    return v3
.end method

.method private findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "offset"    # I
    .param p3, "lang"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .local v0, "ret":[I
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2, v1, p2, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-direct {v0}, Lcom/htc/textselection/HtcTextSelectionManager;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method public static getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method private getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$1;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$1;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    return-object v0
.end method

.method private loadIconDrawable(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const v6, 0x3020035

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x3020034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    const v5, 0x302001f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    const v5, 0x3020028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v5, 0x3020020

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    const v5, 0x20800c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v4, "target":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .local v1, "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "target":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private prepareMagnifier(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/htc/textselection/Magnifier;

    invoke-direct {v2, v0}, Lcom/htc/textselection/Magnifier;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .local v1, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->ACTION_BAR_HEIGHT:I

    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2, p1}, Lcom/htc/textselection/Magnifier;->isParentView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "HtcTextSelection"

    const-string v3, "prepareSelectionWindow::dismiss Magnifier because parent view changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_3
    return-void
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "ctx":Landroid/content/Context;
    if-eqz p1, :cond_4

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v1

    .local v1, "color":I
    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v4, :cond_2

    new-instance v4, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v4, v2}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->loadIconDrawable(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v4, p1, :cond_2

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    const-string v4, "HtcTextSelection"

    const-string v5, "prepareSelectionWindow::dismiss QuickAction because parent view changed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    :cond_2
    sget v4, Lcom/htc/textselection/HtcTextSelectionManager;->mCategoryColor:I

    if-eq v1, v4, :cond_3

    sput v1, Lcom/htc/textselection/HtcTextSelectionManager;->mCategoryColor:I

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    sget v5, Lcom/htc/textselection/HtcTextSelectionManager;->mCategoryColor:I

    invoke-virtual {v4, v5}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setCategoryColor(I)V

    :cond_3
    return-void

    .end local v1    # "color":I
    :cond_4
    const/4 v4, 0x1

    new-array v3, v4, [I

    const v4, 0x2010055

    aput v4, v3, v6

    .local v3, "sense60_thtme_color_2":[I
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .restart local v1    # "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public canUpdateQuickAction(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAutoScroll(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/textselection/AutoScroller;->checkAutoScroll(FF)V

    return-void
.end method

.method public dismissMagnifier()V
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1
    .param p1, "fakeDismiss"    # Z

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public findScrollableView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "anchoredView"    # Landroid/widget/TextView;

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1}, Lcom/htc/textselection/AutoScroller;->findScrollableView(Landroid/widget/TextView;)V

    return-void
.end method

.method public flyToEnd(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "target"    # Landroid/widget/TextView;

    .prologue
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public flyToStart(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "target"    # Landroid/widget/TextView;

    .prologue
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public getAnchorBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const v7, 0x30200b0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    return-object v4

    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "themeres":Landroid/content/res/Resources;
    const-string v4, "text_anchor_bar_right"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3    # "themeres":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "idNotFoundEx":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getAnchorBarDrawableCenter(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const v7, 0x30200ae

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    return-object v4

    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "themeres":Landroid/content/res/Resources;
    const-string v4, "text_anchor_bar_center"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3    # "themeres":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "idNotFoundEx":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarCenter:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getAnchorBarDrawableTop(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const v7, 0x30200af

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    return-object v4

    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "themeres":Landroid/content/res/Resources;
    const-string v4, "text_anchor_bar_left"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3    # "themeres":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "idNotFoundEx":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCurrentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMagnifier()Lcom/htc/textselection/Magnifier;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    return-object v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public isAutoScrolling()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isPasteWindow()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    return v0
.end method

.method public onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "sp"    # Landroid/text/Spannable;

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onEndSelect(Landroid/widget/TextView;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    return-void
.end method

.method public onFocusChanged(Landroid/widget/TextView;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "focused"    # Z
    .param p3, "direction"    # I
    .param p4, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    return-void
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    :cond_2
    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "sp"    # Landroid/text/Spannable;

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onStartSelect(Landroid/widget/TextView;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/textselection/HtcTextSelectionManager;->doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V

    return-void
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "direction"    # I

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "hasWindowFocus"    # Z

    .prologue
    return-void
.end method

.method public prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "canPaste"    # Z
    .param p5, "showSelectAll"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sput-boolean v1, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    const/4 v0, 0x0

    .local v0, "mMenuSize":I
    if-eqz p4, :cond_4

    move v0, v1

    :goto_0
    if-eqz p5, :cond_5

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    if-eqz p5, :cond_2

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/Menu;Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sput-boolean v5, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    .local v3, "size":I
    iget v4, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    const/4 v4, 0x0

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_0
    iput v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .end local v1    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "id":I
    :sswitch_0
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3, v7}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "id":I
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x54d -> :sswitch_6
        0x54e -> :sswitch_7
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_5
        0x1020028 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "canSelectText"    # Z
    .param p5, "canCut"    # Z
    .param p6, "canCopy"    # Z
    .param p7, "canPaste"    # Z
    .param p8, "isSelectableTextView"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    sput-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    const/4 v0, 0x0

    .local v0, "mMenuSize":I
    if-eqz p4, :cond_8

    move v0, v1

    :goto_0
    if-eqz p5, :cond_9

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    if-eqz p6, :cond_a

    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    if-eqz p7, :cond_b

    :goto_3
    add-int/2addr v0, v1

    if-eqz p8, :cond_c

    const/4 v1, 0x2

    :goto_4
    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    if-eqz p4, :cond_2

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040003

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_3
    if-eqz p6, :cond_4

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040001

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_4
    if-eqz p7, :cond_5

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_5
    if-eqz p8, :cond_7

    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->doesWebSearchExist(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    const v4, 0x10404dd

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    const v4, 0x10404db

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto/16 :goto_1

    :cond_a
    move v3, v2

    goto/16 :goto_2

    :cond_b
    move v1, v2

    goto/16 :goto_3

    :cond_c
    move v1, v2

    goto/16 :goto_4
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    .prologue
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    return-void
.end method

.method public showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/TextView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "offset"    # I
    .param p5, "mode"    # Lcom/htc/textselection/Magnifier$TouchingMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareMagnifier(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/Magnifier;->show(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    :cond_0
    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/TextView;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {p0}, Lcom/htc/textselection/HtcTextSelectionManager;->getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    :goto_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {p0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->doNotShowInMiddle(Z)V

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    goto :goto_1
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->stopScroll()V

    return-void
.end method

.method public updateCurrentView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method
