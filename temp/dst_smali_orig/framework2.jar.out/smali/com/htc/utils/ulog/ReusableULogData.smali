.class public final Lcom/htc/utils/ulog/ReusableULogData;
.super Ljava/lang/Object;
.source "ReusableULogData.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogDataWritable;


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ReusableULogData"

.field private static sLock:Ljava/lang/Object;

.field private static sPool:Lcom/htc/utils/ulog/ReusableULogData;

.field private static sPoolSize:I


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mItem:Lcom/htc/utils/ulog/ReusableULogItem;

.field private mNext:Lcom/htc/utils/ulog/ReusableULogData;

.field private mRefCount:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->addRef()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogItem;->clear()V

    :cond_0
    return-void
.end method

.method public static obtain()Lcom/htc/utils/ulog/ReusableULogData;
    .locals 5

    .prologue
    sget-object v2, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    .local v0, "r":Lcom/htc/utils/ulog/ReusableULogData;
    iget-object v1, v0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    sput-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    sget v1, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->addRef()V

    monitor-exit v2

    .end local v0    # "r":Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;-><init>(J)V

    goto :goto_0

    .restart local v0    # "r":Lcom/htc/utils/ulog/ReusableULogData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addData(Ljava/lang/String;Lcom/htc/utils/ulog/ReusableULogItem;)Lcom/htc/utils/ulog/ReusableULogData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/htc/utils/ulog/ReusableULogItem;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogItem;->obtain()Lcom/htc/utils/ulog/ReusableULogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    :cond_2
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0, p1, p2}, Lcom/htc/utils/ulog/ReusableULogItem;->put(Ljava/lang/String;Lcom/htc/utils/ulog/ReusableULogItem;)Lcom/htc/utils/ulog/ReusableULogItem;

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogItem;->obtain()Lcom/htc/utils/ulog/ReusableULogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    :cond_2
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0, p1, p2}, Lcom/htc/utils/ulog/ReusableULogItem;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogItem;

    goto :goto_0
.end method

.method public addRef()V
    .locals 2

    .prologue
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    return-wide v0
.end method

.method public length()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "length":I
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .local v1, "timestamp":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogItem;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/utils/ulog/ReusableULogData;->clear()V

    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    :cond_0
    sget v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    sput-object p0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    sget v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseRef()V
    .locals 2

    .prologue
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    return-object p0
.end method

.method public size()I
    .locals 2

    .prologue
    const/16 v0, 0x1c

    .local v0, "size":I
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogItem;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "appId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
