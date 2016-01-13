.class Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$2;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->fitFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;


# direct methods
.method constructor <init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$2;->this$2:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
