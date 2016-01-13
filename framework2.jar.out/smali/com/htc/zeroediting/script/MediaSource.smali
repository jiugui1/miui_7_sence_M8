.class public Lcom/htc/zeroediting/script/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# static fields
.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SOURCE_IMAGE:I = 0x20

.field public static final TYPE_SOURCE_IMAGE_BURST:I = 0x24

.field public static final TYPE_SOURCE_IMAGE_LANDSCAPE:I = 0x21

.field public static final TYPE_SOURCE_IMAGE_PANAROMA:I = 0x25

.field public static final TYPE_SOURCE_IMAGE_PORTRAIT:I = 0x22

.field public static final TYPE_SOURCE_IMAGE_ZOE:I = 0x23

.field public static final TYPE_SOURCE_SLOW_MOTION:I = 0x42

.field public static final TYPE_SOURCE_VIDEO:I = 0x40

.field public static final TYPE_SOURCE_VIDEO_ZOE:I = 0x41


# instance fields
.field public mFinalType:I

.field public mImportance:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/zeroediting/script/MediaSource;->mImportance:I

    .line 18
    iput v0, p0, Lcom/htc/zeroediting/script/MediaSource;->mType:I

    .line 19
    iput v0, p0, Lcom/htc/zeroediting/script/MediaSource;->mFinalType:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/zeroediting/script/MediaSource;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/htc/zeroediting/script/MediaSource;

    invoke-direct {v0}, Lcom/htc/zeroediting/script/MediaSource;-><init>()V

    .line 23
    .local v0, "ret":Lcom/htc/zeroediting/script/MediaSource;
    iget v1, p0, Lcom/htc/zeroediting/script/MediaSource;->mImportance:I

    iput v1, v0, Lcom/htc/zeroediting/script/MediaSource;->mImportance:I

    .line 24
    iget v1, p0, Lcom/htc/zeroediting/script/MediaSource;->mType:I

    iput v1, v0, Lcom/htc/zeroediting/script/MediaSource;->mType:I

    .line 25
    iget v1, p0, Lcom/htc/zeroediting/script/MediaSource;->mFinalType:I

    iput v1, v0, Lcom/htc/zeroediting/script/MediaSource;->mFinalType:I

    .line 26
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/htc/zeroediting/script/MediaSource;->clone()Lcom/htc/zeroediting/script/MediaSource;

    move-result-object v0

    return-object v0
.end method
