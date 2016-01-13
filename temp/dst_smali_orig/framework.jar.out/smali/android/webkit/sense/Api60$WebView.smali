.class public interface abstract Landroid/webkit/sense/Api60$WebView;
.super Ljava/lang/Object;
.source "Api60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/sense/Api60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebView"
.end annotation


# virtual methods
.method public abstract SetOwnerActivityContext(Landroid/content/Context;)V
.end method

.method public abstract doNotResetTextSelectionRectangle()V
.end method

.method public abstract getPureReaderContents(Landroid/os/Message;)V
.end method

.method public abstract getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public abstract insertHtmlToTheEnd(Ljava/lang/String;)V
.end method

.method public abstract isSelectingText()Z
.end method

.method public abstract isSlowNetwork()Z
.end method

.method public abstract loadUrl(ZLjava/lang/String;)V
.end method

.method public abstract onSelectTextEnd()V
.end method

.method public abstract onSelectTextStart()V
.end method

.method public abstract pauseFPDoPlay()V
.end method

.method public abstract restoreSelect()V
.end method

.method public abstract resumeFPDoPlay()V
.end method

.method public abstract safeDestroy()V
.end method

.method public abstract saveHitTestImage(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract saveHitTestImage(Ljava/lang/String;)V
.end method

.method public abstract setClipboardListener(Landroid/webkit/sense/HtcWebViewProvider$ClipboardListener;)V
.end method

.method public abstract setImageSrc(ILjava/lang/String;)V
.end method

.method public abstract setNativeOnTrimMemory(I)V
.end method

.method public abstract setPureZoomMode(Z)V
.end method

.method public abstract setSlowNetwork(Z)V
.end method

.method public abstract setZoomLowerBound(F)V
.end method

.method public abstract setZoomUpperBound(F)V
.end method

.method public abstract shiftAfterZoom(II)V
.end method
