.class public Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;
.super Ljava/lang/Object;
.source "InternalDLNAPushMediaInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadedSize:J

.field private mediaFilePath:Ljava/lang/String;

.field private metaDataFilePath:Ljava/lang/String;

.field private thumbFilePath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J

    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J
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

.method public getDownloadedSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J

    return-wide v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    return-wide v0
.end method

.method public setDownloadedSize(J)V
    .locals 0
    .param p1, "downloadedSize"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J

    return-void
.end method

.method public setMediaFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaFilePath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    return-void
.end method

.method public setMetaDataFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "metaDataFilePath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    return-void
.end method

.method public setThumbFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbFilePath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 0
    .param p1, "totalFileSize"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->totalFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->downloadedSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
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
