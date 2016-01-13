.class final Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/HtcAbsCachedLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogRecord"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public pid:I

.field public severity:I

.field final synthetic this$0:Lcom/htc/service/HtcAbsCachedLogger;

.field public tid:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Lcom/htc/service/HtcAbsCachedLogger;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    return-void
.end method


# virtual methods
.method public init(ILjava/lang/String;)V
    .locals 2
    .param p1, "severity"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 711
    iput p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->severity:I

    .line 712
    if-eqz p2, :cond_0

    .line 713
    iput-object p2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    .line 718
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->timestamp:J

    .line 719
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->pid:I

    .line 720
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->tid:I

    .line 721
    return-void

    .line 715
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public reset(ILjava/lang/String;)V
    .locals 0
    .param p1, "severity"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->init(ILjava/lang/String;)V

    .line 708
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 725
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, "formater":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 730
    .local v0, "dumpInfo":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->tid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    iget v5, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->severity:I

    invoke-virtual {v4, v5}, Lcom/htc/service/HtcAbsCachedLogger;->getSeverityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/service/HtcAbsCachedLogger;->access$600(Lcom/htc/service/HtcAbsCachedLogger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->msg:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
