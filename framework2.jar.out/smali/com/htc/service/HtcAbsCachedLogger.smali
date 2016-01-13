.class public abstract Lcom/htc/service/HtcAbsCachedLogger;
.super Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback$Stub;
.source "HtcAbsCachedLogger.java"

# interfaces
.implements Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/HtcAbsCachedLogger$LogRecord;,
        Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:J = 0x100000L

.field private static final LOGFILE_DIR:Ljava/lang/String;

.field private static final LOGFILE_SUBFIX:Ljava/lang/String; = ".log"

.field public static final MAX_BUFFER_SIZE:J


# instance fields
.field private final IS_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final TIMESTAMP_FORMAT_FOR_DUMP:Ljava/lang/String;

.field private final TIMESTAMP_FORMAT_FOR_FILE:Ljava/lang/String;

.field mLevel:I

.field private mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/service/HtcAbsCachedLogger;->isSmallRam()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    :goto_0
    sput-wide v0, Lcom/htc/service/HtcAbsCachedLogger;->MAX_BUFFER_SIZE:J

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htclog/fcorelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/service/HtcAbsCachedLogger;->LOGFILE_DIR:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    const-wide/32 v0, 0x200000

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cacheSize"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback$Stub;-><init>()V

    .line 38
    sget-boolean v0, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->IS_DEBUG:Z

    .line 47
    const-string v0, "HtcAbsCachedLogger-refer"

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "MM-dd HH:mm:ss.SSS"

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->TIMESTAMP_FORMAT_FOR_DUMP:Ljava/lang/String;

    .line 52
    const-string v0, "yyyyMMdd-HHmmss"

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->TIMESTAMP_FORMAT_FOR_FILE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "HtcAbsCachedLogger-refer"

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    .line 67
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/htc/service/HtcAbsCachedLogger;->init(J)V

    .line 68
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 776
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    return-void
.end method

.method private LOGE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger;
    .param p1, "x1"    # Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger;->LOGE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/service/HtcAbsCachedLogger;->LOGFILE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/service/HtcAbsCachedLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private final getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    .locals 2
    .param p1, "record"    # Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    .prologue
    .line 741
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    const-wide/16 v0, 0x0

    .line 746
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p1, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    goto :goto_0
.end method

.method private init(J)V
    .locals 2
    .param p1, "cacheSize"    # J

    .prologue
    .line 232
    const-string v0, "init()"

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;-><init>(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    .line 236
    :cond_0
    return-void
.end method

.method static final isSmallRam()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 72
    const-string v6, "ro.product.ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "ram":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "ramVal":I
    :try_start_0
    const-string v6, "G|M|g|m"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "ram_real":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    if-le v2, v5, :cond_0

    const/16 v6, 0xa

    if-le v2, v6, :cond_1

    const/16 v6, 0x400

    if-gt v2, v6, :cond_1

    :cond_0
    move v4, v5

    .line 89
    .end local v3    # "ram_real":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 78
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v4, v5

    .line 79
    goto :goto_0
.end method

.method protected static final isValidSeverity(I)Z
    .locals 1
    .param p0, "severity"    # I

    .prologue
    .line 266
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addLog(ILjava/lang/String;)I
    .locals 1
    .param p1, "severity"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-ge p1, v0, :cond_0

    .line 127
    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 146
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-le v0, v1, :cond_0

    .line 147
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected final dumpCachedLog()V
    .locals 1

    .prologue
    .line 255
    const-string v0, "dumpCachedLog() called"

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->dumpCachedLog()V

    .line 259
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x6

    .line 176
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-le v0, v1, :cond_0

    .line 177
    const/4 v0, -0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected final getSeverityString(I)Ljava/lang/String;
    .locals 1
    .param p1, "severity"    # I

    .prologue
    .line 753
    packed-switch p1, :pswitch_data_0

    .line 767
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 755
    :pswitch_0
    const-string v0, "V"

    goto :goto_0

    .line 757
    :pswitch_1
    const-string v0, "D"

    goto :goto_0

    .line 759
    :pswitch_2
    const-string v0, "I"

    goto :goto_0

    .line 761
    :pswitch_3
    const-string v0, "W"

    goto :goto_0

    .line 763
    :pswitch_4
    const-string v0, "E"

    goto :goto_0

    .line 765
    :pswitch_5
    const-string v0, "A"

    goto :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 156
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-le v0, v1, :cond_0

    .line 157
    const/4 v0, -0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onDump(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "severity"    # I
    .param p3, "eventInfo"    # Landroid/os/Bundle;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDump() called with event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and severity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->dumpSeverityLog(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onLogCallbackInfo()V
    .locals 4

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    invoke-virtual {p0, v2}, Lcom/htc/service/HtcAbsCachedLogger;->getSeverityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HWM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J
    invoke-static {v2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->access$000(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J
    invoke-static {v2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->access$100(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "strInfo":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onRegistered()V
    .locals 1

    .prologue
    .line 184
    const-string v0, "onRegistered() called"

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "onRelease() called"

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->destory()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    .line 219
    :cond_0
    return-void
.end method

.method public onTrimCache(I)V
    .locals 2
    .param p1, "severity"    # I

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimCache() called with severity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->delete(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onTrimCacheToLWM()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduleTrimCacheToLWM()V

    .line 202
    :cond_0
    return-void
.end method

.method protected final pop()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "popStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->pop()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    return-object v0
.end method

.method public final setCacheSize(J)J
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->setMaxSize(J)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCacheSize() inMaxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and now HWM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J
    invoke-static {v1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->access$000(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J
    invoke-static {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->access$000(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lcom/htc/service/HtcAbsCachedLogger;->isValidSeverity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput p1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevel() now mLevel is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/htc/service/HtcAbsCachedLogger;->getSeverityString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 136
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-le v0, v1, :cond_0

    .line 137
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final w(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x5

    .line 166
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLevel:I

    if-le v0, v1, :cond_0

    .line 167
    const/4 v0, -0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->push(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected final writeToFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToFile() called write to file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger;->mLogBufferMgr:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->writeToFile(Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method
