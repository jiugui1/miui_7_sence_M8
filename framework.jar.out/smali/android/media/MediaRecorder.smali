.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$AudioSourceEx;,
        Landroid/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private final TAG_UB:Ljava/lang/String;

.field private mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mHtcRecordSurface:Landroid/view/Surface;

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    .line 1226
    const-string v4, "HtcDeviceInfoManager"

    iput-object v4, p0, Landroid/media/MediaRecorder;->TAG_UB:Ljava/lang/String;

    .line 119
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_4

    .line 120
    new-instance v4, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v4, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 127
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 130
    invoke-static {}, Landroid/media/HtcApplicationHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_0
    iput-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    .line 139
    if-nez v3, :cond_1

    .line 140
    const-string v4, "MediaRecorder"

    const-string v5, "The packageName is Null, change to unknown packname."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v3, "unknown"

    .line 143
    :cond_1
    const-string v4, "MediaRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Package Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4, v3}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 153
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_2

    const-string v4, "Android_Multimedia"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 154
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "support_miit_request"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    const-string v4, "htc-param-check-permission=1"

    invoke-direct {p0, v4}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_3
    :goto_1
    return-void

    .line 121
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 122
    new-instance v4, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v4, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0

    .line 124
    :cond_5
    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0

    .line 156
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setHtcParameter(Ljava/lang/String;[BIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaRecorder;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 87
    iget v0, p0, Landroid/media/MediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0x8

    return v0
.end method

.method private native getFilePathFromFD(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private native native_reset()V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private notifySurfaceConnected(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1428
    const-string v0, "MediaRecorder"

    const-string v1, "notifySurfaceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iput-object p1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    .line 1430
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediarecorder_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1182
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediarecorder_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRecorder;

    .line 1183
    .local v1, "mr":Landroid/media/MediaRecorder;
    if-nez v1, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 1188
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native setHtcRecordSurface()V
.end method

.method private setMaxAllowFileSize(Ljava/lang/String;)V
    .locals 19
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1340
    const-string v14, "MediaRecorder"

    const-string v15, "setMaxAllowFileSize E"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v11, 0x0

    .line 1346
    .local v11, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1347
    .local v1, "ap":Landroid/app/Application;
    if-nez v1, :cond_1

    .line 1348
    const-string v14, "MediaRecorder"

    const-string v15, "no current AP"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    .end local v1    # "ap":Landroid/app/Application;
    :cond_0
    :goto_0
    return-void

    .line 1352
    .restart local v1    # "ap":Landroid/app/Application;
    :cond_1
    const-string v14, "storage"

    invoke-virtual {v1, v14}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    if-eqz v11, :cond_0

    .line 1361
    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1362
    .local v5, "list":[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_2

    .line 1363
    const-string v14, "MediaRecorder"

    const-string v15, "Failed to get storage volume list"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1353
    .end local v1    # "ap":Landroid/app/Application;
    .end local v5    # "list":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v7

    .line 1354
    .local v7, "rex":Ljava/lang/Exception;
    const-string v14, "MediaRecorder"

    const-string v15, "Failed to create StorageManager"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1367
    .end local v7    # "rex":Ljava/lang/Exception;
    .restart local v1    # "ap":Landroid/app/Application;
    .restart local v5    # "list":[Landroid/os/storage/StorageVolume;
    :cond_2
    array-length v4, v5

    .line 1369
    .local v4, "length":I
    const/4 v2, 0x0

    .line 1370
    .local v2, "found":Z
    const/4 v10, 0x0

    .line 1371
    .local v10, "sPath":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1372
    .local v13, "tmpStoragePath":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 1373
    .local v8, "sMaxFileSize":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 1374
    aget-object v12, v5, v3

    .line 1375
    .local v12, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v12, :cond_4

    .line 1376
    const-string v14, "MediaRecorder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "volume["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1379
    :cond_4
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1380
    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1381
    if-eqz v10, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_3

    .line 1382
    :cond_5
    new-instance v10, Ljava/lang/String;

    .end local v10    # "sPath":Ljava/lang/String;
    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1383
    .restart local v10    # "sPath":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v8

    .line 1384
    const/4 v2, 0x1

    .line 1387
    const-string v15, "MediaRecorder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "allowed max file size : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v17, 0x0

    cmp-long v14, v8, v17

    if-lez v14, :cond_6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v14, "No limit"

    goto :goto_3

    .line 1393
    .end local v12    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_7
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-lez v14, :cond_8

    .line 1394
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "htc-max-allowed-filesize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1399
    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 1400
    const-string v14, "MediaRecorder"

    const-string v15, "no match storage volume found!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_9
    const-string v14, "MediaRecorder"

    const-string v15, "setMaxAllowFileSize X"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1395
    :catch_1
    move-exception v6

    .line 1396
    .local v6, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method

.method private start_stop_notify(I)V
    .locals 6
    .param p1, "act"    # I

    .prologue
    .line 1232
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1233
    .local v2, "loopMain":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 1234
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaRecorder.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v2    # "loopMain":Landroid/os/Looper;
    :goto_0
    return-void

    .line 1237
    .restart local v2    # "loopMain":Landroid/os/Looper;
    :cond_0
    new-instance v1, Landroid/media/MediaRecorder$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaRecorder$1;-><init>(Landroid/media/MediaRecorder;Landroid/os/Looper;I)V

    .line 1260
    .local v1, "h":Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1261
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "loopMain":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaRecorder.satr_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public changeVideoBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .prologue
    .line 728
    if-gtz p1, :cond_0

    .line 729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate-dynamically="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1223
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public getHtcRecordSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 1414
    iget-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    .line 1423
    :goto_0
    return-object v1

    .line 1418
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaRecorder;->setHtcRecordSurface()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :goto_1
    iget-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1421
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaRecorder;->mHtcRecordSurface:Landroid/view/Surface;

    goto :goto_1
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public pauseEx()V
    .locals 2

    .prologue
    .line 1440
    const-string v0, "video-param-htc-pause=1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method public preStopZoeRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1312
    const-string v0, "zoe-pre-stop-record=1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method public prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 850
    const/4 v7, 0x0

    .line 851
    .local v7, "path":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 852
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 854
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    .line 855
    iget-object v7, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 865
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v7, :cond_0

    .line 866
    invoke-direct {p0, v7}, Landroid/media/MediaRecorder;->setMaxAllowFileSize(Ljava/lang/String;)V

    .line 868
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 869
    return-void

    .line 857
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 859
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 860
    iget-object v1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    .line 861
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->getFilePathFromFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 863
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 877
    return-void
.end method

.method public native release()V
.end method

.method public remoteDispConn()V
    .locals 1

    .prologue
    .line 754
    const-string v0, "video-param-connect-display=true"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public remoteDispDisConn()V
    .locals 1

    .prologue
    .line 757
    const-string v0, "video-param-disconnect-display=true"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public requestDelayTimerStop(Z)V
    .locals 5
    .param p1, "isStop"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    if-eqz p1, :cond_0

    move v0, v1

    .line 744
    .local v0, "isStopI":I
    :goto_0
    const-string v3, "video-param-encoding-stop-delay-timer=%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 745
    return-void

    .end local v0    # "isStopI":I
    :cond_0
    move v0, v2

    .line 743
    goto :goto_0
.end method

.method public requestRTPWriterPause(I)V
    .locals 2
    .param p1, "isPause"    # I

    .prologue
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-pause-rtpwriter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public requestVideoIFrame(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 735
    if-gtz p1, :cond_0

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video I frame request is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-I-frame-request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 938
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 941
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 942
    return-void
.end method

.method public resumeEx()V
    .locals 2

    .prologue
    .line 1447
    const-string v0, "video-param-htc-pause=0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2
    .param p1, "numChannels"    # I

    .prologue
    .line 688
    if-gtz p1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .prologue
    .line 704
    if-gtz p1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .param p1, "samplingRate"    # I

    .prologue
    .line 673
    if-gtz p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .param p1, "audio_source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setAudioSource(I)V

    .line 418
    return-void
.end method

.method public setAudioSourceEx(I)V
    .locals 0
    .param p1, "audio_source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setAudioSource(I)V

    .line 426
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 792
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 803
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
.end method

.method public setCaptureRate(D)V
    .locals 5
    .param p1, "fps"    # D

    .prologue
    .line 494
    const-string v3, "time-lapse-enable=1"

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 496
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v0, v3, p1

    .line 497
    .local v0, "timeBetweenFrameCapture":D
    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 498
    .local v2, "timeBetweenFrameCaptureMs":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time-between-time-lapse-frame-capture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public setDLNADelay(Z)V
    .locals 5
    .param p1, "isDelay"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 773
    const-string v3, "MediaRecorder"

    const-string v4, "setDLNADelay"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-eqz p1, :cond_0

    move v0, v1

    .line 775
    .local v0, "isDelayI":I
    :goto_0
    const-string v3, "video-DLNA-delay=%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 776
    return-void

    .end local v0    # "isDelayI":I
    :cond_0
    move v0, v2

    .line 774
    goto :goto_0
.end method

.method public setHtcParameter(Ljava/lang/String;I)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1270
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1271
    .local v6, "bBValue":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1272
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaRecorder;->setHtcParameter(Ljava/lang/String;[BIIZ)V

    .line 1273
    return-void
.end method

.method public setHtcParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1276
    if-nez p2, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1279
    .local v2, "b":[B
    array-length v4, v2

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaRecorder;->setHtcParameter(Ljava/lang/String;[BIIZ)V

    .line 1280
    return-void
.end method

.method public setHtcParameter(Ljava/lang/String;[BIIZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offsetInBytes"    # I
    .param p4, "sizeInBytes"    # I
    .param p5, "isData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_2

    .line 1289
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null or data.length <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_2
    if-gez p3, :cond_3

    .line 1293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offsetInBytes < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_3
    if-gtz p4, :cond_4

    .line 1297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeInBytes <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_4
    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    .line 1301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset + size > length of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_5
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaRecorder;->_setHtcParameter(Ljava/lang/String;[BIIZ)V

    .line 1306
    return-void
.end method

.method public setLocation(FF)V
    .locals 8
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 543
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 544
    .local v0, "latitudex10000":I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 546
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 547
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 551
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public setLocationEx(FF)V
    .locals 8
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 1319
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 1320
    .local v0, "latitudex10000":I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 1322
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 1323
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1326
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 1327
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1328
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1331
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc-param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc-param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    .prologue
    .line 998
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 999
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 1117
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1118
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 517
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 817
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 818
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 831
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 832
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .param p1, "sv"    # Landroid/view/Surface;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 185
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 459
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 460
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 461
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 462
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 463
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 464
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 470
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 471
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 472
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setRTPParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "RTPandIP"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v0, "video-param-rtp-port-ipAdd=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public setRTPPause()V
    .locals 2

    .prologue
    .line 780
    const-string v0, "video-param-rtp-pause=1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .prologue
    .line 720
    if-gtz p1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoIFrameInterval(F)V
    .locals 4
    .param p1, "interval"    # F

    .prologue
    .line 763
    const-string v0, "video-param-i-frames-intervalInms=%f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 894
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->_start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 914
    return-void

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "ex":Ljava/lang/IllegalStateException;
    throw v1

    .line 899
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 900
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MediaRecorder"

    const-string v4, "start failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v3, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 903
    const-string v3, "MediaRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to delete broken file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 912
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    throw v1

    .line 908
    :catch_2
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MediaRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete file failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
