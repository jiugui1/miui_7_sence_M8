.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;,
        Landroid/webkit/BrowserFrame$JSObject;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final MSG_RESET:I = 0x2

.field private static final MSG_START:I = 0x1

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final POOLING_INTERVAL:I = 0x3e8

.field private static final RESET_LABEL:I = 0x5

.field private static final SCHEME_HOST_DELIMITER:Ljava/lang/String; = "://"

.field private static final SUBMIT_LABEL:I = 0x6

.field private static TIME_TO_NOTIFY:I = 0x0

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static final disablePasswordSaveWhiteList:[Ljava/lang/String;

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mIsMMR:Z

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field countNetworkStall:I

.field currProgress:I

.field enableToast:Z

.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabaseClassic;

.field private mEnableMyanmar3:Z

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/BrowserFrame$JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/webkit/WebSettingsClassic;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;

.field prevProgress:I

.field toastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    const-class v0, Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    .line 136
    const/16 v0, 0x11

    sput v0, Landroid/webkit/BrowserFrame;->TIME_TO_NOTIFY:I

    .line 936
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "httpslogin.live.com"

    aput-object v3, v0, v2

    const-string v3, "https://login.live.com"

    aput-object v3, v0, v1

    sput-object v0, Landroid/webkit/BrowserFrame;->disablePasswordSaveWhiteList:[Ljava/lang/String;

    .line 1494
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/webkit/BrowserFrame;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 1495
    sget-object v0, Landroid/webkit/BrowserFrame;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/BrowserFrame;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "Android_Core_Framework"

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_1
    sput-object v0, Landroid/webkit/BrowserFrame;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 1497
    sput-boolean v2, Landroid/webkit/BrowserFrame;->mIsMMR:Z

    .line 1500
    sget-object v0, Landroid/webkit/BrowserFrame;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    .line 1501
    sget-object v0, Landroid/webkit/BrowserFrame;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "sku_id"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :goto_2
    sput-boolean v1, Landroid/webkit/BrowserFrame;->mIsMMR:Z

    .line 1503
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 65
    goto :goto_0

    .line 1495
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1501
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettingsClassic;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebViewCore;
    .param p3, "proxy"    # Landroid/webkit/CallbackProxy;
    .param p4, "settings"    # Landroid/webkit/WebSettingsClassic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 86
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 90
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 91
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 141
    iput v3, p0, Landroid/webkit/BrowserFrame;->currProgress:I

    .line 142
    iput v3, p0, Landroid/webkit/BrowserFrame;->prevProgress:I

    .line 143
    iput v3, p0, Landroid/webkit/BrowserFrame;->countNetworkStall:I

    .line 144
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->enableToast:Z

    .line 1489
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mEnableMyanmar3:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 233
    .local v1, "appContext":Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 234
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 236
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 238
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 239
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 244
    :goto_0
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 246
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 249
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    .line 250
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 253
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 255
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 258
    invoke-direct {p0, p5}, Landroid/webkit/BrowserFrame;->addJavaScriptObjects(Ljava/util/Map;)V

    .line 259
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    .line 261
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    .line 262
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 263
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 264
    invoke-static {v1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    .line 265
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 268
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 274
    new-instance v2, Landroid/webkit/BrowserFrame$1;

    invoke-direct {v2, p0}, Landroid/webkit/BrowserFrame$1;-><init>(Landroid/webkit/BrowserFrame;)V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->toastHandler:Landroid/os/Handler;

    .line 309
    return-void

    .line 241
    .local v0, "am":Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 65
    sget v0, Landroid/webkit/BrowserFrame;->TIME_TO_NOTIFY:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/BrowserFrame;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/BrowserFrame;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/BrowserFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/BrowserFrame;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/BrowserFrame;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/BrowserFrame;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/BrowserFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private addJavaScriptObjects(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 699
    :cond_0
    return-void

    .line 691
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 692
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    .local v0, "interfaceName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 696
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v4, Landroid/webkit/BrowserFrame$JSObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .locals 2
    .param p1, "w"    # Landroid/webkit/WebViewCore;

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebViewClassic;)V

    .line 1042
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 1
    .param p1, "dialog"    # Z
    .param p2, "userGesture"    # Z

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .param p1, "policyFunction"    # I

    .prologue
    const/16 v3, 0x3eb

    .line 1049
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "dontResend":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1053
    .local v1, "resend":Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 1054
    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private didFinishLoading()V
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    .line 1329
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1331
    :cond_0
    return-void
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "useCachedCredentials"    # Z
    .param p5, "suppressDialog"    # Z

    .prologue
    .line 1158
    new-instance v0, Landroid/webkit/BrowserFrame$2;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkit/BrowserFrame$2;-><init>(Landroid/webkit/BrowserFrame;ZIZ)V

    .line 1180
    .local v0, "handler":Landroid/webkit/HttpAuthHandler;
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/KeyStoreHandler;->didReceiveData([BI)V

    .line 1324
    :cond_0
    return-void
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 1015
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 1020
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 1297
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1300
    .local v8, "extension":Ljava/lang/String;
    invoke-static {v8}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1302
    if-nez p4, :cond_0

    .line 1303
    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v8    # "extension":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1311
    invoke-static {p4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    new-instance v0, Landroid/webkit/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkit/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1317
    :goto_1
    return-void

    .line 1314
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "expectedSize"    # I

    .prologue
    .line 761
    const/4 v2, 0x0

    .line 763
    .local v2, "size":I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 765
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 766
    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    .line 768
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 772
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 780
    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    return v2

    .line 770
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 773
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v2, 0x0

    .line 779
    goto :goto_1

    .line 776
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 777
    .local v1, "e2":Ljava/io/IOException;
    const-string v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 742
    .local v0, "size":I
    :try_start_0
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 744
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 745
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return v0

    .line 746
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1091
    packed-switch p0, :pswitch_data_0

    .line 1122
    const-string v4, "webkit"

    const-string v5, "getRawResFilename got incompatible resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v4, ""

    .line 1136
    :goto_0
    return-object v4

    .line 1093
    :pswitch_0
    const v2, 0x1100004

    .line 1125
    .local v2, "resid":I
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1126
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1127
    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    .line 1128
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "path":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1130
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1131
    const-string v4, "webkit"

    const-string v5, "Can\'t find drawable directory."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string v4, ""

    goto :goto_0

    .line 1097
    .end local v0    # "index":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "resid":I
    .end local v3    # "value":Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x1100003

    .line 1098
    .restart local v2    # "resid":I
    goto :goto_1

    .line 1102
    .end local v2    # "resid":I
    :pswitch_2
    const v2, 0x10800de

    .line 1103
    .restart local v2    # "resid":I
    goto :goto_1

    .line 1106
    .end local v2    # "resid":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1110
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1114
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1118
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1134
    .restart local v0    # "index":I
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "resid":I
    .restart local v3    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1136
    .end local v0    # "index":I
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1091
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string v3, "file:///android_asset/"

    .line 794
    .local v3, "ANDROID_ASSET":Ljava/lang/String;
    const-string v5, "file:///android_res/"

    .line 795
    .local v5, "ANDROID_RESOURCE":Ljava/lang/String;
    const-string v4, "content:"

    .line 797
    .local v4, "ANDROID_CONTENT":Ljava/lang/String;
    const-string v20, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 798
    const-string v20, "file:///android_res/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 799
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 800
    :cond_0
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "url has length 0 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/16 v20, 0x0

    .line 863
    :goto_0
    return-object v20

    .line 803
    :cond_1
    const/16 v20, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 804
    .local v16, "slash":I
    const/16 v20, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 805
    .local v9, "dot":I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    .line 806
    :cond_2
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Incorrect res path: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/16 v20, 0x0

    goto :goto_0

    .line 809
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 810
    .local v17, "subClassName":Ljava/lang/String;
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 811
    .local v13, "fieldName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 813
    .local v11, "errorMsg":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".R$"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 817
    .local v8, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 818
    .local v12, "field":Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 819
    .local v14, "id":I
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 820
    .local v19, "value":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 821
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v20

    goto/16 :goto_0

    .line 827
    :cond_4
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "not of type string: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 830
    .end local v8    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "id":I
    .end local v19    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v10

    .line 831
    .local v10, "e":Ljava/lang/Exception;
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 834
    .end local v9    # "dot":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "errorMsg":Ljava/lang/String;
    .end local v13    # "fieldName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "subClassName":Ljava/lang/String;
    :cond_5
    const-string v20, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 835
    const-string v20, "file:///android_asset/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, "assetUrl":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 838
    .local v7, "assets":Landroid/content/res/AssetManager;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 839
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    goto/16 :goto_0

    .line 840
    .end local v7    # "assets":Landroid/content/res/AssetManager;
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 841
    .local v10, "e":Ljava/io/IOException;
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 842
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 843
    .local v10, "e":Ljava/lang/Exception;
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Problem loading url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 846
    .end local v6    # "assetUrl":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 852
    const/16 v20, 0x3f

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 853
    .local v15, "mimeIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_7

    .line 854
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 856
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 857
    .restart local v18    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v20

    goto/16 :goto_0

    .line 858
    .end local v15    # "mimeIndex":I
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_3
    move-exception v10

    .line 859
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 863
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "loadType"    # I
    .param p3, "isMainFrame"    # Z

    .prologue
    .line 527
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    .line 528
    :cond_0
    if-eqz p3, :cond_1

    .line 529
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 530
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 531
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->enableToast:Z

    .line 535
    :cond_1
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "favicon"    # Landroid/graphics/Bitmap;
    .param p3, "loadType"    # I
    .param p4, "isMainFrame"    # Z

    .prologue
    const/4 v1, 0x0

    .line 453
    sget-boolean v0, Landroid/webkit/BrowserFrame;->mIsMMR:Z

    if-eqz v0, :cond_0

    .line 454
    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onLoadStarted(Ljava/lang/String;)V

    .line 458
    :cond_0
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 460
    if-nez p4, :cond_1

    if-nez p3, :cond_2

    .line 461
    :cond_1
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 463
    if-eqz p4, :cond_2

    .line 465
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 466
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->enableToast:Z

    .line 469
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 470
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 472
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resetCounterOnSendWebkitDrawAtFrontOfQueue()V

    .line 476
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->clearContent()V

    .line 477
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 480
    :cond_2
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "postData"    # [B
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 880
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 895
    :try_start_0
    new-instance v4, Landroid/net/WebAddress;

    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 898
    .local v4, "uri":Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "schemePlusHost":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Landroid/webkit/BrowserFrame;->disablePasswordSaveWhiteList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 902
    sget-object v5, Landroid/webkit/BrowserFrame;->disablePasswordSaveWhiteList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 909
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 910
    .local v1, "postString":Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 912
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v5, v3}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "saved":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 917
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_0

    .line 921
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v5, v3, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    .end local v0    # "i":I
    .end local v1    # "postString":Ljava/lang/String;
    .end local v2    # "saved":[Ljava/lang/String;
    .end local v3    # "schemePlusHost":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/WebAddress;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 926
    .restart local v0    # "i":I
    .restart local v1    # "postString":Ljava/lang/String;
    .restart local v2    # "saved":[Ljava/lang/String;
    .restart local v3    # "schemePlusHost":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/WebAddress;
    :cond_3
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, p2, p3, v6}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 413
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 416
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "certError"    # I
    .param p3, "certDER"    # [B
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1194
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1195
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1197
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Landroid/net/http/SslCertificate;

    invoke-direct {v4, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1198
    .local v4, "sslCert":Landroid/net/http/SslCertificate;
    invoke-static {p2, v4, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1206
    .local v5, "sslError":Landroid/net/http/SslError;
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1207
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1208
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, v5}, Landroid/webkit/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    .line 1254
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "sslCert":Landroid/net/http/SslCertificate;
    .end local v5    # "sslError":Landroid/net/http/SslError;
    :goto_0
    return-void

    .line 1199
    :catch_0
    move-exception v2

    .line 1201
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "webkit"

    const-string v7, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    .line 1212
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "sslCert":Landroid/net/http/SslCertificate;
    .restart local v5    # "sslError":Landroid/net/http/SslError;
    :cond_0
    new-instance v3, Landroid/webkit/BrowserFrame$3;

    invoke-direct {v3, p0, v5, p2}, Landroid/webkit/BrowserFrame$3;-><init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;I)V

    .line 1247
    .local v3, "handler":Landroid/webkit/SslErrorHandler;
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/SslCertLookupTable;->isPending(Landroid/net/http/SslError;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1248
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Landroid/webkit/SslCertLookupTable;->addPendingHandles(Landroid/net/http/SslError;I)V

    .line 1249
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, v3, v5}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0

    .line 1251
    :cond_1
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Landroid/webkit/SslCertLookupTable;->addPendingHandles(Landroid/net/http/SslError;I)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "hostAndPort"    # Ljava/lang/String;

    .prologue
    .line 1264
    invoke-static {}, Landroid/webkit/SslClientCertLookupTable;->getInstance()Landroid/webkit/SslClientCertLookupTable;

    move-result-object v2

    .line 1265
    .local v2, "table":Landroid/webkit/SslClientCertLookupTable;
    invoke-virtual {v2, p2}, Landroid/webkit/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1267
    invoke-virtual {v2, p2}, Landroid/webkit/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 1268
    .local v0, "pkey":Ljava/security/PrivateKey;
    instance-of v3, v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v3, :cond_0

    .line 1269
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local v0    # "pkey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 1270
    .local v1, "sslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v3

    invoke-virtual {v2, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v5

    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    .line 1286
    .end local v1    # "sslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    return-void

    .line 1274
    .restart local v0    # "pkey":Ljava/security/PrivateKey;
    :cond_0
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_0

    .line 1278
    .end local v0    # "pkey":Ljava/security/PrivateKey;
    :cond_1
    invoke-virtual {v2, p2}, Landroid/webkit/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1280
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    check-cast v3, [[B

    invoke-virtual {p0, p1, v4, v5, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    goto :goto_0

    .line 1283
    :cond_2
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v4, Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {v4, p0, p1, p2, v2}, Landroid/webkit/ClientCertRequestHandler;-><init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V

    invoke-virtual {v3, v4, p2}, Landroid/webkit/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 1035
    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 421
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 422
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 487
    .local v0, "h":Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 490
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewDatabaseClassic;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 494
    .end local v0    # "h":Landroid/webkit/WebHistoryItem;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCertificate([B)V
    .locals 5
    .param p1, "cert_der"    # [B

    .prologue
    .line 1339
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1340
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1342
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v4, Landroid/net/http/SslCertificate;

    invoke-direct {v4, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v3, v4}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v2

    .line 1345
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "webkit"

    const-string v4, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .param p1, "newProgress"    # I

    .prologue
    const/4 v2, 0x1

    .line 978
    iput p1, p0, Landroid/webkit/BrowserFrame;->currProgress:I

    .line 979
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->enableToast:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->toastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    const-string v0, "webkit"

    const-string v1, "toastHandler.sendEmptyMessage(MSG_START)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getNetwork2GEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 983
    const/16 v0, 0x1a

    sput v0, Landroid/webkit/BrowserFrame;->TIME_TO_NOTIFY:I

    .line 986
    :goto_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->toastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 990
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 991
    const-string v0, "ProgressTracker"

    const-string v1, "BrowserFrame::setProgress 101"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewClassic;->setSlowNetwork(Z)V

    .line 993
    const/16 p1, 0x64

    .line 996
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 997
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 998
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 999
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4b

    if-le p1, v0, :cond_3

    .line 1005
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 1007
    :cond_3
    return-void

    .line 985
    :cond_4
    const/16 v0, 0x11

    sput v0, Landroid/webkit/BrowserFrame;->TIME_TO_NOTIFY:I

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 944
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 945
    .local v0, "androidResource":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 946
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 967
    :cond_0
    :goto_0
    return-object v4

    .line 951
    :cond_1
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkit/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 952
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 955
    :cond_2
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkit/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 956
    .local v4, "response":Landroid/webkit/WebResourceResponse;
    if-nez v4, :cond_0

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 958
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 959
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x1100002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 961
    .local v2, "ins":Ljava/io/InputStream;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v6, "text/html"

    const-string v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "response":Landroid/webkit/WebResourceResponse;
    .local v5, "response":Landroid/webkit/WebResourceResponse;
    move-object v4, v5

    .line 965
    .end local v5    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v4    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 962
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 964
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 501
    .local v0, "h":Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 503
    .end local v0    # "h":Landroid/webkit/WebHistoryItem;
    :cond_0
    return v1
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .param p1, "loadType"    # I
    .param p2, "isMainFrame"    # Z

    .prologue
    .line 512
    if-eqz p2, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 514
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 516
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 1061
    return-void
.end method

.method private windowObjectCleared(I)V
    .locals 5
    .param p1, "nativeFramePointer"    # I

    .prologue
    .line 668
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 669
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    .local v0, "interfaceName":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/BrowserFrame$JSObject;

    .line 672
    .local v2, "jsobject":Landroid/webkit/BrowserFrame$JSObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 673
    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iget-boolean v4, v2, Landroid/webkit/BrowserFrame$JSObject;->requireAnnotation:Z

    invoke-direct {p0, p1, v3, v0, v4}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 677
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v2    # "jsobject":Landroid/webkit/BrowserFrame$JSObject;
    :cond_1
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 678
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "requireAnnotation"    # Z

    .prologue
    .line 720
    sget-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 721
    :cond_0
    invoke-virtual {p0, p2}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v1, Landroid/webkit/BrowserFrame$JSObject;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    return-void
.end method

.method public native clearCache()V
.end method

.method public native clearCacheWithParam(Z)V
.end method

.method committed()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method didFirstLayout()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 441
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 443
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v0, "text":Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 642
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 646
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 626
    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getShouldStartScrolledRight()Z
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkit/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 394
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 396
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 552
    iget-boolean v6, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v6, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 558
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v1

    .line 560
    .local v1, "item":Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_0

    .line 561
    new-instance v4, Landroid/net/WebAddress;

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 563
    .local v4, "uri":Landroid/net/WebAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "schemePlusHost":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "up":[Ljava/lang/String;
    if-nez v3, :cond_2

    .line 568
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 573
    :cond_2
    const/4 v5, 0x0

    .line 574
    .local v5, "urlInWhiteList":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v6, Landroid/webkit/BrowserFrame;->disablePasswordSaveWhiteList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 575
    sget-object v6, Landroid/webkit/BrowserFrame;->disablePasswordSaveWhiteList:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 576
    const/4 v5, 0x1

    .line 574
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 578
    :cond_4
    if-nez v5, :cond_0

    .line 579
    if-eqz v3, :cond_0

    aget-object v6, v3, v8

    if-eqz v6, :cond_0

    .line 580
    aget-object v6, v3, v8

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-direct {p0, v6, v7}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/webkit/WebHistoryItem;
    .end local v2    # "schemePlusHost":Ljava/lang/String;
    .end local v3    # "up":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/WebAddress;
    .end local v5    # "urlInWhiteList":Z
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v7}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto/16 :goto_0

    .line 594
    :pswitch_2
    iget v6, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_0

    .line 595
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 596
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto/16 :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 706
    iget-boolean v2, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v1

    .line 712
    goto :goto_0
.end method

.method public isEnableMyanmar3()Z
    .locals 1

    .prologue
    .line 1491
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mEnableMyanmar3:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 356
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const-string p5, "about:blank"

    .line 359
    :cond_1
    if-nez p2, :cond_2

    .line 360
    const-string p2, ""

    .line 365
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 366
    :cond_3
    const-string p1, "about:blank"

    .line 368
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 369
    :cond_5
    const-string p3, "text/html"

    .line 371
    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 373
    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 322
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 330
    return-void

    .line 327
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(IJ[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 339
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 341
    return-void
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_0
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnableMyanmar3(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1490
    iput-boolean p1, p0, Landroid/webkit/BrowserFrame;->mEnableMyanmar3:Z

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 1427
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1429
    :cond_0
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1430
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
