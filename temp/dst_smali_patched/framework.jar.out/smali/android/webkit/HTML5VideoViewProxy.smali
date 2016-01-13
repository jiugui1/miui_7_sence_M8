.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final SET_VOLUME:I = 0x6c

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c

.field private static mCachedVolume:F


# instance fields
.field private mIsFullscreen:Z

.field public mIsUpdateVideoSize:Z

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mVideoLayerId:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;
    .param p2, "nativePtr"    # I

    .prologue
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsUpdateVideoSize:Z

    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/SurfaceTexture;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->updateVideoLayerSize()V

    return-void
.end method

.method static synthetic access$1002(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    sget v0, Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F

    return v0
.end method

.method static synthetic access$202(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    sput p0, Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F

    return p0
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "poster"    # Landroid/graphics/Bitmap;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .param p0, "webViewCore"    # Landroid/webkit/WebViewCore;
    .param p1, "nativePtr"    # I

    .prologue
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeGetMediaResourceUrl(I)Ljava/lang/String;
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private static native nativeUpdateVideoLayerSize(I)V
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateVideoLayerSize()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy;->nativeUpdateVideoLayerSize(I)V

    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .param p1, "stillPlaying"    # Z

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .param p1, "layerId"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "videoLayerID"    # I

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHTML5VideoResource()[Ljava/lang/String;
    .locals 3

    .prologue
    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v2}, Landroid/webkit/HTML5VideoViewProxy;->nativeGetMediaResourceUrl(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "mediaUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "====="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "mediaUrls":[Ljava/lang/String;
    goto :goto_0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, "client":Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, "videoLayerID":I
    if-eqz v0, :cond_0

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v2, v5, p0, v0, v3}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "videoLayerID":I
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "url":Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .restart local v3    # "videoLayerID":I
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v3, v2, p0, v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "videoLayerID":I
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .local v1, "time":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v5, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .end local v1    # "time":Ljava/lang/Integer;
    :sswitch_3
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    :sswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    # setter for: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Z)Z

    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_2
    const-string v5, "HTML5VideoViewProxy"

    const-string v6, "HTML5VideoViewProxy onError"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->videoPlaySuspend()V

    goto :goto_0

    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    :sswitch_6
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    :sswitch_7
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto :goto_0

    :sswitch_8
    # invokes: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Z)V

    goto :goto_0

    :sswitch_9
    const/4 v5, 0x0

    # invokes: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Z)V

    goto :goto_0

    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .local v4, "vol":F
    invoke-static {v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "videoLayerID"    # I

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->videoPlaySuspend()V

    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_0
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->abandonAudioFocus()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    return-void
.end method
