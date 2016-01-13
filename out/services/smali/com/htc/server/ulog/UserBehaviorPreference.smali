.class final Lcom/htc/server/ulog/UserBehaviorPreference;
.super Ljava/lang/Object;
.source "UserBehaviorPreference.java"


# static fields
.field private static KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String; = null

.field private static KEY_INITIALIZATION_VECTOR:Ljava/lang/String; = null

.field private static KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String; = null

.field private static KEY_LAST_TIME_OF_UPLOADING_ENG_USAGE_LOG:Ljava/lang/String; = null

.field private static KEY_SECRET_KEY:Ljava/lang/String; = null

.field private static KEY_UIMODE_OF_TELLHTC:Ljava/lang/String; = null

.field private static final PROPERTY_FILE_NAME:Ljava/lang/String; = "/data/system/userbehavior.xml"

.field private static sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;


# instance fields
.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "LastTimeOfUpload"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    .line 24
    const-string v0, "FirstUpdateTimeOfSIE"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    .line 25
    const-string v0, "UiModeOfTellHtc"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    .line 26
    const-string v0, "SecretKey"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    .line 27
    const-string v0, "InitializationVector"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    .line 28
    const-string v0, "LastTimeOfUploadingEngUsageLog"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOADING_ENG_USAGE_LOG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 193
    const-string v0, ""

    .line 194
    .local v0, "hs":Ljava/lang/String;
    const-string v2, ""

    .line 195
    .local v2, "stmp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 197
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 203
    :cond_1
    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "b":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 65
    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/htc/server/ulog/UserBehaviorPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/htc/server/ulog/UserBehaviorPreference;

    invoke-direct {v0}, Lcom/htc/server/ulog/UserBehaviorPreference;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;

    .line 19
    :cond_0
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "l":Ljava/lang/Long;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 79
    .end local v1    # "l":Ljava/lang/Long;
    :goto_1
    return-wide v2

    .line 73
    .restart local v1    # "l":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "l":Ljava/lang/Long;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/String;
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProperty] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logS(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 208
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 209
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 210
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 209
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 213
    :cond_0
    return-object v0
.end method

.method private readProperty()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 150
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/userbehavior.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 153
    .local v4, "p":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 155
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    if-eqz v3, :cond_0

    .line 162
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 169
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "p":Ljava/util/Properties;
    :cond_1
    :goto_1
    return-object v4

    .line 157
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 161
    :goto_3
    if-eqz v2, :cond_2

    .line 162
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 160
    :cond_2
    :goto_4
    throw v5

    .line 169
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "p":Ljava/util/Properties;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 163
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "p":Ljava/util/Properties;
    :catch_2
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 157
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setProperty] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logS(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->writeProperty(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_2
    monitor-exit p0

    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static writeProperty(Ljava/util/Properties;)V
    .locals 4
    .param p0, "prop"    # Ljava/util/Properties;

    .prologue
    .line 173
    if-nez p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v1, 0x0

    .line 178
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/userbehavior.xml"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    if-eqz v2, :cond_2

    .line 185
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .line 189
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 184
    :goto_3
    if-eqz v1, :cond_3

    .line 185
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 183
    :cond_3
    :goto_4
    throw v3

    .line 186
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 180
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getFirstUpdateTimeOfSIE()J
    .locals 3

    .prologue
    .line 43
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected getIV()[B
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "iv":[B
    sget-object v2, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "value":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method public getLastTimeOfUpload()J
    .locals 3

    .prologue
    .line 34
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTimeOfUploadingEngUsageLog()J
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOADING_ENG_USAGE_LOG:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected getSecretKey()[B
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "rawKey":[B
    sget-object v2, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "value":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method public getTellHtcUiMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public setFirstUpdateTimeOfSIE(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 48
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected setIV([B)V
    .locals 2
    .param p1, "iv"    # [B

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getIV()[B

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_INITIALIZATION_VECTOR:Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/server/ulog/UserBehaviorPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setLastTimeOfUpload(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 39
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setLastTimeOfUploadingEngUsageLog(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 57
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOADING_ENG_USAGE_LOG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected setSecretKey([B)V
    .locals 2
    .param p1, "rawKey"    # [B

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getSecretKey()[B

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_SECRET_KEY:Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/server/ulog/UserBehaviorPreference;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setTellHtcUiMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "uiMode"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, ""

    invoke-virtual {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getTellHtcUiMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
