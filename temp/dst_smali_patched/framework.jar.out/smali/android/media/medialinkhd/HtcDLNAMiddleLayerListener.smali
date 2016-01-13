.class Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
.super Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAMiddleLayerListener "


# instance fields
.field private mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

.field private mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

.field private mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    return-void
.end method

.method private printDLNAControlItemDataLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
    .locals 4
    .param p1, "info"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p2, "itemData"    # Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;

    .prologue
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], ------------------ updateControlItemInfo -------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo]  album art path        = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printDLNAControllerStatusLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
    .locals 4
    .param p1, "info"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p2, "status"    # Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    .prologue
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], ------------------ updateControllerStatus -------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "lastIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 8
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "lastIndex"    # J
    .param p7, "isComplete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 7
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "errorID"    # I
    .param p6, "errorReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 2
    .param p1, "containerID"    # Ljava/lang/String;
    .param p2, "startIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentUpdated(Ljava/lang/String;J)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "errorID"    # I
    .param p3, "errorReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "resReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x135

    if-ne p2, v1, :cond_2

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :goto_1
    return-void

    :cond_2
    const/16 v1, -0x145

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_3

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The target renderer responses subscride OK, call HtcDLNARendererStatusListener.onConnected(), RendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RendererName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify user state change to DMR\'s state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    goto/16 :goto_1

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
    .locals 5
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "details"    # Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", details = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v1, "serverListener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    .end local v1    # "serverListener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDiscoverRendererListener()Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method public getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    return-object v0
.end method

.method public getHtcDLNARendererStatusListener()Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    return-object v0
.end method

.method public getHtcDLNAServerStatusListener()Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    return-object v0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 4
    .param p1, "rendererData"    # Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDMRMirrorOn(ILjava/lang/String;)V
    .locals 0
    .param p1, "ret"    # I
    .param p2, "rendererID"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onDTCPServiceEventNotify(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onPBReadByteNotify(JJI)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "start"    # J
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->onPBReadByteNotify(JJI)V

    return-void
.end method

.method public onStartReadingPCMData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rendererID"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onStopReadingPCMData(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "rendererID"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 5
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "totalCount"    # J
    .param p4, "currentIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4, p5}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    invoke-virtual {v0, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public rendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 4
    .param p1, "rendererData"    # Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_1

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 8
    .param p1, "rendererList"    # [Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v3, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v3, :cond_0

    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] onRendererListUpdateNotify"

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .local v4, "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] RendererDiscoverer found mirror renderer."

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    .end local v4    # "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    :cond_1
    return-void

    .restart local v4    # "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    :cond_2
    if-nez v3, :cond_3

    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    :cond_5
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "errorID"    # I
    .param p3, "errorReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_0

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] in"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] out"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverNmaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V
    .locals 10
    .param p1, "serverList"    # [Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v7, "HtcDLNAMiddleLayerListener "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v5, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v5, :cond_0

    const-string v7, "HtcDLNAMiddleLayerListener "

    const-string v8, "no listener"

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    array-length v7, p1

    new-array v1, v7, [Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    .local v1, "dLNAServerDataList":[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    const/4 v3, 0x0

    .local v3, "index":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .local v6, "server":Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    const-string v7, "HtcDLNAMiddleLayerListener "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] server found = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v7, "HtcDLNAMiddleLayerListener "

    const-string v8, "no listener"

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    array-length v7, p1

    if-ge v3, v7, :cond_2

    aput-object v6, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v6    # "server":Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    :cond_3
    invoke-virtual {v5, v1}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "arr$":[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .end local v1    # "dLNAServerDataList":[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .end local v2    # "i$":I
    .end local v3    # "index":I
    .end local v4    # "len$":I
    .end local v5    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "errorID"    # I
    .param p3, "errorReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDiscoverRendererListener(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 0
    .param p1, "htcDLNARendererDiscoverListener"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-void
.end method

.method public setHtcDLNAControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)V
    .locals 0
    .param p1, "htcDLNAControllerStatusListener"    # Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    return-void
.end method

.method public setHtcDLNARendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)V
    .locals 0
    .param p1, "htcDLNARendererStatusListener"    # Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    return-void
.end method

.method public setHtcDLNAServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 0
    .param p1, "htcDLNAServerStatusListener"    # Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
    .locals 8
    .param p1, "itemData"    # Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    .local v2, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v2, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControlItemDataLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setAlbum(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setArtist(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    :cond_1
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurrentIndex()J

    move-result-wide v0

    .local v0, "index":J
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getIndex()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v3, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_6
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "currentIndex"    # J
    .param p4, "thumbnailPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
    .locals 10
    .param p1, "status"    # Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateControllerStatus] state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControllerStatusLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getMute()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setMute(Z)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getShuffle()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setShuffle(Z)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getRepeatState()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRepeat(I)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getVolumeValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setVolume(I)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v2

    if-eq v2, v7, :cond_4

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :cond_3
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] InternalDLNAControllerStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2, v7, v6, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .restart local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_5

    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus][onPlaybackCompleted] State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    :cond_5
    monitor-exit p0

    goto :goto_1

    .end local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "currentIndex"    # J
    .param p4, "albumArtPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumArtPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
