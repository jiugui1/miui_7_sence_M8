.class public Landroid/webkit/WebViewSpellCheckHelper;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewSpellCheckHelper$1;,
        Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;,
        Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;,
        Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;,
        Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    }
.end annotation


# static fields
.field private static final MAGIC_SEQ:I = 0x1c5ea


# instance fields
.field private mCurrentLocale:Ljava/util/Locale;

.field private mDisplay:Landroid/view/Display;

.field private mEnableSpellCheckIfAvailable:Z

.field private mHtcWebCore:Landroid/webkit/HTCWebCoreImpl;

.field private mMispellingHighlightColor:I

.field private mMispellingHighlightColorReady:Z

.field private mMispellingHighlighted:Z

.field private mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

.field private mPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

.field private mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

.field private mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore;)V
    .locals 2
    .param p1, "webview"    # Landroid/webkit/WebViewClassic;
    .param p2, "webviewcore"    # Landroid/webkit/WebViewCore;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mHtcWebCore:Landroid/webkit/HTCWebCoreImpl;

    iput-boolean v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mEnableSpellCheckIfAvailable:Z

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mPendingMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlighted:Z

    iput-boolean v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColorReady:Z

    const/high16 v0, -0x10000

    iput v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColor:I

    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mHtcWebCore:Landroid/webkit/HTCWebCoreImpl;

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestions:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewSpellCheckHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->isSessionActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewSpellCheckHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->resetSession()V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mHtcWebCore:Landroid/webkit/HTCWebCoreImpl;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewCore;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    return-object v0
.end method

.method static synthetic access$402(Landroid/webkit/WebViewSpellCheckHelper;Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;
    .param p1, "x1"    # Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    return-object p1
.end method

.method static synthetic access$500(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Landroid/webkit/WebViewSpellCheckHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlighted:Z

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/WebViewSpellCheckHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->getMispellingHighlightColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method private getMispellingHighlightColor()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColorReady:Z

    if-nez v2, :cond_0

    const v0, 0x10103f2

    .local v0, "defStyle":I
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/high16 v2, -0x10000

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColor:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColorReady:Z

    .end local v0    # "defStyle":I
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlightColor:I

    return v2
.end method

.method private getTextServicesLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .local v0, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method private isSessionActive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    iput-object v3, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mEnableSpellCheckIfAvailable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;-><init>(Landroid/webkit/WebViewSpellCheckHelper;)V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/secure/spell_checker_enabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    if-nez v0, :cond_2

    new-instance v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    invoke-direct {v0, p0, v3}, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;-><init>(Landroid/webkit/WebViewSpellCheckHelper;Landroid/webkit/WebViewSpellCheckHelper$1;)V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x230

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    const-string v0, "KENLOG"

    const-string v1, "Spell check is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewSpellCheckHelper;->destroy()V

    const-string v0, "KENLOG"

    const-string v1, "Spell check is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    if-eqz v0, :cond_0

    const-string v0, "[KENLOG]"

    const-string v1, "WebView spell check observer unregistered."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckSettingObserver:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;

    iput-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSessionListener:Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_1

    const-string v0, "[KENLOG]"

    const-string v1, "WebView spell check session closed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    iput-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :cond_1
    return-void
.end method

.method doSpellCheck(Ljava/lang/String;IIIZ)V
    .locals 10
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "node"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "byTouch"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->isSessionActive()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v8

    .local v8, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->resetSession()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v7, v1

    .local v7, "cookie":I
    new-instance v0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;-><init>(Landroid/webkit/WebViewSpellCheckHelper;Ljava/lang/String;IIIZ)V

    .local v0, "item":Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mPendingMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/view/textservice/TextInfo;

    .local v9, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/textservice/TextInfo;

    const v3, 0x1c5ea

    invoke-direct {v2, p1, v7, v3}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v9, v1

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v2, 0x5

    invoke-virtual {v1, v9, v2}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    goto :goto_0
.end method

.method isMispellingHighlighted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlighted:Z

    return v0
.end method

.method rescanSpellings()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->isSessionActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->resetSession()V

    goto :goto_0
.end method

.method setSpellCheckEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mEnableSpellCheckIfAvailable:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewSpellCheckHelper;->mEnableSpellCheckIfAvailable:Z

    invoke-direct {p0}, Landroid/webkit/WebViewSpellCheckHelper;->resetSession()V

    goto :goto_0
.end method

.method showSuggestionWindow(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;-><init>(Landroid/webkit/WebViewSpellCheckHelper;)V

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->updateSuggestions(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-virtual {v0}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->updateDimension()V

    invoke-virtual {p0}, Landroid/webkit/WebViewSpellCheckHelper;->updateSuggestionWindowPosition()V

    return-void
.end method

.method updateSuggestionWindowPosition()V
    .locals 8

    .prologue
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "adjustedRegion":Landroid/graphics/Rect;
    const/4 v5, 0x2

    new-array v1, v5, [I

    .local v1, "offsetInWindow":[I
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "outSize":Landroid/graphics/Point;
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-virtual {v5}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->getWidth()I

    move-result v4

    .local v4, "suggestionWindowWidth":I
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-virtual {v5}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->getHeight()I

    move-result v3

    .local v3, "suggestionWindowHeight":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_3

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    if-ltz v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->updatePosition(II)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper;->mSuggestionWindow:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-virtual {v5}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->show()V

    goto :goto_0

    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method
