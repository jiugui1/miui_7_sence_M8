.class Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileManager"
.end annotation


# instance fields
.field private final LOG_NUM_LIMIT:J

.field prefixName:Ljava/lang/String;

.field targetDir:Ljava/io/File;

.field final synthetic this$1:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;


# direct methods
.method constructor <init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p2, "path"    # Ljava/io/File;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->this$1:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->targetDir:Ljava/io/File;

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->prefixName:Ljava/lang/String;

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->LOG_NUM_LIMIT:J

    iput-object p2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->targetDir:Ljava/io/File;

    iput-object p3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->prefixName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fitFiles()V
    .locals 10

    .prologue
    iget-object v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->targetDir:Ljava/io/File;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$1;

    invoke-direct {v2, p0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$1;-><init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;)V

    .local v2, "filter":Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->targetDir:Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    int-to-long v4, v4

    const-wide/16 v6, 0x6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    new-instance v0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$2;

    invoke-direct {v0, p0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$2;-><init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;)V

    .local v0, "cmpTime":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    int-to-long v4, v3

    array-length v6, v1

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
