.class Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$1;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->fitFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;


# direct methods
.method constructor <init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$1;->this$2:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$1;->this$2:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;

    iget-object v0, v0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->prefixName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
