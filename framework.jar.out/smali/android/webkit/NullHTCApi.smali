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
    .line 14
    const-string v0, "NullHTCApi"

    sput-object v0, Landroid/webkit/NullHTCApi;->DEBUG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static dumpMessage(Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 30
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

    .line 31
    return-void
.end method

.method private static getCallingMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 26
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
    .line 18
    sget-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/webkit/NullHTCApi;

    invoke-direct {v0}, Landroid/webkit/NullHTCApi;-><init>()V

    sput-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    .line 21
    :cond_0
    sget-object v0, Landroid/webkit/NullHTCApi;->sInstance:Landroid/webkit/NullHTCApi;

    return-object v0
.end method


# virtual methods
.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public canParentInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public clearMobileProxySettings()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public doNotResetTextSelectionRectangle()V
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public enableImageCopyPaste(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 256
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 266
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public getHTML5VideoResource()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPureReaderContents(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 153
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 154
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
    .line 272
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUAProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUAStringModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebSelectionType()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public htcClearUndoRedoOperations()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public isEnableMyanmar3()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableQuickSelection()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isSlowNetwork()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl(ZLjava/lang/String;)V
    .locals 1
    .param p1, "shouldHideSip"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public makeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 314
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 315
    return-object p1
.end method

.method public onSelectTextEnd()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onSelectTextStart()V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public pauseFPDoPlay()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public replacePhoneNumberWithHyperlink()V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public restoreSelect()V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public resumeFPDoPlay()V
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public safeDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public saveHitTestImage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "toClipboard"    # Z

    .prologue
    .line 220
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveHitTestImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setClipboardListener(Landroid/webkit/sense/HtcWebViewProvider$ClipboardListener;)V
    .locals 1
    .param p1, "l"    # Landroid/webkit/sense/HtcWebViewProvider$ClipboardListener;

    .prologue
    .line 289
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setContentInvalidateAll()V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setEnableMyanmar3(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 118
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setEnableQuickSelection(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 44
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setImageSrc(ILjava/lang/String;)V
    .locals 1
    .param p1, "pointer"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setIsEnableGifAnimation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 71
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setMobileProxySettings(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 91
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setNativeOnTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 246
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setNetworkState(I)V
    .locals 1
    .param p1, "intState"    # I

    .prologue
    .line 128
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setParseTwiceEnabled(ZD)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "ratio"    # D

    .prologue
    .line 324
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public setProxyEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 76
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setSelectionHandlesVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 241
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setShouldShowSIPinDrawingMode(Z)V
    .locals 1
    .param p1, "shouldShow"    # Z

    .prologue
    .line 236
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setSlowNetwork(Z)V
    .locals 1
    .param p1, "slowNetwork"    # Z

    .prologue
    .line 204
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setUAProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "uaProfile"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setUAStringID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uaStringID"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setUAStringModel(Ljava/lang/String;)V
    .locals 1
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setWebSelectionType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 61
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setWifiProxyEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 81
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setWifiProxySettings(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 86
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .param p1, "fLower"    # F

    .prologue
    .line 143
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .param p1, "fUpper"    # F

    .prologue
    .line 138
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public shiftAfterZoom(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 199
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 319
    invoke-static {}, Landroid/webkit/NullHTCApi;->getCallingMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/NullHTCApi;->dumpMessage(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
