.class public Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcTvDisplayListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMRReadyToPlay(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "rendererID"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;
    .param p3, "filterType"    # I

    .prologue
    return-void
.end method

.method public onMirrorModeStateChanged(I)V
    .locals 0
    .param p1, "mirrorModeState"    # I

    .prologue
    return-void
.end method

.method public onNoDMRToPlay()V
    .locals 0

    .prologue
    return-void
.end method

.method public onNoReadyDongle()V
    .locals 0

    .prologue
    return-void
.end method

.method public onNoTvToPlay()V
    .locals 0

    .prologue
    return-void
.end method

.method public onReadyDongleFound()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTvOff()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTvOn()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTvReadyToPlay()V
    .locals 0

    .prologue
    return-void
.end method
