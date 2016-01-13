.class final Lcom/android/server/DisplayListener;
.super Ljava/lang/Object;
.source "DisplayListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DISPLAY_SOCKET:Ljava/lang/String; = "displayd"

.field private static final HDMI_CMD_CHANGE_MODE:Ljava/lang/String; = "change_mode: "

.field private static final HDMI_CMD_CLEAR_BITMAP:Ljava/lang/String; = "clear_bitmap"

.field private static final HDMI_CMD_DISABLE_HDMI:Ljava/lang/String; = "disable_hdmi"

.field private static final HDMI_CMD_ENABLE_HDMI:Ljava/lang/String; = "enable_hdmi"

.field private static final HDMI_CMD_SET_BITMAT:Ljava/lang/String; = "set_bitmap"

.field private static final HDMI_EVT_CONNECTED:Ljava/lang/String; = "hdmi_connected"

.field private static final HDMI_EVT_DISCONNECTED:Ljava/lang/String; = "hdmi_disconnected"

.field private static final HDMI_EVT_HDCP_AUTHENTICATED:Ljava/lang/String; = "hdmi_hdcp_authenticated"

.field private static final HDMI_EVT_HDCP_DEAUTHENTICATED:Ljava/lang/String; = "hdmi_hdcp_deauthenticated"

.field private static final HDMI_EVT_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final PANEL_3D_MODE:Ljava/lang/String; = "enable_3d: "

.field private static final PANEL_CMD_3DLANDSCAPE:Ljava/lang/String; = "switch_3Dlandscape"

.field private static final PANEL_CMD_3DOFF:Ljava/lang/String; = "switch_3Doff"

.field private static final PANEL_CMD_3DPORTRAIT:Ljava/lang/String; = "switch_3Dportrait"

.field private static final PANEL_EVT_SWITCH3D:Ljava/lang/String; = "panel_3Dmodes: "

.field private static final TAG:Ljava/lang/String; = "DisplayListener"

.field private static final TV_CMD_3DOFF:Ljava/lang/String; = "switch_TV_3Doff"

.field private static final TV_CMD_3D_SIDEBYSIDE:Ljava/lang/String; = "switch_3D_sideBySide"

.field private static final TV_CMD_3D_TOPBOTTON:Ljava/lang/String; = "switch_3D_topBotton"

.field private static final TV_CMD_DETECT3DMODE:Ljava/lang/String; = "detect_TV_3Dmodes"

.field private static final TV_CMD_TVMODE:Ljava/lang/String; = "switch_TVout_mode: "

.field private static final VIDEO_CMD_STEREO_MODE:Ljava/lang/String; = "switch_3Dvideo_mode: "


# instance fields
.field private mEDIDs:[I

.field private mHDMIConnected:Z

.field private mHDMIEnabled:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPanel3Dmode:I

.field private mService:Lcom/android/server/DisplayService;

.field private mTV3Dmode:I


# direct methods
.method constructor <init>(Lcom/android/server/DisplayService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/DisplayService;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    iput v0, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    iput v0, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    iput-object p1, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    return-void
.end method

.method private CABLSocket()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .local v5, "mCablEnabled":Z
    :try_start_0
    const-string v0, "pps"

    .local v0, "DAEMON_SOCKET":Ljava/lang/String;
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .local v3, "daemonSock":Landroid/net/LocalSocket;
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v0, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v1, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .local v6, "out":Ljava/io/OutputStream;
    const-string v8, "DisplayListener"

    const-string v9, "output connection ok\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "ro.qualcomm.cabl"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v7, "cabl:on"

    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "buf":[B
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string v8, "DisplayListener"

    const-string v9, "send enable CABL\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "cabl:set=1"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string v8, "DisplayListener"

    const-string v9, "send CABL level =1\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "DAEMON_SOCKET":Ljava/lang/String;
    .end local v1    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "buf":[B
    .end local v3    # "daemonSock":Landroid/net/LocalSocket;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "tmp":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v0    # "DAEMON_SOCKET":Ljava/lang/String;
    .restart local v1    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "daemonSock":Landroid/net/LocalSocket;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_0
    const-string v8, "cabl:off"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "buf":[B
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string v8, "DisplayListener"

    const-string v9, "send disable CABL\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "DAEMON_SOCKET":Ljava/lang/String;
    .end local v1    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "buf":[B
    .end local v3    # "daemonSock":Landroid/net/LocalSocket;
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v8, "DisplayListener"

    const-string v9, "Cabl Fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const-string v3, "DisplayListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "hdmi_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "hdmi_connected"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "ids":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "DisplayListener"

    const-string v4, "NumberFormatException in handleEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    iget-object v4, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/DisplayService;->notifyHDMIConnected([I)V

    .end local v1    # "i":I
    .end local v2    # "ids":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v3, "hdmi_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIDisconnected()V

    goto :goto_2

    :cond_3
    const-string v3, "hdmi_hdcp_authenticated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DisplayListener"

    const-string v4, "In handleEvent: HDCP Authenticated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIHDCPAuthenticated()V

    goto :goto_2

    :cond_4
    const-string v3, "hdmi_hdcp_deauthenticated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DisplayListener"

    const-string v4, "In handleEvent: HDCP DeAuthenticated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIHDCPDeauthenticated()V

    goto :goto_2
.end method

.method private listenToSocket()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .local v8, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .local v9, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "displayd"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    const/16 v11, 0x200

    new-array v1, v11, [B

    .local v1, "buffer":[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .local v2, "count":I
    if-gez v2, :cond_3

    move-object v8, v9

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :goto_0
    monitor-enter p0

    :try_start_2
    iget-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    :try_start_3
    iget-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_2
    const-string v11, "DisplayListener"

    const-string v12, "Failed to connect to hdmi daemon"

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :cond_3
    const/4 v10, 0x0

    .local v10, "start":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_0

    :try_start_6
    aget-byte v11, v1, v6

    if-nez v11, :cond_4

    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .local v4, "event":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/DisplayListener;->handleEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v10, v6, 0x1

    .end local v4    # "event":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .end local v10    # "start":I
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    :goto_4
    const-string v11, "DisplayListener"

    const-string v12, "Could not open listner socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "DisplayListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    :catch_2
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v11, "DisplayListener"

    const-string v12, "IOException closing socket"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_4
.end method

.method private writeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    const-string v2, "DisplayListener"

    const-string v3, "No connection to hdmi daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "DisplayListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCommand: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v2, "DisplayListener"

    const-string v3, "IOException in writeCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public Get3DMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    return v0
.end method

.method IsHDMIConnected()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    return v0
.end method

.method public IsHDMIEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    return v0
.end method

.method public changeDisplayMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const-string v0, "change_mode: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "clear_bitmap"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public detectTVMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "detect_TV_3Dmodes"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public enableHDMIOutput(ZLjava/lang/String;)V
    .locals 3
    .param p1, "hdmiEnable"    # Z
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    const-string v1, "DisplayListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHDMIOutput "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "On"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    if-ne v0, p1, :cond_1

    const-string v0, "DisplayListener"

    const-string v1, "enableHDMIOutput ignored, unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v0, "Off"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "enable_hdmi"

    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    goto :goto_1

    :cond_2
    const-string v0, "disable_hdmi"

    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    goto :goto_1
.end method

.method public getTVMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DisplayListener;->CABLSocket()V

    invoke-direct {p0}, Lcom/android/server/DisplayListener;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DisplayListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "Mode3D"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "nRet":I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    iput p1, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "switch_3Doff"

    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    return v1

    :pswitch_0
    const-string v0, "switch_3Dlandscape"

    .restart local v0    # "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_1
    const-string v0, "switch_3Dportrait"

    .restart local v0    # "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_2
    const-string v0, "switch_3Doff"

    .restart local v0    # "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStereoDisplayMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "ModeDisp"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "DisplayListener"

    const-string v2, "StereoDisplay is not complete!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_3Dvideo_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issued by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "switch_3Dvideo_mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "ModeTV"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "nRet":I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    iput p1, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "switch_TV_3Doff"

    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    return v1

    :pswitch_0
    const-string v0, "switch_TV_3Doff"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_1
    const-string v0, "switch_3D_sideBySide"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_2
    const-string v0, "switch_3D_topBotton"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTVoutMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "ModeTVout"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .local v0, "ret":I
    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_TVout_mode:  issued by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    const-string v1, "switch_TVout_mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "set_bitmap"

    invoke-direct {p0, v1, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
