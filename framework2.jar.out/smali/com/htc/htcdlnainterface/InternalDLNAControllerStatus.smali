.class public Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
.super Ljava/lang/Object;
.source "InternalDLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bMute:Z

.field private bShuffle:Z

.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private curContentID:Ljava/lang/String;

.field private curDMRContentTitle:Ljava/lang/String;

.field private curDMRPlayState:I

.field private currentIndex:J

.field private fDuration:J

.field private playState:I

.field private position:J

.field private rendererID:Ljava/lang/String;

.field private repeatState:I

.field private thumbnailPath:Ljava/lang/String;

.field private totalCount:J

.field private volumeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 470
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRPlayState()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    return v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    return-wide v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    return-wide v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    return-wide v0
.end method

.method public getVolumeValue()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    return v0
.end method

.method public isShuffle()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 527
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    .line 539
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    .line 540
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "aContentAlbum"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "aContentArtist"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "aContentTitle"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCurContentID"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setCurDMRContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCurDMRContentTitle"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setCurDMRPlayState(I)V
    .locals 0
    .param p1, "aCurDMRPlayState"    # I

    .prologue
    .line 410
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    .line 411
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0
    .param p1, "aCurrentIndex"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    .line 229
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "aDuration"    # J

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    .line 250
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    .line 351
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .param p1, "aPlayState"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    .line 290
    return-void
.end method

.method public setPosition(J)V
    .locals 0
    .param p1, "aPosition"    # J

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    .line 270
    return-void
.end method

.method public setRendererId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRendererId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRepeatState(I)V
    .locals 0
    .param p1, "aRepeatState"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    .line 331
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .param p1, "shuffle"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    .line 371
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "aThumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTotalCount(J)V
    .locals 0
    .param p1, "aTotalCount"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    .line 209
    return-void
.end method

.method public setVolumeValue(I)V
    .locals 0
    .param p1, "aVolumeValue"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    .line 310
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 501
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 502
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 504
    iget v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-boolean v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 508
    iget-boolean v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 509
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
