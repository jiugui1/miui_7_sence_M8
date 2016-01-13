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

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1295
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1300
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1310
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1316
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1320
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1327
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1338
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    .line 1279
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1279
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    .line 1279
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1302(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1279
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .prologue
    .line 1279
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1279
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1279
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1399
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1432
    iget-wide v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1453
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 1586
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1587
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 1621
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1622
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCurContentID"    # Ljava/lang/String;

    .prologue
    .line 1563
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1564
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1655
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1656
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1410
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1411
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .param p1, "index"    # J

    .prologue
    .line 1421
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1422
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1475
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1476
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1389
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1390
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1464
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1465
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rendererName"    # Ljava/lang/String;

    .prologue
    .line 1542
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1543
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 1497
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1498
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .param p1, "shuffle"    # Z

    .prologue
    .line 1486
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1487
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 1666
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1667
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1644
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1645
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .param p1, "total"    # J

    .prologue
    .line 1443
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1444
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 1509
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1510
    return-void
.end method
