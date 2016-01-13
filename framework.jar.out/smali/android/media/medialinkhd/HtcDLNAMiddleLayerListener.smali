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

    .line 42
    invoke-direct {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 32
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 34
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 35
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 36
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 37
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 39
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private printDLNAControlItemDataLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
    .locals 4
    .param p1, "info"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p2, "itemData"    # Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;

    .prologue
    .line 511
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], ------------------ updateControlItemInfo -------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
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

    .line 513
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

    .line 514
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

    .line 515
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

    .line 516
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

    .line 517
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

    .line 518
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

    .line 519
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

    .line 520
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

    .line 521
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

    .line 522
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private printDLNAControllerStatusLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
    .locals 4
    .param p1, "info"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p2, "status"    # Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    .prologue
    .line 440
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], ------------------ updateControllerStatus -------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
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

    .line 442
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

    .line 443
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

    .line 444
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

    .line 445
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

    .line 446
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

    .line 447
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

    .line 448
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

    .line 449
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

    .line 450
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

    .line 451
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

    .line 452
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
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
    .line 696
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 698
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    monitor-exit p0

    .line 703
    return-void

    .line 702
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
    .line 740
    monitor-enter p0

    .line 741
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 742
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 744
    invoke-virtual/range {v0 .. v6}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 746
    :cond_0
    monitor-exit p0

    .line 747
    return-void

    .line 746
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
    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 757
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    .line 759
    invoke-virtual/range {v0 .. v7}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 761
    :cond_0
    monitor-exit p0

    .line 762
    return-void

    .line 761
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
    .line 770
    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 772
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 774
    invoke-virtual/range {v0 .. v6}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 776
    :cond_0
    monitor-exit p0

    .line 777
    return-void

    .line 776
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
    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 727
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    monitor-exit p0

    .line 732
    return-void

    .line 731
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
    .line 784
    monitor-enter p0

    .line 785
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 786
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onContentUpdated(Ljava/lang/String;J)V

    .line 790
    :cond_0
    monitor-exit p0

    .line 791
    return-void

    .line 790
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
    .line 557
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

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 563
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 567
    :cond_0
    monitor-exit p0

    .line 568
    return-void

    .line 567
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
    .line 578
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

    .line 581
    const/16 v1, -0x135

    if-ne p2, v1, :cond_2

    .line 602
    :cond_0
    :goto_0
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 604
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :goto_1
    return-void

    .line 585
    :cond_2
    const/16 v1, -0x145

    if-ne p2, v1, :cond_0

    .line 587
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 588
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_3

    .line 590
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
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

    .line 594
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

    .line 597
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

    .line 598
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

    .line 608
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
    .line 619
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

    .line 621
    monitor-enter p0

    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 623
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 625
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    .line 626
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    .line 629
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 630
    .local v1, "serverListener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V

    .line 634
    :cond_1
    monitor-exit p0

    .line 635
    return-void

    .line 634
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
    .line 53
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method public getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    return-object v0
.end method

.method public getHtcDLNARendererStatusListener()Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    return-object v0
.end method

.method public getHtcDLNAServerStatusListener()Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    .locals 1

    .prologue
    .line 89
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
    .line 799
    monitor-enter p0

    .line 800
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 801
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    monitor-exit p0

    .line 806
    return-void

    .line 805
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
    .line 665
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

    .line 668
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 670
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    monitor-exit p0

    .line 673
    return-void

    .line 672
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
    .line 831
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
    .line 856
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
    .line 849
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->onPBReadByteNotify(JJI)V

    .line 850
    return-void
.end method

.method public onStartReadingPCMData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rendererID"    # Ljava/lang/String;

    .prologue
    .line 837
    return-void
.end method

.method public onStopReadingPCMData(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "rendererID"    # Ljava/lang/String;

    .prologue
    .line 843
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
    .line 355
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

    .line 358
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 359
    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4, p5}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 360
    invoke-virtual {v0, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 363
    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 367
    :cond_0
    monitor-exit p0

    .line 368
    return-void

    .line 367
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
    .line 207
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

    .line 211
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
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

    .line 226
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 231
    :cond_0
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 233
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_1

    .line 235
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    monitor-exit p0

    goto :goto_0

    .line 254
    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 240
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

    .line 241
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 246
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 247
    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    .line 254
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
    .line 288
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

    .line 291
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 292
    .local v3, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v3, :cond_0

    .line 294
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] onRendererListUpdateNotify"

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3, p1}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    .line 299
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

    .line 301
    .local v4, "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
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

    .line 304
    monitor-enter p0

    .line 312
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

    .line 318
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] RendererDiscoverer found mirror renderer."

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    monitor-exit p0

    .line 345
    .end local v4    # "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    :cond_1
    return-void

    .line 323
    .restart local v4    # "renderer":Lcom/htc/htcdlnainterface/InternalDLNARendererData;
    :cond_2
    if-nez v3, :cond_3

    .line 325
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    monitor-exit p0

    .line 299
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
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

    .line 331
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 335
    :cond_4
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 336
    :cond_5
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    :cond_6
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V

    .line 343
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
    .line 266
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

    .line 269
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 272
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_0

    .line 274
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    monitor-exit p0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
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
    .line 681
    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 683
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;->onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    monitor-exit p0

    .line 687
    return-void

    .line 686
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
    .line 816
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] in"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 823
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] out"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    monitor-exit p0

    return-void

    .line 816
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
    .line 127
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

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 131
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 133
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-exit p0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
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
    .line 169
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

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 172
    .local v5, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v5, :cond_0

    .line 174
    const-string v7, "HtcDLNAMiddleLayerListener "

    const-string v8, "no listener"

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-exit p0

    .line 198
    :goto_0
    return-void

    .line 178
    :cond_0
    array-length v7, p1

    new-array v1, v7, [Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    .line 179
    .local v1, "dLNAServerDataList":[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    const/4 v3, 0x0

    .line 181
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

    .line 183
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

    .line 184
    if-nez v5, :cond_1

    .line 186
    const-string v7, "HtcDLNAMiddleLayerListener "

    const-string v8, "no listener"

    invoke-static {v7, v8}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_1
    array-length v7, p1

    if-ge v3, v7, :cond_2

    aput-object v6, v1, v3

    .line 191
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 195
    .end local v6    # "server":Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    :cond_3
    invoke-virtual {v5, v1}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V

    .line 196
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
    .line 148
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

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 152
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 154
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    monitor-exit p0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
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
    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 712
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServerStatusListener;->onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    monitor-exit p0

    .line 717
    return-void

    .line 716
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
    .line 62
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 63
    return-void
.end method

.method public setHtcDLNAControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)V
    .locals 0
    .param p1, "htcDLNAControllerStatusListener"    # Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 118
    return-void
.end method

.method public setHtcDLNARendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)V
    .locals 0
    .param p1, "htcDLNARendererStatusListener"    # Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/medialinkhd/HtcDLNARendererStatusListener;

    .line 81
    return-void
.end method

.method public setHtcDLNAServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 0
    .param p1, "htcDLNAServerStatusListener"    # Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/medialinkhd/HtcDLNAServerStatusListener;

    .line 99
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

    .line 463
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    .line 465
    .local v2, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v2, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControlItemDataLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V

    .line 467
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setAlbum(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setArtist(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTitle(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDate(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 472
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

    .line 473
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 476
    :cond_1
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 477
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 479
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurrentIndex()J

    move-result-wide v0

    .line 480
    .local v0, "index":J
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getIndex()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    .line 482
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 483
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 485
    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 486
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 488
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 490
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 493
    :cond_5
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 494
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 498
    .local v3, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_6

    .line 500
    invoke-virtual {v3, v2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 506
    :goto_0
    monitor-exit p0

    .line 507
    return-void

    .line 504
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

    .line 506
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
    .line 533
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

    .line 536
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 537
    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 540
    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 544
    :cond_0
    monitor-exit p0

    .line 545
    return-void

    .line 544
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

    .line 380
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

    .line 384
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 386
    .local v0, "info":Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControllerStatusLog(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V

    .line 392
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 394
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 395
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getMute()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setMute(Z)V

    .line 396
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getShuffle()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setShuffle(Z)V

    .line 397
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getRepeatState()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRepeat(I)V

    .line 398
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getVolumeValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setVolume(I)V

    .line 399
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 401
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 403
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

    .line 405
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 412
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 416
    .local v1, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 417
    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 421
    :goto_0
    monitor-exit p0

    .line 436
    :goto_1
    return-void

    .line 419
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

    .line 421
    .end local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 425
    :cond_4
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2, v7, v6, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 427
    monitor-enter p0

    .line 428
    :try_start_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 429
    .restart local v1    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_5

    .line 430
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

    .line 432
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    .line 434
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
    .line 645
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

    .line 648
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 649
    monitor-enter p0

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    .line 651
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 653
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 655
    :cond_0
    monitor-exit p0

    .line 656
    return-void

    .line 655
    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
