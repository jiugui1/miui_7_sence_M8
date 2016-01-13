.class public final Lcom/htc/utils/ulog/io/LogStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/io/LogStream$CipherStream;,
        Lcom/htc/utils/ulog/io/LogStream$SeedGetter;
    }
.end annotation


# static fields
.field private static final ENTITY_BUFFER_SIZE:I = 0x1000

.field private static final HEAD_BUFFER_SIZE:I = 0x14

.field private static final SIG0:I = 0x6716e3aa

.field private static final SIG1:I = 0x11d74057

.field private static final SIG2:I = -0x7d594989

.field private static final SIG3:I = -0x3c46f836

.field private static final TAG:Ljava/lang/String; = "LogStream"

.field private static final VERSION:I = 0x2

.field private static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"

.field private static sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/utils/ulog/io/LogStream;->init()V

    return-void
.end method

.method public static concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "getter"    # Lcom/htc/utils/ulog/io/LogStream$SeedGetter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_1

    .line 125
    const/4 v4, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object v4

    .line 127
    :cond_1
    const/4 v4, 0x0

    .line 129
    .local v4, "lastIS":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v10, 0x14

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 130
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    .local v2, "headDis":Ljava/io/DataInputStream;
    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 133
    .local v7, "version":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 134
    .local v3, "isEncrypted":Z
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 135
    .local v5, "reserved1":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 136
    .local v6, "reserved2":I
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_2

    .line 137
    const-string v10, "LogStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isEncrypted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reserved1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reserved2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    const/4 v2, 0x0

    .line 142
    const/4 v10, 0x1

    if-eq v7, v10, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_8

    .line 143
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    const/16 v10, 0x1000

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 144
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 145
    .local v1, "cis":Ljava/io/InputStream;
    if-eqz v3, :cond_7

    .line 146
    if-eqz p1, :cond_6

    .line 147
    invoke-interface {p1}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v10

    invoke-static {v0, v10, v7}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherInputStream(Ljava/io/InputStream;[BI)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    .line 153
    :goto_1
    if-eqz v1, :cond_5

    .line 154
    new-instance v9, Lcom/htc/utils/ulog/io/SafeZipInputStream;

    invoke-direct {v9, v1}, Lcom/htc/utils/ulog/io/SafeZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    .local v9, "zis":Lcom/htc/utils/ulog/io/SafeZipInputStream;
    const/4 v8, 0x0

    .line 156
    .local v8, "zEntry":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_5

    .line 157
    :cond_4
    invoke-virtual {v9}, Lcom/htc/utils/ulog/io/SafeZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 158
    const-string v10, "file_entity"

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 159
    move-object v4, v9

    .line 165
    .end local v8    # "zEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zis":Lcom/htc/utils/ulog/io/SafeZipInputStream;
    :cond_5
    if-nez v4, :cond_0

    .line 166
    const-string v10, "LogStream"

    const-string v11, "InputStream is null ???"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    :cond_6
    const-string v10, "LogStream"

    const-string v11, "[concatenateInputStream] SeedGetter is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :cond_7
    move-object v1, v0

    goto :goto_1

    .line 169
    .end local v1    # "cis":Ljava/io/InputStream;
    :cond_8
    const-string v10, "LogStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wrong file version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isEncrypted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;
    .locals 9
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "doEncryption"    # Z
    .param p2, "getter"    # Lcom/htc/utils/ulog/io/LogStream$SeedGetter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 83
    const/4 v3, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object v3

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, "lastOS":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x14

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 87
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v2, "headDos":Ljava/io/DataOutputStream;
    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->writeLogStreamSignature(Ljava/io/DataOutputStream;)V

    .line 89
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 91
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 92
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 93
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 94
    const/4 v2, 0x0

    .line 96
    new-instance v0, Ljava/io/BufferedOutputStream;

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1000

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 99
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 100
    .local v1, "cos":Ljava/io/OutputStream;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 101
    invoke-interface {p2}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v6

    invoke-static {v0, v6, v8}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherOutputStream(Ljava/io/OutputStream;[BI)Ljavax/crypto/CipherOutputStream;

    move-result-object v1

    .line 105
    :goto_1
    if-eqz v1, :cond_0

    .line 106
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    if-eqz v5, :cond_0

    .line 108
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "file_entity"

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 109
    .local v4, "zentry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 110
    move-object v3, v5

    goto :goto_0

    .line 103
    .end local v4    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 68
    sget-object v1, Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-nez v1, :cond_0

    .line 69
    const-string v1, "userbehavior"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v1

    sput-object v1, Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    .line 73
    :cond_0
    return-void
.end method

.method public static isLogStream(Ljava/io/InputStream;)Z
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 184
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 185
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-static {v1}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v2

    .line 187
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLogStreamInternal(Ljava/io/DataInputStream;)Z
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "sig0":I
    const/4 v1, 0x0

    .local v1, "sig1":I
    const/4 v2, 0x0

    .local v2, "sig2":I
    const/4 v3, 0x0

    .line 199
    .local v3, "sig3":I
    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 202
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 203
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 206
    :cond_0
    const v4, 0x6716e3aa

    if-ne v0, v4, :cond_1

    const v4, 0x11d74057

    if-ne v1, v4, :cond_1

    const v4, -0x7d594989

    if-ne v2, v4, :cond_1

    const v4, -0x3c46f836

    if-ne v3, v4, :cond_1

    .line 207
    const/4 v4, 0x1

    .line 209
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static writeLogStreamSignature(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const v0, 0x6716e3aa

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 192
    const v0, 0x11d74057

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 193
    const v0, -0x7d594989

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 194
    const v0, -0x3c46f836

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    return-void
.end method
