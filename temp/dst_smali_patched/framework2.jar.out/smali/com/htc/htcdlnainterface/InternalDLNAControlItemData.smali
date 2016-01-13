.class public Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;
.super Ljava/lang/Object;
.source "InternalDLNAControlItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private curContentID:Ljava/lang/String;

.field private currentIndex:J

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fDuration:J

.field private fileSize:J

.field private rendererID:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    return-wide v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    return-wide v0
.end method

.method public getRendererID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentAlbum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentArtist"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTitle"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "curContentID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0
    .param p1, "currentIndex"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadStoreAlbumArtPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .param p1, "fileSize"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    return-void
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .param p1, "rendererID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
