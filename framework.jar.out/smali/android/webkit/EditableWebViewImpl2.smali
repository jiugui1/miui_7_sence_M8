.class Landroid/webkit/EditableWebViewImpl2;
.super Ljava/lang/Object;
.source "EditableWebViewImpl2.java"

# interfaces
.implements Landroid/webkit/EditableWebViewProvider2;


# static fields
.field private static final DEBUG:Z

.field private static final DIVIDE_BR:Ljava/lang/String; = "<div><br></div>"

.field private static final HTC_DEBUG:Z

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "imageheight"

.field private static final IMAGE_PATH:Ljava/lang/String; = "imagepath"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "imagewidth"

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_INSERT_IMAGE_TO_END:I = 0x138d

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESET_SESSION:I = 0x138a

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SAVE_IMAGECACHE_INTO_GIVENPATH_CALLBACK:I = 0x138e

.field private static final MSG_SCHEDULE_NEXT_BATCH_SPELL_CHECK:I = 0x1389

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final MSG_UPDATE_SUGGESTION_WINDOW_POSITION:I = 0x138b

.field private static final UPDATE_WEB_CONTNET_MSG_ID:I = 0x138c


# instance fields
.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field isNoteAP:Z

.field private mContentPrefix:Ljava/lang/String;

.field private mEditableWebView:Landroid/webkit/WebView;

.field private mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

.field private mImgFilePrefix:Ljava/lang/String;

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mOnContentChangedListener:Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

.field public mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

.field private mOverScrollThreshold:I

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mStrImageEditing:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private mWebViewProvider:Landroid/webkit/WebViewProvider;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableWebViewImpl2;->DEBUG:Z

    .line 1009
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 5
    .param p1, "editableWebView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    .line 48
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    .line 49
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 50
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mText:Landroid/text/Editable;

    .line 51
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 52
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 53
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mInput:Landroid/text/method/TextKeyListener;

    .line 55
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl2;->m_bEnableEditable:Z

    .line 56
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl2;->mInitialized:Z

    .line 57
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl2;->isNoteAP:Z

    .line 59
    const-string v1, "content://"

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mContentPrefix:Ljava/lang/String;

    .line 180
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl2;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 207
    new-instance v1, Landroid/webkit/EditableWebViewImpl2$1;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl2$1;-><init>(Landroid/webkit/EditableWebViewImpl2;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    .line 358
    new-instance v1, Landroid/webkit/EditableWebViewImpl2$2;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl2$2;-><init>(Landroid/webkit/EditableWebViewImpl2;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    .line 368
    new-instance v1, Landroid/webkit/EditableWebViewImpl2$3;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl2$3;-><init>(Landroid/webkit/EditableWebViewImpl2;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    .line 975
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    .line 993
    const-string v1, "file://"

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mImgFilePrefix:Ljava/lang/String;

    .line 1008
    const-string v1, "ForImageEditing.bmp"

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mStrImageEditing:Ljava/lang/String;

    .line 1074
    new-instance v1, Landroid/webkit/EditableWebViewImpl2$4;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl2$4;-><init>(Landroid/webkit/EditableWebViewImpl2;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    .line 1113
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mOnContentChangedListener:Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

    .line 1114
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    .line 1115
    iput v3, p0, Landroid/webkit/EditableWebViewImpl2;->mOverScrollThreshold:I

    .line 1184
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl2;->captureAfterDraw:Z

    .line 1185
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->captureMessages:Ljava/util/Vector;

    .line 64
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    .line 65
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    .line 66
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 67
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 68
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 72
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->setUpdateContentListener(Landroid/webkit/WebViewCore$UpdateContentListener;)V

    .line 74
    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebViewImpl2;->setEditable(Z)V

    .line 81
    iput-boolean v4, p0, Landroid/webkit/EditableWebViewImpl2;->mInitialized:Z

    .line 83
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/EditableWebViewImpl2;->isNoteAP:Z

    .line 86
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl2;->getKeyListener()Landroid/text/method/KeyListener;

    .line 91
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 92
    .local v0, "settings":Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettingsClassic;->setSyntheticLinksEnabled(Z)V

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettingsClassic;->setWebSelectionType(I)V

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebViewImpl2;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl2;->appendImgFilePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebViewCore;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/EditableWebViewImpl2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/EditableWebViewImpl2;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendImgFilePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1002
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mImgFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mImgFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1005
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "x"    # Landroid/graphics/Rect;

    .prologue
    .line 380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static fromEditableWebView(Landroid/webkit/EditableWebViewProvider2$Factory;)Landroid/webkit/EditableWebViewImpl2;
    .locals 1
    .param p0, "view"    # Landroid/webkit/EditableWebViewProvider2$Factory;

    .prologue
    .line 114
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/webkit/EditableWebViewProvider2$Factory;->getEditableWebViewProvider()Landroid/webkit/EditableWebViewProvider2;

    move-result-object v0

    check-cast v0, Landroid/webkit/EditableWebViewImpl2;

    goto :goto_0
.end method

.method private removeImgFilePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 995
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mImgFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mImgFilePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 998
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private shouldMakeAcopy(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mContentPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "strImagePath"    # [Ljava/lang/String;
    .param p2, "nImageNode"    # [I
    .param p3, "rectImage"    # Landroid/graphics/Rect;

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public SetBackColor(IZ)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "enableBackColor"    # Z

    .prologue
    const/16 v5, 0xff

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "StrColor":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 880
    .local v4, "nR":I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 881
    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    .line 883
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 884
    .local v3, "nG":I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 885
    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    .line 887
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 888
    .local v2, "nB":I
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 889
    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    .line 891
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 892
    .local v1, "nA":I
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 893
    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    .line 895
    :cond_7
    if-nez p2, :cond_8

    .line 896
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 901
    return-void

    .line 898
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 960
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 961
    return-void
.end method

.method public SetForeColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/16 v4, 0xff

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "StrColor":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 837
    .local v3, "nR":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 838
    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    .line 840
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 841
    .local v2, "nG":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 842
    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    .line 844
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 845
    .local v1, "nB":I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 846
    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    .line 848
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 850
    return-void
.end method

.method public SetImageAttr(III)V
    .locals 4
    .param p1, "pointer"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 808
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    .line 809
    .local v0, "fCurrentScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 810
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 811
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 814
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 815
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 396
    return-void
.end method

.method public alignCenter()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 727
    return-void
.end method

.method public alignJustified()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 732
    return-void
.end method

.method public alignLeft()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 737
    return-void
.end method

.method public alignRight()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 742
    return-void
.end method

.method public beginBatchEdit()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 783
    return-void
.end method

.method public checkVerticalBouncingCallback(I)Z
    .locals 2
    .param p1, "distance"    # I

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    .line 1341
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-interface {v0, v1, p1}, Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    .line 1342
    const/4 v0, 0x0

    .line 1344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public copy()V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public cut()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 0
    .param p1, "leftStart"    # I
    .param p2, "leftEnd"    # I
    .param p3, "rightStart"    # I
    .param p4, "rightEnd"    # I

    .prologue
    .line 595
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->enableMultiTouch()V

    .line 412
    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 0
    .param p1, "portraitScale"    # F
    .param p2, "landscapeScale"    # F

    .prologue
    .line 555
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 0
    .param p1, "pref"    # Z

    .prologue
    .line 1482
    return-void
.end method

.method public endBatchEdit()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebViewImpl2;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    .line 610
    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 614
    if-nez p2, :cond_0

    .line 615
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2
    .param p1, "bottom"    # I
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 643
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 644
    return-void
.end method

.method public forcebreakWord(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 416
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->forceBreakWord(Z)V

    .line 417
    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAllAnchorSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 648
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 649
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 651
    :cond_0
    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1427
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1428
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, p1}, Landroid/webkit/EditableWebViewImpl2;->getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1429
    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1418
    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1420
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorSpanRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 1422
    :cond_1
    return-void
.end method

.method public getBackColor()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 905
    iget-object v8, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v8, v7}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBackColor(I)Ljava/lang/String;

    move-result-object v6

    .line 907
    .local v6, "strRGBA":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 949
    :cond_1
    :goto_0
    return v7

    .line 909
    :cond_2
    const-string v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 910
    const/4 v1, 0x5

    .local v1, "start":I
    const/4 v0, 0x0

    .line 911
    .local v0, "end":I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 912
    if-eq v0, v9, :cond_1

    .line 913
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, "strR":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 916
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 917
    if-eq v0, v9, :cond_1

    .line 918
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 920
    .local v4, "strG":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 921
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 922
    if-eq v0, v9, :cond_1

    .line 923
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, "strB":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 926
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 927
    if-eq v0, v9, :cond_1

    .line 928
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "strA":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    .line 931
    .end local v0    # "end":I
    .end local v1    # "start":I
    .end local v2    # "strA":Ljava/lang/String;
    .end local v3    # "strB":Ljava/lang/String;
    .end local v4    # "strG":Ljava/lang/String;
    .end local v5    # "strR":Ljava/lang/String;
    :cond_3
    const-string v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 932
    const/4 v1, 0x4

    .restart local v1    # "start":I
    const/4 v0, 0x0

    .line 933
    .restart local v0    # "end":I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 934
    if-eq v0, v9, :cond_1

    .line 935
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 937
    .restart local v5    # "strR":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 938
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 939
    if-eq v0, v9, :cond_1

    .line 940
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 942
    .restart local v4    # "strG":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 943
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 944
    if-eq v0, v9, :cond_1

    .line 945
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 947
    .restart local v3    # "strB":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    .line 949
    .end local v0    # "end":I
    .end local v1    # "start":I
    .end local v3    # "strB":Ljava/lang/String;
    .end local v4    # "strG":Ljava/lang/String;
    .end local v5    # "strR":Ljava/lang/String;
    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBoldState(I)I

    move-result v0

    return v0
.end method

.method public getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl2;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetFontSize(I)I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 854
    iget-object v7, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v7, v6}, Landroid/webkit/HTCWebCoreImpl;->nativeGetForeColor(I)Ljava/lang/String;

    move-result-object v5

    .line 856
    .local v5, "strRGB":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 873
    :cond_1
    :goto_0
    return v6

    .line 858
    :cond_2
    const/4 v1, 0x4

    .local v1, "start":I
    const/4 v0, 0x0

    .line 859
    .local v0, "end":I
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 860
    if-eq v0, v8, :cond_1

    .line 861
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, "strR":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 864
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 865
    if-eq v0, v8, :cond_1

    .line 866
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "strG":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 869
    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 870
    if-eq v0, v8, :cond_1

    .line 871
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "strB":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 604
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 605
    return-void
.end method

.method public getHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "pointer"    # I

    .prologue
    .line 819
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 821
    .local v0, "rectImage":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/webkit/HTCWebCoreImpl;->nativegetImageNodeRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 824
    :cond_0
    sget-boolean v1, Landroid/webkit/EditableWebViewImpl2;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "EditableWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EditableWebView::getImageNodeRect] >> rectImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_1
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebViewImpl2;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 829
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 830
    return-object v0
.end method

.method public getItalicState()I
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetItalicState(I)I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    .line 503
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 504
    .local v0, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mInput:Landroid/text/method/TextKeyListener;

    .line 506
    .end local v0    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getOnSelectionEditingListener()Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    return-object v0
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "isContentDim"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1242
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl2;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "isContentDim"    # Z
    .param p6, "bmp"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1248
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebViewImpl2;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "isContentDim"    # Z
    .param p6, "bmp"    # Landroid/graphics/Bitmap;
    .param p7, "bgColor"    # I

    .prologue
    .line 1257
    move v7, p1

    .local v7, "vl":I
    move v8, p2

    .line 1258
    .local v8, "vt":I
    if-nez p5, :cond_1

    .line 1259
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p1

    .line 1260
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result p2

    .line 1261
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p3

    .line 1262
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p4

    .line 1268
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    invoke-direct {v2, v9, v10, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1270
    .local v2, "clip":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1271
    const/4 v6, 0x0

    .line 1310
    :cond_0
    :goto_1
    return-object v6

    .line 1264
    .end local v2    # "clip":Landroid/graphics/Rect;
    :cond_1
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v7

    .line 1265
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v8

    goto :goto_0

    .line 1273
    .restart local v2    # "clip":Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x0

    .line 1274
    .local v5, "needAlocate":Z
    move-object/from16 v6, p6

    .line 1276
    .local v6, "ret":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1277
    :cond_3
    const/4 v5, 0x1

    .line 1278
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1281
    :cond_4
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1282
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1284
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1286
    neg-int v9, v7

    int-to-float v9, v9

    neg-int v10, v8

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1289
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iget-object v10, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    div-float v3, v9, v10

    .line 1290
    .local v3, "defaulScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_5

    .line 1291
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v1, v3, v3, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1293
    :cond_5
    sget-boolean v9, Landroid/webkit/EditableWebViewImpl2;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 1294
    const-string v9, "EditableWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EditableWebView::getRegionCapture] >> l="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScale()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " density="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_6
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    if-nez v5, :cond_7

    .line 1301
    const/4 v6, 0x0

    .line 1310
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "defaulScale":F
    :cond_7
    :goto_2
    if-nez v5, :cond_0

    move-object/from16 v6, p6

    goto/16 :goto_1

    .line 1303
    :catch_0
    move-exception v4

    .line 1304
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    const-string v9, "EditableWebView"

    const-string v10, ""

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "isContentDim"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1227
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl2;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "isContentDim"    # Z
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1215
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl2;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->captureAfterDraw:Z

    .line 1202
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetStrikethroughState(I)I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetUnderlineState(I)I

    move-result v0

    return v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 0

    .prologue
    .line 1476
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 776
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 778
    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 631
    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 625
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 787
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 790
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 791
    const/16 v0, 0x12

    invoke-virtual {p0, v2, v0}, Landroid/webkit/EditableWebViewImpl2;->setCaretPos(II)V

    .line 793
    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebViewImpl2;->updateContentFromMessage(I)V

    .line 794
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "htmlString"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 637
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 639
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 661
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebView;->getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/WebView$ImageInfo;

    move-result-object v2

    .line 664
    .local v2, "imageInfo":Landroid/webkit/WebView$ImageInfo;
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 666
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 668
    .local v1, "callback":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 669
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "imagepath"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v3, "imageheight"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string v3, "imagewidth"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 673
    const/16 v3, 0x138d

    iput v3, v1, Landroid/os/Message;->what:I

    .line 674
    const-string v3, "<div><br></div>"

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebViewImpl2;->insertHtmlToTheEnd(Ljava/lang/String;)V

    .line 675
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/webkit/EditableWebViewImpl2;->findContinuousBRFromEnd(ILandroid/os/Message;)V

    .line 682
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "callback":Landroid/os/Message;
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {p0, v3, v4}, Landroid/webkit/EditableWebViewImpl2;->setCaretPos(II)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x1fe

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method isDrawingboardExist()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1012
    const/4 v0, 0x0

    .line 1015
    .local v0, "aplist":Ljava/util/List;
    :try_start_0
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1016
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.drawingboard.LAUNCH_DRAWING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v2, "locationpicker":Landroid/content/Intent;
    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1021
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 1023
    :cond_0
    sget-boolean v4, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "isDrawingboardExist"

    const-string v6, "INSERT_IMAGE> not found drawingboard>"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "locationpicker":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    move v4, v5

    .line 1028
    :goto_1
    return v4

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "isDrawingboardExist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT_IMAGE> not found drawingboard> exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 1023
    :cond_3
    sget-boolean v4, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "isDrawingboardExist"

    const-string v6, "INSERT_IMAGE> not found drawingboard>"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    throw v4

    .line 1028
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 1021
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1023
    :cond_6
    sget-boolean v4, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "isDrawingboardExist"

    const-string v6, "INSERT_IMAGE> not found drawingboard>"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/EditableWebViewProvider2$PrivateAccess;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider2$PrivateAccess;->super_onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 513
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->captureAfterDraw:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->captureAfterDraw:Z

    .line 174
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 519
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebViewImpl2;->onEndSelect(Z)V

    .line 560
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 3
    .param p1, "removeSelection"    # Z

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl2;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v2, :cond_0

    .line 565
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 566
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 567
    .local v0, "selectionhandles":[I
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 568
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 569
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/EditableWebViewImpl2;->setCaretPos(II)V

    .line 571
    .end local v0    # "selectionhandles":[I
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1407
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 549
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 20
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 1354
    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    check-cast v2, Landroid/webkit/EditableWebViewProvider2$PrivateAccess;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/webkit/EditableWebViewProvider2$PrivateAccess;->super_overScrollBy(IIIIIIIIZ)Z

    move-result v2

    .line 1395
    :goto_0
    return v2

    .line 1358
    :cond_0
    add-int v16, p3, p1

    .line 1359
    .local v16, "newScrollX":I
    add-int v17, p4, p2

    .line 1360
    .local v17, "newScrollY":I
    if-gez v17, :cond_1

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v0, v17

    move/from16 v1, p6

    if-le v0, v1, :cond_7

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    if-nez v2, :cond_7

    .line 1362
    :cond_2
    const/16 p8, 0x0

    .line 1367
    :cond_3
    :goto_1
    const/16 p7, 0x0

    .line 1370
    move/from16 v0, p7

    neg-int v15, v0

    .line 1371
    .local v15, "left":I
    add-int v18, p7, p5

    .line 1372
    .local v18, "right":I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v19, v0

    .line 1373
    .local v19, "top":I
    add-int v12, p8, p6

    .line 1375
    .local v12, "bottom":I
    const/4 v13, 0x0

    .line 1376
    .local v13, "clampedX":Z
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 1377
    move/from16 v16, v18

    .line 1378
    const/4 v13, 0x1

    .line 1384
    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 1385
    .local v14, "clampedY":Z
    move/from16 v0, v17

    if-le v0, v12, :cond_9

    .line 1386
    move/from16 v17, v12

    .line 1387
    const/4 v14, 0x1

    .line 1393
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v13, v14}, Landroid/webkit/WebViewClassic;->onOverScrolled(IIZZ)V

    .line 1395
    if-nez v13, :cond_6

    if-eqz v14, :cond_a

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 1364
    .end local v12    # "bottom":I
    .end local v13    # "clampedX":Z
    .end local v14    # "clampedY":Z
    .end local v15    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    :cond_7
    if-lez v17, :cond_3

    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    .line 1365
    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    goto :goto_1

    .line 1379
    .restart local v12    # "bottom":I
    .restart local v13    # "clampedX":Z
    .restart local v15    # "left":I
    .restart local v18    # "right":I
    .restart local v19    # "top":I
    :cond_8
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1380
    move/from16 v16, v15

    .line 1381
    const/4 v13, 0x1

    goto :goto_2

    .line 1388
    .restart local v14    # "clampedY":Z
    :cond_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1389
    move/from16 v17, v19

    .line 1390
    const/4 v14, 0x1

    goto :goto_3

    .line 1395
    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public pastePlainText()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public pasteWithStyle()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 0
    .param p1, "nTextWrapWidth"    # I

    .prologue
    .line 439
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public resumeTextReflow()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pointer"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "action_id"    # I

    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl2;->getOnSelectionEditingListener()Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    move-result-object v1

    .line 1036
    .local v1, "listener":Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl2;->shouldMakeAcopy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1037
    sget-boolean v3, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    .line 1038
    const-string v3, "imageediting"

    const-string v4, "shouldMakeCopyInAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;->getImageEditDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl2;->mStrImageEditing:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1042
    sget-boolean v3, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v3, :cond_1

    .line 1043
    const-string v3, "imageediting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_1
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x138e

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1053
    .local v2, "m":Landroid/os/Message;
    iput p2, v2, Landroid/os/Message;->arg1:I

    .line 1054
    iput p4, v2, Landroid/os/Message;->arg2:I

    .line 1055
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl2;->removeImgFilePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1056
    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x284

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1070
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    sget-boolean v3, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v3, :cond_2

    .line 1048
    const-string v3, "imageediting"

    const-string v4, "AP doesn\'t apply listener or getImageEditDirectory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;->onActionItemClicked(Ljava/lang/String;ILandroid/graphics/Rect;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1062
    :catch_1
    move-exception v0

    .line 1063
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1064
    sget-boolean v3, Landroid/webkit/EditableWebViewImpl2;->HTC_DEBUG:Z

    if-eqz v3, :cond_2

    .line 1065
    const-string v3, "imageediting"

    const-string v4, "AP doesn\'t apply listener or onImageSelected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebViewProvider2$OnOverScrollListener;)V
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "threshold"    # I
    .param p3, "l"    # Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    .prologue
    .line 1322
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1324
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    .line 1325
    iput-object p3, p0, Landroid/webkit/EditableWebViewImpl2;->mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    .line 1326
    iput p2, p0, Landroid/webkit/EditableWebViewImpl2;->mOverScrollThreshold:I

    .line 1334
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnOverScrollListener:Landroid/webkit/EditableWebViewProvider2$OnOverScrollListener;

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public setCaretPos(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 1162
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->isNoteAP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZ)V

    .line 1168
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public setEditable(Z)V
    .locals 3
    .param p1, "editable"    # Z

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    .line 473
    iput-boolean p1, p0, Landroid/webkit/EditableWebViewImpl2;->m_bEnableEditable:Z

    .line 474
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl;->setEditable(Z)V

    .line 477
    const-string v1, "KENLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "Enable "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "spell check from EditableWebView"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebViewClassic;->setSpellCheckEnabled(ZI)V

    goto :goto_0

    .line 477
    :cond_2
    const-string v0, "Disable "

    goto :goto_1
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

    .prologue
    .line 1124
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2;->mOnContentChangedListener:Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

    .line 1126
    return-void
.end method

.method public setOnSelectionEditingListener(Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;)V
    .locals 0
    .param p1, "l"    # Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    .prologue
    .line 979
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2;->mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    .line 980
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1464
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .param p1, "willDraw"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .param p1, "fLower"    # F

    .prologue
    .line 426
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomLowerBound(F)V

    .line 427
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .param p1, "fUpper"    # F

    .prologue
    .line 421
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomUpperBound(F)V

    .line 422
    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 0

    .prologue
    .line 1470
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 687
    return-void
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 697
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 702
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 692
    return-void
.end method

.method public transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 4
    .param p1, "source"    # Landroid/graphics/Point;
    .param p2, "viewToContent"    # Z

    .prologue
    .line 1143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1144
    .local v0, "target":Landroid/graphics/Point;
    if-eqz p2, :cond_0

    .line 1145
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1150
    :goto_0
    return-object v0

    .line 1147
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 6
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "viewToContent"    # Z

    .prologue
    .line 1130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1131
    .local v0, "target":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 1132
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1138
    :goto_0
    return-object v0

    .line 1135
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl2;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3
    .param p1, "pointer"    # I

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl2;->onEndSelect()V

    .line 1098
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl2;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1109
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnContentChangedListener:Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

    if-eqz v0, :cond_2

    .line 1110
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2;->mOnContentChangedListener:Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl2;->mEditableWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v0, v1, v2}, Landroid/webkit/EditableWebViewProvider2$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    .line 1111
    :cond_2
    return-void
.end method
