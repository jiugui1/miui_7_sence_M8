.class public Landroid/webkit/NullHTCApi;
.super Ljava/lang/Object;
.source "NullHTCApi.java"

# interfaces
.implements Landroid/webkit/HtcWebSettingsAPI;
.implements Landroid/webkit/HtcWebViewAPI;
.implements Landroid/webkit/sense/HtcWebViewProvider;


# static fields
.field private static DEBUG:Ljava/lang/String;

.field private static sInstance:Landroid/webkit/NullHTCApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "NullHTCApi"

    sput-object v0, Landroid/webkit/NullHTCApi;->DEBUG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpMessage(Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/webkit/NullHTCApi;->DEBUG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Null impl of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getCallingMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "ste":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method public static getNullHTCApi()Landroid/webkit/NullHTCApi;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/NullHTCApi;

    invoke-direct {v0}, Landroid/webkit/NullHTCApi;-><init>()V

    sput-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    :cond_0
    sget-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    return-object v0
.end method


# virtual methods
.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public canParentInterceptTouchEvent()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public clearMobileProxySettings()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public doNotResetTextSelectionRectangle()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public enableImageCopyPaste(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public getHTML5VideoResource()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPureReaderContents(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "isContentDim"    # Z
    .param p6, "bmp"    # Landroid/graphics/Bitmap;
    .param p7, "bgColor"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUAProfile()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUAStringModel()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebSelectionType()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public htcClearUndoRedoOperations()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public isEnableMyanmar3()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableQuickSelection()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSlowNetwork()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl(ZLjava/lang/String;)V
    .locals 1
    .param p1, "shouldHideSip"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public makeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-object p1
.end method

.method public onSelectTextEnd()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onSelectTextStart()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public pauseFPDoPlay()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public replacePhoneNumberWithHyperlink()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public restoreSelect()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public resumeFPDoPlay()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public safeDestroy()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public saveHitTestImage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "toClipboard"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public saveHitTestImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setClipboardListener(Landroid/webkit/sense/HtcWebViewProvider$ClipboardListener;)V
    .locals 1
    .param p1, "l"    # Landroid/webkit/sense/HtcWebViewProvider$ClipboardListener;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setContentInvalidateAll()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableMyanmar3(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableQuickSelection(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSrc(ILjava/lang/String;)V
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setIsEnableGifAnimation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setMobileProxySettings(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setNativeOnTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkState(I)V
    .locals 1
    .param p1, "intState"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setParseTwiceEnabled(ZD)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "ratio"    # D

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setProxyEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setSelectionHandlesVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setShouldShowSIPinDrawingMode(Z)V
    .locals 1
    .param p1, "shouldShow"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setSlowNetwork(Z)V
    .locals 1
    .param p1, "slowNetwork"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setUAProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "uaProfile"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setUAStringID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uaStringID"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setUAStringModel(Ljava/lang/String;)V
    .locals 1
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setWebSelectionType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiProxyEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiProxySettings(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .param p1, "fLower"    # F

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .param p1, "fUpper"    # F

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public shiftAfterZoom(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
