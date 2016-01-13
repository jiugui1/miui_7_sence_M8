.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 112
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_0

    .line 196
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 197
    .local v0, "n":I
    if-gtz v0, :cond_1

    .line 201
    const/4 v1, -0x1

    .line 206
    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_0
    return v1

    .line 203
    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_1
    sub-int/2addr p3, v0

    .line 204
    add-int/2addr v1, v0

    .line 205
    goto :goto_0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 185
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 186
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 187
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 188
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 189
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 212
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 213
    .local v6, "buf":[B
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v11, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 216
    .local v11, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v13

    .line 217
    .local v13, "timeout":Llibcore/io/StructTimeval;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v5, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v0, p1, v1, v5, v13}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 218
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v5, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v0, p1, v1, v5, v13}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 221
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p1, v6, v0, v1}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v9

    .line 222
    .local v9, "headerBytes":I
    const/16 v0, 0x8

    if-eq v9, v0, :cond_1

    .line 224
    const-string v0, "NativeCrashListener"

    const-string v1, "Unable to read from debuggerd"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v9    # "headerBytes":I
    .end local v13    # "timeout":Llibcore/io/StructTimeval;
    :cond_0
    :goto_0
    return-void

    .line 228
    .restart local v9    # "headerBytes":I
    .restart local v13    # "timeout":Llibcore/io/StructTimeval;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v12

    .line 229
    .local v12, "pid":I
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    .line 235
    .local v3, "signal":I
    new-instance v10, Lcom/android/server/am/HtcNativeCrashUtil;

    invoke-direct {v10}, Lcom/android/server/am/HtcNativeCrashUtil;-><init>()V

    .line 236
    .local v10, "htcNativeCrashUtil":Lcom/android/server/am/HtcNativeCrashUtil;
    invoke-virtual {v10, p1, v6, v12, v3}, Lcom/android/server/am/HtcNativeCrashUtil;->checkIsHtcHeader(Ljava/io/FileDescriptor;[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v10}, Lcom/android/server/am/HtcNativeCrashUtil;->getPid()I

    move-result v12

    .line 238
    invoke-virtual {v10}, Lcom/android/server/am/HtcNativeCrashUtil;->getSignal()I

    move-result v3

    .line 243
    :cond_2
    if-lez v12, :cond_7

    .line 245
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 247
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    if-eqz v2, :cond_6

    .line 250
    :try_start_2
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_0

    .line 260
    :cond_3
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v1, 0x0

    array-length v5, v6

    invoke-interface {v0, p1, v6, v1, v5}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v7

    .line 261
    .local v7, "bytes":I
    if-lez v7, :cond_5

    .line 267
    add-int/lit8 v0, v7, -0x1

    aget-byte v0, v6, v0

    if-nez v0, :cond_4

    .line 268
    const/4 v0, 0x0

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v11, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 286
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    :try_start_4
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v4, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 294
    .local v4, "reportString":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-virtual {v10}, Lcom/android/server/am/HtcNativeCrashUtil;->getTombstoneFile()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 302
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "signal":I
    .end local v4    # "reportString":Ljava/lang/String;
    .end local v7    # "bytes":I
    .end local v9    # "headerBytes":I
    .end local v10    # "htcNativeCrashUtil":Lcom/android/server/am/HtcNativeCrashUtil;
    .end local v12    # "pid":I
    .end local v13    # "timeout":Llibcore/io/StructTimeval;
    :catch_0
    move-exception v8

    .line 303
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "NativeCrashListener"

    const-string v1, "Exception dealing with report"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "signal":I
    .restart local v9    # "headerBytes":I
    .restart local v10    # "htcNativeCrashUtil":Lcom/android/server/am/HtcNativeCrashUtil;
    .restart local v12    # "pid":I
    .restart local v13    # "timeout":Llibcore/io/StructTimeval;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 272
    .restart local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "bytes":I
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v11, v6, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 274
    :cond_5
    if-gtz v7, :cond_3

    goto :goto_1

    .line 286
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 297
    .end local v7    # "bytes":I
    :cond_6
    const-string v0, "NativeCrashListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_7
    const-string v0, "NativeCrashListener"

    const-string v1, "Bogus pid!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 116
    new-array v0, v8, [B

    .line 124
    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 131
    :cond_0
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v10, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 132
    .local v5, "serverFd":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/net/InetUnixAddress;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v6, v8}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, "sockAddr":Ljava/net/InetUnixAddress;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    invoke-interface {v8, v5, v6, v9}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 134
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x1

    invoke-interface {v8, v5, v9}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 137
    :cond_1
    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    .local v3, "peer":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 141
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v5, v3}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_2

    .line 145
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v8, v4, v9, v10}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v1

    .line 147
    .local v1, "credentials":Llibcore/io/StructUcred;
    iget v8, v1, Llibcore/io/StructUcred;->uid:I

    if-nez v8, :cond_2

    .line 150
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v1    # "credentials":Llibcore/io/StructUcred;
    :cond_2
    if-eqz v4, :cond_1

    .line 160
    :try_start_2
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 168
    :goto_1
    :try_start_3
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 169
    :catch_0
    move-exception v8

    goto :goto_0

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "NativeCrashListener"

    const-string v9, "Error handling connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    if-eqz v4, :cond_1

    .line 160
    :try_start_5
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 168
    :goto_2
    :try_start_6
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "peer":Ljava/net/InetSocketAddress;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_2
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "NativeCrashListener"

    const-string v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-void

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "peer":Ljava/net/InetSocketAddress;
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_3

    .line 160
    :try_start_7
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v9, v4, v0, v10, v11}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 168
    :goto_3
    :try_start_8
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 158
    :cond_3
    :goto_4
    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 161
    :catch_3
    move-exception v8

    goto :goto_1

    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_2

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_4

    .line 161
    :catch_6
    move-exception v9

    goto :goto_3
.end method
