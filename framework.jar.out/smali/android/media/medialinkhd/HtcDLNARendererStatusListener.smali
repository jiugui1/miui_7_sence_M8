.class public Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

.method public onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;
    .param p3, "rendererType"    # I

    .prologue
    .line 34
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public onRendererAdded(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 0
    .param p1, "rendererData"    # Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .prologue
    .line 60
    return-void
.end method

.method public onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;
    .param p3, "rendererType"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onRendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 0
    .param p1, "rendererList"    # [Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .prologue
    .line 106
    return-void
.end method

.method public onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "errorId"    # I
    .param p3, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method
