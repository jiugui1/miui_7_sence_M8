.class Landroid/webkit/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjector$CallbackHandler;,
        Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ANDROIDVOX_TEMPLATE:Ljava/lang/String; = "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

.field private static final ACCESSIBILITY_SCREEN_READER_JAVASCRIPT_TEMPLATE:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_TRAVERSAL_JS_INTERFACE:Ljava/lang/String; = "accessibilityTraversal"

.field private static final ALIAS_TTS_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TOGGLE_CVOX_TEMPLATE:Ljava/lang/String; = "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"


# instance fields
.field private mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

.field private mAccessibilityJSONObject:Lorg/json/JSONObject;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityScriptInjected:Z

.field private mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private mInjectScriptRunnable:Ljava/lang/Runnable;

.field private mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

.field private final mWebView:Landroid/webkit/WebView;

.field private final mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "webViewClassic"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Landroid/webkit/AccessibilityInjector$1;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector$1;-><init>(Landroid/webkit/AccessibilityInjector;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 138
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    .line 139
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mContext:Landroid/content/Context;

    .line 140
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 141
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/AccessibilityInjector;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/AccessibilityInjector;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/AccessibilityInjector;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/AccessibilityInjector;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->injectJavaScript()V

    return-void
.end method

.method private addCallbackApis()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Landroid/webkit/AccessibilityInjector$CallbackHandler;

    const-string v1, "accessibilityTraversal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/AccessibilityInjector$CallbackHandler;-><init>(Ljava/lang/String;Landroid/webkit/AccessibilityInjector$1;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private addTtsApis()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    .line 488
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 530
    if-nez p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v3

    .line 535
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 538
    .local v1, "param":Lorg/apache/http/NameValuePair;
    const-string v4, "axs"

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/AccessibilityInjector;->verifyInjectionValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 544
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .line 542
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getScreenReaderInjectionUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 577
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "KENLOG"

    const-string v1, "[debug] hijacking ACCESSIBILITY_SCREEN_READER_URL..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://demoflo.htc.com/browser/stage/AndroidVox_htc.js"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 581
    :cond_0
    const-string v0, "KENLOG"

    const-string v1, "[release] hijacking ACCESSIBILITY_SCREEN_READER_URL..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v0, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://demoflo.htc.com/browser/production/AndroidVox_htc.js"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private injectJavaScript()V
    .locals 4

    .prologue
    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkit/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 398
    iget-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_1

    .line 399
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 400
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->getScreenReaderInjectionUrl()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "injectionUrl":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 402
    sget-boolean v1, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 403
    sget-object v1, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Loading screen reader into WebView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v0    # "injectionUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    sget-boolean v1, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to inject screen reader twice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 593
    .local v0, "settings":Landroid/webkit/WebSettings;
    if-nez v0, :cond_0

    .line 594
    const/4 v1, 0x0

    .line 597
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private isScriptInjectionEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    iget-object v3, p0, Landroid/webkit/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "injectionSetting":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private removeAccessibilityApisIfNecessary()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->removeTtsApis()V

    .line 181
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->removeCallbackApis()V

    .line 182
    return-void
.end method

.method private removeCallbackApis()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    .line 518
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private removeTtsApis()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    .line 498
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method private sendActionToAndroidVox(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 615
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    if-nez v7, :cond_2

    .line 616
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    .line 627
    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    sparse-switch p1, :sswitch_data_0

    .line 651
    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, "jsonString":Ljava/lang/String;
    const-string v7, "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "jsCode":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/AccessibilityInjector$CallbackHandler;->performAction(Landroid/webkit/WebView;Ljava/lang/String;)Z
    invoke-static {v6, v7, v3}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->access$500(Landroid/webkit/AccessibilityInjector$CallbackHandler;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v6

    .end local v3    # "jsCode":Ljava/lang/String;
    .end local v4    # "jsonString":Ljava/lang/String;
    :goto_1
    return v6

    .line 619
    :cond_2
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 620
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 621
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 622
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 632
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :sswitch_0
    if-eqz p2, :cond_1

    .line 633
    :try_start_1
    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 635
    .local v2, "granularity":I
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "granularity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 647
    .end local v2    # "granularity":I
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1

    .line 640
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_1
    if-eqz p2, :cond_1

    .line 641
    const-string v7, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "element":Ljava/lang/String;
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "element"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method private shouldInjectJavaScript(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/AccessibilityInjector;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isScriptInjectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toggleAndroidVox(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 199
    iget-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v1, "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleFallbackAccessibilityInjector(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 436
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/webkit/AccessibilityInjectorFallback;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkit/AccessibilityInjectorFallback;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    goto :goto_0
.end method

.method private verifyInjectionValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 553
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 555
    .local v0, "parsed":I
    packed-switch v0, :pswitch_data_0

    .line 565
    .end local v0    # "parsed":I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 557
    .restart local v0    # "parsed":I
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 559
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 561
    .end local v0    # "parsed":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAccessibilityApisIfNecessary()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->addTtsApis()V

    .line 171
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->addCallbackApis()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    .line 190
    iput-object v1, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_1

    .line 194
    iput-object v1, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    .line 196
    :cond_1
    return-void
.end method

.method public handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 290
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v2, :cond_3

    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 300
    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0, v0, p1}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 307
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v0, v0, p1}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 310
    :cond_3
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    if-eqz v1, :cond_0

    .line 314
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjectorFallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 221
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 226
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 227
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 228
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 229
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 230
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 232
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 364
    invoke-direct {p0, p1}, Landroid/webkit/AccessibilityInjector;->shouldInjectJavaScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-boolean v0, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 368
    sget-object v0, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Request callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mCallback:Landroid/webkit/AccessibilityInjector$CallbackHandler;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->requestCallback(Landroid/webkit/WebView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 342
    sget-boolean v0, Landroid/webkit/AccessibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Landroid/webkit/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Started loading new page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 346
    return-void
.end method

.method public onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 330
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/AccessibilityInjectorFallback;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V

    .line 333
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 266
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v1, :cond_2

    .line 271
    invoke-direct {p0, p1, p2}, Landroid/webkit/AccessibilityInjector;->sendActionToAndroidVox(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkit/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/AccessibilityInjectorFallback;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 243
    sparse-switch p1, :sswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 249
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public toggleAccessibilityFeedback(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/AccessibilityInjector;->toggleAndroidVox(Z)V

    .line 155
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mTextToSpeech:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    goto :goto_0
.end method

.method public updateJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/webkit/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 426
    :goto_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 427
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    goto :goto_0
.end method
