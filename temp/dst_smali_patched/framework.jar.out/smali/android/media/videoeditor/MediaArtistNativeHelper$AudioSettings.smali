.class public Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSettings"
.end annotation


# instance fields
.field public ExtendedFs:I

.field public Fs:I

.field public Id:Ljava/lang/String;

.field public bAudioEffect:Z

.field public bInDucking_enable:Z

.field public bRemoveOriginal:Z

.field public beginCutTime:J

.field public channels:I

.field public ducking_lowVolume:I

.field public ducking_threshold:I

.field public endCutTime:J

.field public fileType:I

.field public loop:Z

.field public pFile:Ljava/lang/String;

.field public pcmFilePath:Ljava/lang/String;

.field public startMs:J

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bAudioEffect:Z

    return-void
.end method
