.class public interface abstract Landroid/media/AudioManager$OnRccChangeListener;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRccChangeListener"
.end annotation


# virtual methods
.method public abstract onAllMetadataChange(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onArtworkChange(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onCurrentClientIdChange(IZ)V
.end method

.method public abstract onMetadataChange(Landroid/os/Bundle;)V
.end method

.method public abstract onPlaybackStateChange(ILjava/lang/String;)V
.end method

.method public abstract onTransportControlFlagsChange(I)V
.end method
