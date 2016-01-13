.class Landroid/webkit/HTCWebCoreImpl;
.super Ljava/lang/Object;
.source "HTCWebCoreImpl.java"

# interfaces
.implements Landroid/webkit/HTCWebCoreProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTCWebCoreImpl$PositionRect;,
        Landroid/webkit/HTCWebCoreImpl$SelectionType;,
        Landroid/webkit/HTCWebCoreImpl$EditEventHub;
    }
.end annotation


# static fields
.field private static final HTC_DEBUG:Z

.field static suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

.field private static updateBodyNode:Z


# instance fields
.field private bodyNodePtr:I

.field private bodyNodeRect:Landroid/graphics/Rect;

.field private ignorePictureAfterFirstLayout:Z

.field private imageHTML:Ljava/lang/String;

.field private mAnchorSpanCallback:Landroid/os/Message;

.field private mClipboard:Landroid/content/ClipboardManager;

.field private mCopiedStyleText:Ljava/lang/String;

.field private mCoreNativeClass:I

.field mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

.field private mNativeClass:I

.field private mSkipClipboardChang:Z

.field private mWebCore:Landroid/webkit/WebViewCore;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/HTCWebCoreImpl;->HTC_DEBUG:Z

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    .line 411
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    sput-object v0, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 2
    .param p1, "webcore"    # Landroid/webkit/WebViewCore;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    .line 117
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 410
    new-instance v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-direct {v0, p0}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;-><init>(Landroid/webkit/HTCWebCoreImpl;)V

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    .line 1593
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    .line 1594
    iput-boolean v1, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    .line 1666
    iput-boolean v1, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    .line 66
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    .line 67
    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCWebCoreImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlToTheEnd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetEditable(IZ)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetHtcHtmlEditing(IZ)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTCWebCoreImpl;ILandroid/graphics/Rect;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetVSbound(ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeShouldPaintingCaret(IZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTCWebCoreImpl;ILandroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeContentInvalidate(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeInsert(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeComposing(IILjava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTCWebCoreImpl;IIIIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Landroid/webkit/HTCWebCoreImpl;->nativeDeleteSurrounding(IIIIII)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/HTCWebCoreImpl;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeFinishComposing(II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/HTCWebCoreImpl;II)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeFindContinuousBRFromEnd(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlString(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtml(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertImage(ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeInformColorChanged(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativePasteWithStyle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2502(Landroid/webkit/HTCWebCoreImpl;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertAnchorSpan(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeCancelAnchorSpan(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleBold(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeModifySelection(IZ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleUnderline(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleItalic(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleStrikethrough(I)V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignCenter(I)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignJustified(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignLeft(I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignRight(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetForeColor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/HTCWebCoreImpl;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetFontSize(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HTCWebCoreImpl;IIIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeDoWordSelection(IIIZ)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/HTCWebCoreImpl;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeMarkMisspelling(IIIIZ)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeCheckCurrentSpell(I)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetSpellCheck(IZ)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/HTCWebCoreImpl;ILjava/util/ArrayList;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetPureReaderContents(ILjava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/HTCWebCoreImpl;->nativePauseFPDoPlay()V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/HTCWebCoreImpl;->nativeResumeFPDoPlay()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/HTCWebCoreImpl;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeUpdateTextSelection(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/HTCWebCoreImpl;III)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSetSeletionTypeAndFlag(III)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/HTCWebCoreImpl;IIIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeDoSelection(IIIZ)V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkit/HTCWebCoreImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0
.end method

.method static synthetic access$5102(Landroid/webkit/HTCWebCoreImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return p1
.end method

.method static synthetic access$5200(Landroid/webkit/HTCWebCoreImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Landroid/webkit/HTCWebCoreImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Landroid/webkit/HTCWebCoreImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mNativeClass:I

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/HTCWebCoreImpl;III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSelectImageHTMLAt(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSaveHitTestImage(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativehtcClearUndoRedoOperations(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTCWebCoreImpl;IIIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTCWebCoreImpl;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method private doAnchorSpanCallBack(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 345
    const-string v0, "KENLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback => [HTCWebCore.java] doAnchorSpanCallBack :: R = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 351
    :cond_0
    return-void
.end method

.method public static fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .param p0, "webViewCore"    # Landroid/webkit/WebViewCore;

    .prologue
    .line 61
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getHtcWebCoreProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/HTCWebCoreImpl;

    goto :goto_0
.end method

.method static isNeedGetBodyNode()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    return v0
.end method

.method private native nativeAlignCenter(I)V
.end method

.method private native nativeAlignJustified(I)V
.end method

.method private native nativeAlignLeft(I)V
.end method

.method private native nativeAlignRight(I)V
.end method

.method private native nativeCancelAnchorSpan(I)V
.end method

.method private native nativeCheckCurrentSpell(I)V
.end method

.method private native nativeComposing(IILjava/lang/String;[I)V
.end method

.method private native nativeContentInvalidate(ILandroid/graphics/Rect;)V
.end method

.method private native nativeCopy(I)V
.end method

.method private native nativeCut(I)V
.end method

.method private native nativeDeleteSurrounding(IIIIII)V
.end method

.method private native nativeDoSelection(IIIZ)V
.end method

.method private native nativeDoSelectionByIndex(IIIII)V
.end method

.method private native nativeDoWordSelection(IIIZ)V
.end method

.method private native nativeEnableGifAnimation(IZ)V
.end method

.method private native nativeExportHtml(ILjava/lang/String;)Z
.end method

.method private native nativeFindContinuousBRFromEnd(II)I
.end method

.method private native nativeFindNextTableNode(IIZ)I
.end method

.method private native nativeFindNextTextNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeFindParagraphBound(IIIZLandroid/graphics/Rect;)I
.end method

.method private native nativeFindParagraphBoundByNode(IIZLandroid/graphics/Rect;)V
.end method

.method private native nativeFindTextBound(IIILandroid/webkit/SelectionUnitInfo;Z)I
.end method

.method private native nativeFinishComposing(II)V
.end method

.method private native nativeForceStopGifAnimation(IZ)V
.end method

.method private native nativeGetBodyNodeImpl(IILandroid/graphics/Rect;)I
.end method

.method private native nativeGetCharRect(IIILandroid/graphics/Rect;)Z
.end method

.method private native nativeGetCopiedPlainText(I)Ljava/lang/String;
.end method

.method private native nativeGetCopiedStyleText(I)Ljava/lang/String;
.end method

.method private native nativeGetCursorPos(IIILandroid/graphics/Rect;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetCursorWordRect(ILandroid/graphics/Rect;)V
.end method

.method private native nativeGetFontPixelSizeOfTextNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetGDInputBoxRect(ILandroid/graphics/Rect;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetHREF(II)Ljava/lang/String;
.end method

.method private native nativeGetHeaderRect(ILandroid/graphics/Rect;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetHtmlString(I)Ljava/lang/String;
.end method

.method private native nativeGetImageAttr(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetMaxCPUFreq(I)J
.end method

.method private native nativeGetNodeRect(IIZI)Landroid/graphics/Rect;
.end method

.method private native nativeGetPureReaderContents(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method private native nativeGetRectOf(ILandroid/graphics/Rect;I)V
.end method

.method private native nativeGetRssFeed(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetScopeNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetSurfaceViewBitmap(ILandroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private native nativeGetTextBetween(IIIII)Ljava/lang/String;
.end method

.method private native nativeGetVSbound(ILandroid/graphics/Rect;)I
.end method

.method private native nativeGetWordRange(IIILandroid/graphics/Point;)V
.end method

.method private native nativeHasRssFeed(I)Z
.end method

.method private native nativeInformColorChanged(I)V
.end method

.method private native nativeInsert(IILjava/lang/String;)V
.end method

.method private native nativeInsertAnchorSpan(ILjava/lang/String;)V
.end method

.method private native nativeInsertHtml(ILjava/lang/String;)Z
.end method

.method private native nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z
.end method

.method private native nativeInsertHtmlString(ILjava/lang/String;)Z
.end method

.method private native nativeInsertHtmlToTheEnd(ILjava/lang/String;)V
.end method

.method private native nativeInsertImage(ILjava/lang/String;II)V
.end method

.method private native nativeIsDocumentParsing(I)Z
.end method

.method private native nativeIsSupportGifAnimUISetting(I)Z
.end method

.method private native nativeIsTextNode(III)I
.end method

.method private native nativeMarkMisspelling(IIIIZ)V
.end method

.method private native nativeModifySelection(IZ)V
.end method

.method private native nativePastePlainText(ILjava/lang/String;)V
.end method

.method private native nativePasteWithStyle(ILjava/lang/String;)V
.end method

.method private native nativePauseFPDoPlay()V
.end method

.method private native nativeResumeFPDoPlay()V
.end method

.method private native nativeSaveHitTestImage(IILjava/lang/String;)Z
.end method

.method private native nativeSaveImage(IIILjava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectImageHTMLAt(III)Ljava/lang/String;
.end method

.method private native nativeSelectParagraphText(IIILandroid/graphics/Rect;)Ljava/lang/String;
.end method

.method private native nativeSetBackColor(ILjava/lang/String;)V
.end method

.method private native nativeSetEditable(IZ)V
.end method

.method private native nativeSetFontSize(II)V
.end method

.method private native nativeSetForeColor(ILjava/lang/String;)V
.end method

.method private native nativeSetHtcHtmlEditing(IZ)V
.end method

.method private native nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeSetSeletionTypeAndFlag(III)V
.end method

.method private native nativeSetSkiaFontCacheSize(IJ)V
.end method

.method private native nativeSetSpellCheck(IZ)V
.end method

.method private native nativeShouldPaintingCaret(IZ)V
.end method

.method private native nativeSmartTouchUp(III)I
.end method

.method private native nativeToggleBold(I)V
.end method

.method private native nativeToggleItalic(I)V
.end method

.method private native nativeToggleStrikethrough(I)V
.end method

.method private native nativeToggleUnderline(I)V
.end method

.method private native nativeUpdateTextSelection(IZ)I
.end method

.method private native nativehtcClearUndoRedoOperations(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeisImageNode(II)Z
.end method

.method private native nativeisTextNode(II)Z
.end method


# virtual methods
.method public composingText(ILjava/lang/String;)V
    .locals 1
    .param p1, "pnode"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/HTCWebCoreImpl;->composingText(ILjava/lang/String;I)V

    .line 1338
    return-void
.end method

.method public composingText(ILjava/lang/String;I)V
    .locals 2
    .param p1, "pnode"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "c"    # I

    .prologue
    .line 1341
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1342
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x1f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1343
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1344
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1345
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1346
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1347
    return-void
.end method

.method public deleteSurroundingText(IIIII)V
    .locals 3
    .param p1, "pnode"    # I
    .param p2, "leftStart"    # I
    .param p3, "leftEnd"    # I
    .param p4, "rightStart"    # I
    .param p5, "rightEnd"    # I

    .prologue
    .line 1351
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1352
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x1f7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1353
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1354
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1355
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1356
    return-void
.end method

.method doBatchSpellCheck([Ljava/lang/String;[I[I[I)V
    .locals 0
    .param p1, "words"    # [Ljava/lang/String;
    .param p2, "nodes"    # [I
    .param p3, "startIndexs"    # [I
    .param p4, "endIndexs"    # [I

    .prologue
    .line 1695
    return-void
.end method

.method doSelection(IIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extent"    # Z

    .prologue
    .line 1378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZZ)V

    .line 1379
    return-void
.end method

.method doSelection(IIZZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extent"    # Z
    .param p4, "wordBase"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1389
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1390
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x213

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1391
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1392
    if-eqz p4, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1393
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1394
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1395
    return-void

    :cond_0
    move v1, v3

    .line 1391
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1392
    goto :goto_1
.end method

.method doSelectionByIndex(IIII)V
    .locals 3
    .param p1, "nodeStart"    # I
    .param p2, "start"    # I
    .param p3, "nodeEnd"    # I
    .param p4, "end"    # I

    .prologue
    .line 1398
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1399
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x214

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1400
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1401
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1402
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1403
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1404
    return-void
.end method

.method doSpellCheck(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "node"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "showSuggest"    # Z

    .prologue
    .line 1687
    return-void
.end method

.method public drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "animatingZoom"    # Z
    .param p4, "animatingScroll"    # Z

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method public dumpHeap()Z
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x0

    return v0
.end method

.method public enableGifAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1918
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeEnableGifAnimation(IZ)V

    .line 1919
    return-void
.end method

.method public findNextTableNode(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 1881
    invoke-virtual {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(I)I

    move-result v0

    return v0
.end method

.method public findNextTableNode(IZ)I
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "traverseNestedTables"    # Z

    .prologue
    .line 1875
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(IIZ)I

    move-result v0

    return v0
.end method

.method public findNextTextNode(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 1863
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTextNode(II)I

    move-result v0

    return v0
.end method

.method public findParagraphBound(IIZLandroid/graphics/Rect;)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "onlyTextNode"    # Z
    .param p4, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1825
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeFindParagraphBound(IIIZLandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public findParagraphBoundByNode(IZLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "node"    # I
    .param p2, "onlyTextNode"    # Z
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1813
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeFindParagraphBoundByNode(IIZLandroid/graphics/Rect;)V

    .line 1814
    return-void
.end method

.method public findTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "o"    # Landroid/webkit/SelectionUnitInfo;
    .param p4, "isWordBased"    # Z

    .prologue
    .line 1839
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeFindTextBound(IIILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v0

    return v0
.end method

.method public forceStopGifAnimation(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    .line 1924
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeForceStopGifAnimation(IZ)V

    .line 1925
    return-void
.end method

.method public getBodyNode(ILandroid/graphics/Rect;)I
    .locals 6
    .param p1, "pointer"    # I
    .param p2, "contentBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 1734
    if-nez p1, :cond_0

    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    if-nez v0, :cond_3

    .line 1735
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 1736
    const-string v0, "HTCWebCore"

    const-string v1, "getBodyNode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 1740
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 1741
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x277

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    .line 1742
    :goto_0
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    if-nez v0, :cond_6

    .line 1743
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v0

    .line 1752
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1754
    iput v5, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 1758
    :cond_3
    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 1759
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    .line 1772
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 1773
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1776
    :cond_5
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0

    .line 1745
    :cond_6
    :try_start_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 1746
    const-string v0, "HTCWebCore"

    const-string v2, "getBodyNode end"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1752
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1767
    :cond_7
    if-eqz p1, :cond_4

    .line 1768
    sput-boolean v5, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    goto :goto_2
.end method

.method public getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    .line 158
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 159
    .local v0, "result":Landroid/webkit/CacheManager$CacheResult;
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    .line 160
    return-object v0
.end method

.method public getCharRect(IILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "index"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1845
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetCharRect(IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getCopiedStyleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method public getCursorPos(IILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "index"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1851
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetCursorPos(IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getFontPixelSizeOfTextNode(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 1869
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetFontPixelSizeOfTextNode(II)I

    move-result v0

    return v0
.end method

.method public getFontPixelSizeOfTextNodes(Landroid/os/Message;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 278
    return-void
.end method

.method public getHREF(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodePtr"    # I

    .prologue
    .line 1961
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHREF(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageAttr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1936
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetImageAttr(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCPUFreq()J
    .locals 2

    .prologue
    .line 1906
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetMaxCPUFreq(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "pointer"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 299
    iget v8, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, p1, v9, v10}, Landroid/webkit/HTCWebCoreImpl;->nativeGetNodeRect(IIZI)Landroid/graphics/Rect;

    move-result-object v3

    .line 301
    .local v3, "nodeRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 302
    :cond_0
    const/4 v7, 0x0

    .line 340
    :goto_0
    return-object v7

    .line 304
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 305
    .local v4, "ratio":F
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 306
    int-to-float v8, p2

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 307
    .local v6, "ratioW":F
    int-to-float v8, p3

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 308
    .local v5, "ratioH":F
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 314
    .end local v5    # "ratioH":F
    .end local v6    # "ratioW":F
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 317
    .local v1, "clipF":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 318
    const/4 v7, 0x0

    goto :goto_0

    .line 310
    .end local v1    # "clipF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_1

    .line 320
    .restart local v1    # "clipF":Landroid/graphics/RectF;
    :cond_3
    const/4 v7, 0x0

    .line 322
    .local v7, "ret":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 323
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 324
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 327
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 328
    iget v8, v3, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v8, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v0}, Landroid/webkit/WebViewClassic;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v8, "HtcWebCore"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getNodeRect(IZI)Landroid/graphics/Rect;
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "absolute"    # Z
    .param p3, "defaultTextWidth"    # I

    .prologue
    .line 1729
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetNodeRect(IIZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1366
    .local v0, "ret":Landroid/graphics/Rect;
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v1, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetRectOf(ILandroid/graphics/Rect;I)V

    .line 1367
    return-object v0
.end method

.method public getRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1893
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetRssFeed(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getScopeNode(I)I
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1789
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetScopeNode(II)I

    move-result v0

    return v0
.end method

.method public getSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1912
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetSurfaceViewBitmap(ILandroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getTextBetween(IIII)Ljava/lang/String;
    .locals 6
    .param p1, "startNodePtr"    # I
    .param p2, "startIndx"    # I
    .param p3, "endNodePtr"    # I
    .param p4, "endNodeIndx"    # I

    .prologue
    .line 1900
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRssFeed()Z
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeHasRssFeed(I)Z

    move-result v0

    return v0
.end method

.method public htcClearUndoRedoOperations()V
    .locals 1

    .prologue
    .line 1943
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativehtcClearUndoRedoOperations(I)V

    .line 1944
    return-void
.end method

.method public insetText(ILjava/lang/String;)V
    .locals 2
    .param p1, "pnode"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1329
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1330
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1331
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1332
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1333
    return-void
.end method

.method public isDocumentParsing()Z
    .locals 1

    .prologue
    .line 1973
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeIsDocumentParsing(I)Z

    move-result v0

    return v0
.end method

.method public isIgnorePictureAfterFirstLayout()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    return v0
.end method

.method public isImageNode(I)Z
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1801
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeisImageNode(II)Z

    move-result v0

    return v0
.end method

.method public isSkipClipboardChang()Z
    .locals 1

    .prologue
    .line 1602
    iget-boolean v0, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    return v0
.end method

.method public isSupportGifAnimUISetting()Z
    .locals 1

    .prologue
    .line 1930
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeIsSupportGifAnimUISetting(I)Z

    move-result v0

    return v0
.end method

.method public isTextNode(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1857
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeIsTextNode(III)I

    move-result v0

    return v0
.end method

.method public isTextNode(I)Z
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1807
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeisTextNode(II)Z

    move-result v0

    return v0
.end method

.method public isThisWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    return v0
.end method

.method modifySelection(Z)V
    .locals 2
    .param p1, "willModifyStart"    # Z

    .prologue
    .line 1371
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1372
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x212

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1373
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1374
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1375
    return-void

    .line 1373
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method native nativeEnableTextReflowWithBreakWords(IZ)V
.end method

.method public nativeFindNextTableNode(I)I
    .locals 2
    .param p1, "pointer"    # I

    .prologue
    .line 288
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(IIZ)I

    move-result v0

    return v0
.end method

.method native nativeGetAllAnchorSpan(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeGetAnchorRect(ILandroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetAnchorSpanRect(ILandroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetBackColor(I)Ljava/lang/String;
.end method

.method public nativeGetBodyNode(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "contentBound"    # Landroid/graphics/Rect;

    .prologue
    .line 111
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0
.end method

.method native nativeGetBoldState(I)I
.end method

.method native nativeGetEmbedNodes(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetFontSize(I)I
.end method

.method native nativeGetForeColor(I)Ljava/lang/String;
.end method

.method native nativeGetHiddenEmbedNodes(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetHtml(IIIII)Ljava/lang/String;
.end method

.method native nativeGetIFrameNodes(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetItalicState(I)I
.end method

.method native nativeGetObjectNodes(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetStrikethroughState(I)I
.end method

.method native nativeGetTitleDescription(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetUnderlineState(I)I
.end method

.method native nativeGetVideoID(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeSetImageSrc(ILjava/lang/String;I)V
.end method

.method native nativegetImageNodeRect(II)Landroid/graphics/Rect;
.end method

.method rescanSpellings()V
    .locals 4

    .prologue
    const/16 v3, 0x233

    .line 1416
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1417
    .local v0, "m":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1419
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x232

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1420
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1421
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1422
    return-void
.end method

.method public saveImage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "getExtension"    # Z

    .prologue
    .line 1795
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeSaveImage(IIILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
    .locals 1
    .param p1, "startNodePtr"    # I
    .param p2, "endNodePtr"    # I
    .param p3, "scope"    # Landroid/graphics/Rect;

    .prologue
    .line 1832
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSelectParagraphText(IIILandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBodyNode(I)V
    .locals 2
    .param p1, "pointer"    # I

    .prologue
    .line 125
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBodyNodeImpl(IILandroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 126
    return-void
.end method

.method public setCopiedStyleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1596
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 2
    .param p1, "editable"    # Z

    .prologue
    .line 1320
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1321
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1322
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1323
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1324
    return-void

    .line 1322
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIgnorePictureAfterFirstLayout(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 1671
    iput-boolean p1, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    .line 1672
    return-void
.end method

.method public setImageAttr(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "width"    # Ljava/lang/String;
    .param p2, "height"    # Ljava/lang/String;
    .param p3, "pointer"    # I

    .prologue
    .line 1949
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1950
    return-void
.end method

.method public setInterruptDraw(Z)V
    .locals 0
    .param p1, "bSignal"    # Z

    .prologue
    .line 1719
    return-void
.end method

.method public setNativeClass(I)V
    .locals 1
    .param p1, "nativeClass"    # I

    .prologue
    const/4 v0, 0x0

    .line 71
    iput p1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    .line 72
    if-nez p1, :cond_0

    .line 73
    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    .line 74
    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    .line 76
    :cond_0
    return-void
.end method

.method public setSkiaFontCacheSize(J)V
    .locals 1
    .param p1, "lCacheSize_Byte"    # J

    .prologue
    .line 1819
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetSkiaFontCacheSize(IJ)V

    .line 1820
    return-void
.end method

.method public setSkipClipboardChang(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 1600
    iput-boolean p1, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    return-void
.end method

.method public smartTouchUp(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1783
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSmartTouchUp(III)I

    move-result v0

    return v0
.end method

.method transferMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->isEditMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleOtherMsg(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public trimMemory()V
    .locals 0

    .prologue
    .line 1968
    return-void
.end method
