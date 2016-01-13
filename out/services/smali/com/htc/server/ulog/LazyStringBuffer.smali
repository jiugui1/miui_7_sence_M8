.class final Lcom/htc/server/ulog/LazyStringBuffer;
.super Ljava/lang/Object;
.source "LazyStringBuffer.java"


# instance fields
.field private final mCapacity:I

.field private volatile mLogs:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mCapacity:I

    .line 21
    return-void
.end method

.method private checkInit()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mCapacity:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    .line 57
    :cond_0
    monitor-exit p0

    .line 59
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/server/ulog/LazyStringBuffer;->checkInit()V

    .line 41
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/server/ulog/LazyStringBuffer;->checkInit()V

    .line 31
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/server/ulog/LazyStringBuffer;->checkInit()V

    .line 36
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/server/ulog/LazyStringBuffer;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
