.class public Landroid/media/videoeditor/MediaVideoItem;
.super Landroid/media/videoeditor/MediaItem;
.source "MediaVideoItem.java"


# instance fields
.field protected final mAspectRatio:I

.field protected final mAudioBitrate:I

.field protected final mAudioChannels:I

.field protected final mAudioSamplingFrequency:I

.field protected final mAudioType:I

.field protected mAudioWaveformFilename:Ljava/lang/String;

.field protected mBeginBoundaryTimeMs:J

.field protected final mDurationMs:J

.field protected mEndBoundaryTimeMs:J

.field protected final mFileType:I

.field protected final mFps:I

.field protected final mHeight:I

.field protected mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field protected mMuted:Z

.field protected final mVideoBitrate:I

.field protected mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

.field protected final mVideoLevel:I

.field protected final mVideoProfile:I

.field protected final mVideoRotationDegree:I

.field protected final mVideoType:I

.field protected mVolumePercentage:I

.field protected mWaveformData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/media/videoeditor/WaveformData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "renderingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V
    .locals 10
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "renderingMode"    # I
    .param p5, "beginMs"    # J
    .param p7, "endMs"    # J
    .param p9, "volumePercent"    # I
    .param p10, "muted"    # Z
    .param p11, "audioWaveformFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    instance-of v7, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 114
    check-cast v7, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v7}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v7

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 115
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1    # "editor":Landroid/media/videoeditor/VideoEditor;
    iput-object p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 120
    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v7, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 126
    .local v5, "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v6

    .line 127
    .local v6, "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v6, :cond_1

    .line 128
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can\'t get the video editor profile"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 121
    .end local v5    # "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .end local v6    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .restart local v6    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :cond_1
    iget v4, v6, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    .line 131
    .local v4, "maxInputWidth":I
    iget v3, v6, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    .line 132
    .local v3, "maxInputHeight":I
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    if-gt v7, v4, :cond_2

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    if-le v7, v3, :cond_3

    .line 134
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported import resolution. Supported maximum width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_3
    iget-boolean v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profileSupported:Z

    if-nez v7, :cond_4

    .line 142
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported video profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_4
    iget-boolean v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->levelSupported:Z

    if-nez v7, :cond_5

    .line 146
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported video level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 149
    :cond_5
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 156
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported Input File Type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :sswitch_0
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 166
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported Video Codec Format in Input File"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 169
    :pswitch_0
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 170
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 171
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v7, v8, v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    .line 173
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    .line 174
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    .line 175
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    .line 176
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoLevel:I

    .line 177
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v7, v7

    iput-wide v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    .line 178
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    .line 179
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    .line 180
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v7, v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    .line 181
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    .line 182
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    .line 183
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    .line 184
    iput-wide p5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 185
    const-wide/16 v7, -0x1

    cmp-long v7, p7, v7

    if-nez v7, :cond_6

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    move-wide/from16 p7, v0

    .end local p7    # "endMs":J
    :cond_6
    move-wide/from16 v0, p7

    iput-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 186
    move/from16 v0, p9

    iput v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 187
    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 188
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 189
    if-eqz p11, :cond_7

    .line 190
    new-instance v7, Ljava/lang/ref/SoftReference;

    new-instance v8, Landroid/media/videoeditor/WaveformData;

    move-object/from16 v0, p11

    invoke-direct {v8, v0}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 195
    :goto_0
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoRotation:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    .line 196
    return-void

    .line 193
    :cond_7
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "renderingMode"    # I
    .param p5, "beginMs"    # J
    .param p7, "endMs"    # J
    .param p9, "volumePercent"    # I
    .param p10, "muted"    # Z
    .param p11, "audioWaveformFilename"    # Ljava/lang/String;
    .param p12, "userObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p12, v7, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 203
    const-string v2, "MediaVideoItem"

    const-string v3, "[MTest09] MediaVideoItem New!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    instance-of v2, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 206
    check-cast v2, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v2}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 207
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1    # "editor":Landroid/media/videoeditor/VideoEditor;
    iput-object p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 212
    :cond_0
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaVideoItem;->getProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 218
    .local v11, "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v12

    .line 219
    .local v12, "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v12, :cond_1

    .line 220
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t get the video editor profile"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v11    # "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .end local v12    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :catch_0
    move-exception v8

    .line 214
    .local v8, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .restart local v12    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :cond_1
    iget v10, v12, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    .line 223
    .local v10, "maxInputWidth":I
    iget v9, v12, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    .line 224
    .local v9, "maxInputHeight":I
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    if-gt v2, v10, :cond_2

    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    if-le v2, v9, :cond_3

    .line 228
    :cond_2
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    if-gt v2, v10, :cond_4

    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    if-gt v2, v9, :cond_4

    .line 242
    :cond_3
    iget-boolean v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profileSupported:Z

    if-nez v2, :cond_5

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported video profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported import resolution. Supported maximum width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_5
    iget-boolean v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->levelSupported:Z

    if-nez v2, :cond_6

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported video level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_6
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported Input File Type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :sswitch_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 267
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported Video Codec Format in Input File"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :pswitch_0
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 271
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 272
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v4, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v2

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    .line 274
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v2

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    .line 275
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v2

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    .line 276
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    .line 277
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoLevel:I

    .line 278
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    .line 279
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    .line 280
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    .line 281
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v2, v2

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    .line 282
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v2

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    .line 283
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    .line 284
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    .line 285
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 286
    const-wide/16 v2, -0x1

    cmp-long v2, p7, v2

    if-nez v2, :cond_7

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    move-wide/from16 p7, v0

    .end local p7    # "endMs":J
    :cond_7
    move-wide/from16 v0, p7

    iput-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 287
    move/from16 v0, p9

    iput v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 288
    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 289
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 290
    if-eqz p11, :cond_8

    .line 291
    new-instance v2, Ljava/lang/ref/SoftReference;

    new-instance v3, Landroid/media/videoeditor/WaveformData;

    move-object/from16 v0, p11

    invoke-direct {v3, v0}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 296
    :goto_0
    iget v2, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoRotation:I

    iput v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    .line 297
    return-void

    .line 294
    :cond_8
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .locals 2
    .param p1, "effect"    # Landroid/media/videoeditor/Effect;

    .prologue
    .line 380
    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ken Burns effects cannot be applied to MediaVideoItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    invoke-super {p0, p1}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 384
    return-void
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 640
    const/4 v4, 0x0

    .line 641
    .local v4, "frameDuration":I
    const/4 v6, 0x0

    .line 642
    .local v6, "sampleCount":I
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, "projectPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 650
    const/4 v3, 0x0

    .line 652
    .local v3, "mAudioWaveFileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audioWaveformFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 658
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 660
    const/4 v4, 0x5

    .line 662
    const/16 v6, 0xa0

    .line 675
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 686
    iput-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 688
    .end local v3    # "mAudioWaveFileName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/media/videoeditor/WaveformData;

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 690
    return-void

    .line 663
    .restart local v3    # "mAudioWaveFileName":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 665
    const/16 v4, 0xa

    .line 667
    const/16 v6, 0x140

    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 670
    const/16 v4, 0x20

    .line 672
    const/16 v6, 0x400

    goto :goto_0
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    return v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    return v0
.end method

.method public getAudioWaveformFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 577
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    return-wide v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 566
    :cond_0
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 568
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    goto :goto_0
.end method

.method public getProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "timeMs"    # J

    .prologue
    .line 391
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time Exceeds duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Time duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 400
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_3
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_5

    .line 404
    :cond_4
    move v7, p1

    .line 405
    .local v7, "temp":I
    move p1, p2

    .line 406
    move p2, v7

    .line 409
    .end local v7    # "temp":I
    :cond_5
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J
    .param p7, "thumbnailCount"    # I
    .param p8, "indices"    # [I
    .param p9, "callback"    # Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    cmp-long v0, p3, p5

    if-lez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End time is greater than file duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    if-lez p2, :cond_2

    if-gtz p1, :cond_3

    .line 432
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_3
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_5

    .line 436
    :cond_4
    move v12, p1

    .line 437
    .local v12, "temp":I
    move p1, p2

    .line 438
    move p2, v12

    .line 441
    .end local v12    # "temp":I
    :cond_5
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget v11, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 444
    return-void
.end method

.method public getTimelineDuration()J
    .locals 4

    .prologue
    .line 585
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    return v0
.end method

.method public getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 3

    .prologue
    .line 855
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 856
    .local v0, "clipSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 859
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 862
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 863
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 864
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 865
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 866
    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    .line 869
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->previewWidth:I

    .line 870
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->previewHeight:I

    .line 872
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->exportWidth:I

    .line 873
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->exportHeight:I

    .line 876
    return-object v0
.end method

.method public getVideoLevel()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoLevel:I

    return v0
.end method

.method public getVideoProfile()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 737
    :cond_0
    :goto_0
    return-object v1

    .line 725
    :cond_1
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/WaveformData;

    .line 726
    .local v1, "waveformData":Landroid/media/videoeditor/WaveformData;
    if-nez v1, :cond_0

    .line 728
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 730
    :try_start_0
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    .end local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .restart local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 731
    .end local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    :cond_2
    move-object v1, v2

    .line 737
    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 553
    :cond_0
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 555
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 715
    :cond_0
    return-void
.end method

.method public invalidateTransitions(JJ)V
    .locals 9
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J

    .prologue
    .line 454
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_0

    .line 455
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 461
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 463
    .local v7, "transitionDurationMs":J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 468
    .end local v7    # "transitionDurationMs":J
    :cond_1
    return-void
.end method

.method public invalidateTransitions(JJJJ)V
    .locals 11
    .param p1, "oldStartTimeMs"    # J
    .param p3, "oldDurationMs"    # J
    .param p5, "newStartTimeMs"    # J
    .param p7, "newDurationMs"    # J

    .prologue
    .line 479
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 481
    .local v7, "transitionDurationMs":J
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 483
    .local v10, "oldOverlap":Z
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 493
    .local v9, "newOverlap":Z
    if-eq v9, v10, :cond_2

    .line 494
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 504
    .end local v7    # "transitionDurationMs":J
    .end local v9    # "newOverlap":Z
    .end local v10    # "oldOverlap":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 506
    .restart local v7    # "transitionDurationMs":J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 508
    .restart local v10    # "oldOverlap":Z
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 518
    .restart local v9    # "newOverlap":Z
    if-eq v9, v10, :cond_4

    .line 519
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 528
    .end local v7    # "transitionDurationMs":J
    .end local v9    # "newOverlap":Z
    .end local v10    # "oldOverlap":Z
    :cond_1
    :goto_1
    return-void

    .line 495
    .restart local v7    # "transitionDurationMs":J
    .restart local v9    # "newOverlap":Z
    .restart local v10    # "oldOverlap":Z
    :cond_2
    if-eqz v9, :cond_0

    .line 496
    cmp-long v0, p1, p5

    if-nez v0, :cond_3

    add-long v0, p1, p3

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    add-long v0, p5, p7

    cmp-long v0, v0, v7

    if-gtz v0, :cond_0

    .line 499
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    .line 520
    :cond_4
    if-eqz v9, :cond_1

    .line 521
    add-long v0, p1, p3

    add-long v2, p5, p7

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 524
    :cond_5
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_1
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    return v0
.end method

.method public renderFrame(Landroid/view/SurfaceHolder;J)J
    .locals 7
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "timeMs"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface Holder is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    iget-wide v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p2, v4

    if-gtz v0, :cond_1

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 609
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 613
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_3

    .line 614
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface could not be retrieved from Surface holder"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 618
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    iget v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    iget v6, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J

    move-result-wide v2

    .line 621
    :cond_4
    return-wide v2
.end method

.method public setExtractBoundaries(JJ)V
    .locals 6
    .param p1, "beginMs"    # J
    .param p3, "endMs"    # J

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 320
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    cmp-long v0, p1, p3

    if-ltz v0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_2
    cmp-long v0, p1, v4

    if-ltz v0, :cond_3

    cmp-long v0, p3, v2

    if-eqz v0, :cond_4

    cmp-long v0, p3, v4

    if-gez v0, :cond_4

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Start time or end time is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_4
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 338
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 344
    :cond_5
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 350
    :cond_6
    iput-wide p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 351
    iput-wide p3, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 352
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->adjustTransitions()V

    .line 353
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    .line 359
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 770
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 771
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 772
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 775
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 778
    :cond_1
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volumePercent"    # I

    .prologue
    .line 749
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_1
    iput p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 754
    return-void
.end method
