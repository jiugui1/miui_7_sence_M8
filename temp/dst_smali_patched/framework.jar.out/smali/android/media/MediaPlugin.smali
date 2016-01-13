.class Landroid/media/MediaPlugin;
.super Ljava/lang/Object;
.source "MediaPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlugin$OnEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlugin"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    return-void
.end method

.method public handleOnError(II)V
    .locals 0
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    return-void
.end method

.method public handleOnInfo(II)V
    .locals 0
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    return-void
.end method

.method public handleOnPlayComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleOnPrepared()V
    .locals 0

    .prologue
    return-void
.end method

.method public handlePause()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleRelease()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleReset()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleSeekComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleSeekTo(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    return-void
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public handleSetLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .prologue
    return-void
.end method

.method public handleSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    return-void
.end method

.method public handleStart()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleStop()V
    .locals 0

    .prologue
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlugin$OnEventListener;

    .prologue
    return-void
.end method
