.class public Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAServerStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "lastIndex"    # J

    .prologue
    .line 83
    return-void
.end method

.method public onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "lastIndex"    # J
    .param p7, "isComplete"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "containerID"    # Ljava/lang/String;
    .param p3, "startIndex"    # J
    .param p5, "errorID"    # I
    .param p6, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public onContentUpdated(Ljava/lang/String;J)V
    .locals 0
    .param p1, "containerID"    # Ljava/lang/String;
    .param p2, "startIndex"    # J

    .prologue
    .line 127
    return-void
.end method

.method public onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public onItemDetailsUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "contentID"    # Ljava/lang/String;
    .param p3, "details"    # Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    .prologue
    .line 167
    return-void
.end method

.method public onServerAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "errorID"    # I
    .param p3, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V
    .locals 0
    .param p1, "serverList"    # [Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method
