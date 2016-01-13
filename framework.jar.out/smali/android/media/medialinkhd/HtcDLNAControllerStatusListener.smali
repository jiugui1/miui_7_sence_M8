.class public Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAControllerStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public onControllerInfoupdated(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .param p1, "ctlInfo"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    .line 33
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "rendererId"    # Ljava/lang/String;
    .param p2, "errorId"    # I
    .param p3, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "details"    # Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    .prologue
    .line 46
    return-void
.end method

.method public onItemDetailsUpdated(Ljava/lang/String;JLcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "details"    # Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    .prologue
    .line 60
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 0
    .param p1, "playState"    # I

    .prologue
    .line 23
    return-void
.end method

.method public onPlaybackCompleted(I)V
    .locals 0
    .param p1, "playState"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "rendererId"    # Ljava/lang/String;
    .param p2, "responseId"    # I
    .param p3, "responseReason"    # Ljava/lang/String;

    .prologue
    .line 96
    return-void
.end method

.method public onUpdatePosition(J)V
    .locals 0
    .param p1, "position"    # J

    .prologue
    .line 110
    return-void
.end method
