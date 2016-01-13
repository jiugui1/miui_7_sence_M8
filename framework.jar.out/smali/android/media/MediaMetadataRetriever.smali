.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final HTC_METADATA_KEY_VIDEO_SLOW_MOTION:I = 0xc9

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUDIO_NUMBER_OF_CHANNELS:I = 0x65

.field public static final METADATA_KEY_AUDIO_SAMPLE_RATE:I = 0x66

.field public static final METADATA_KEY_AUDIO_WAVE_CODEC:I = 0x67

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_BIT_RATE:I = 0x6a

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_FRAME_RATE:I = 0x6b

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_FORMAT:I = 0x6c

.field public static final METADATA_KEY_VIDEO_FOURCC_CODEC:I = 0x68

.field public static final METADATA_KEY_VIDEO_FRAMES_PER_THOUSAND_SECONDS:I = 0x69

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# instance fields
.field private mBackupPath:Ljava/lang/String;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 56
    return-void
.end method

.method private native _getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method private native _release()V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setDataSourceFDAndHeaders(Ljava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method

.method private setDataSourceZoe(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    .line 168
    if-eqz p1, :cond_0

    .line 169
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 171
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, v0, p2, p3}, Landroid/media/MediaMetadataRetriever;->_setDataSourceFDAndHeaders(Ljava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 181
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 182
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "fileEx":Ljava/io/FileNotFoundException;
    :goto_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 176
    .end local v1    # "fileEx":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "ioEx":Ljava/io/IOException;
    :goto_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 184
    .end local v2    # "ioEx":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_0

    .line 176
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 174
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public native extractHtcMetadata(I)[B
.end method

.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 418
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackupPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbeddedPicture()[B
    .locals 1

    .prologue
    .line 384
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 370
    const-wide/16 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .prologue
    .line 323
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-le p3, v0, :cond_1

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->_release()V

    .line 406
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p2, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 278
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    const/4 v7, 0x0

    .line 246
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 248
    .local v8, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 252
    if-nez v7, :cond_6

    .line 253
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 271
    if-eqz v7, :cond_4

    .line 272
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 277
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 250
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    .line 271
    if-eqz v7, :cond_5

    .line 272
    :try_start_5
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 270
    :cond_5
    :goto_2
    throw v0

    .line 255
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    :try_start_6
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 256
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    .line 263
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    :goto_3
    if-eqz v7, :cond_2

    .line 272
    :try_start_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 274
    :catch_2
    move-exception v0

    goto :goto_0

    .line 265
    :cond_8
    :try_start_8
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 274
    .end local v1    # "descriptor":Ljava/io/FileDescriptor;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 219
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 220
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_0
    const/4 v8, 0x0

    .line 74
    .local v8, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    .line 76
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 78
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 80
    iput-object p1, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 89
    if-eqz v9, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 82
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 83
    .local v6, "fileEx":Ljava/io/FileNotFoundException;
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    .end local v6    # "fileEx":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 85
    .local v7, "ioEx":Ljava/io/IOException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    .end local v7    # "ioEx":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    goto :goto_0

    .line 84
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 82
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 109
    .local v2, "i":I
    const/4 v4, 0x0

    .line 110
    .local v4, "keys":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    new-array v4, v10, [Ljava/lang/String;

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 114
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v4, v2

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    .line 123
    .local v5, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 125
    .local v7, "u":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "scheme":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 127
    move-object v5, p1

    .line 132
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "u":Landroid/net/Uri;
    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    .line 133
    if-eqz p2, :cond_4

    .line 134
    const-string v10, "htc-user"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 135
    .local v8, "user":Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v10, "htc-zoe"

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    .line 137
    :try_start_0
    invoke-direct {p0, v5, v4, v9}, Landroid/media/MediaMetadataRetriever;->setDataSourceZoe(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    iget-object v10, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_4

    .line 156
    .end local v8    # "user":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 128
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "u":Landroid/net/Uri;
    :cond_3
    const-string v10, "file"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 140
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "u":Landroid/net/Uri;
    .restart local v8    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "user":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 147
    iget-object v10, p0, Landroid/media/MediaMetadataRetriever;->mBackupPath:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 152
    :cond_5
    if-nez p2, :cond_6

    .line 153
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 155
    :cond_6
    invoke-direct {p0, p1, v4, v9}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method public native setLocale(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method