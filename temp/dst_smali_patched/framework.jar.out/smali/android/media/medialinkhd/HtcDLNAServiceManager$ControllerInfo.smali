.class public final Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private curContentID:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mIndex:J

.field private mMute:Z

.field private mPlayState:I

.field private mPosition:I

.field private mRendererId:Ljava/lang/String;

.field private mRendererName:Ljava/lang/String;

.field private mRepeat:I

.field private mShuffle:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotal:J

.field private mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1302(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCurContentID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .param p1, "index"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rendererName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .param p1, "shuffle"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .param p1, "total"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return-void
.end method
