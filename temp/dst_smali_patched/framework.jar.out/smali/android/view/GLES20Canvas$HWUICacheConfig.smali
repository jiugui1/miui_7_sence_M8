.class Landroid/view/GLES20Canvas$HWUICacheConfig;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HWUICacheConfig"
.end annotation


# static fields
.field private static mIsNeedDeferredHWUICach:Z

.field private static mMaxCacheLayerSize:I

.field private static mMaxTextureCacheSize:I

.field private static mTextureSizeFlushRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x1800000

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    const/high16 v0, 0x1000000

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    const v0, 0x3f19999a    # 0.6f

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWUICache()V
    .locals 3

    .prologue
    sget-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    sget v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    sget v2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    # invokes: Landroid/view/GLES20Canvas;->nSetCacheConfig(IIF)V
    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->access$100(IIF)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    :cond_0
    return-void
.end method

.method public static setHWUICacheConfig(IIF)V
    .locals 1
    .param p0, "maxTextureCache"    # I
    .param p1, "maxLayerCache"    # I
    .param p2, "textureFlushRatio"    # F

    .prologue
    sput p0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    sput p1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    sput p2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    return-void
.end method
