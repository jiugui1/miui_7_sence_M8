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
    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    sput v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    .line 19
    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    .line 20
    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->addRef()V

    .line 22
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    .line 46
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogItem;->clear()V

    .line 48
    :cond_0
    return-void
.end method

.method public static obtain()Lcom/htc/utils/ulog/ReusableULogData;
    .locals 5

    .prologue
    .line 173
    sget-object v2, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    if-eqz v1, :cond_0

    .line 175
    sget-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    .line 176
    .local v0, "r":Lcom/htc/utils/ulog/ReusableULogData;
    iget-object v1, v0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    sput-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    .line 177
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    .line 178
    sget v1, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 180
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->addRef()V

    .line 182
    monitor-exit v2

    .line 185
    .end local v0    # "r":Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-object v0

    .line 184
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    new-instance v0, Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;-><init>(J)V

    goto :goto_0

    .line 184
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
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object p0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogItem;->obtain()Lcom/htc/utils/ulog/ReusableULogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    .line 100
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
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-nez v0, :cond_2

    .line 84
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogItem;->obtain()Lcom/htc/utils/ulog/ReusableULogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0, p1, p2}, Lcom/htc/utils/ulog/ReusableULogItem;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogItem;

    goto :goto_0
.end method

.method public addRef()V
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    .line 27
    monitor-exit v1

    .line 29
    return-void

    .line 27
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
    .line 108
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    return-wide v0
.end method

.method public length()I
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "length":I
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    :cond_1
    iget-wide v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "timestamp":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogItem;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    :cond_3
    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 189
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    .line 192
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    if-gtz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/htc/utils/ulog/ReusableULogData;->clear()V

    .line 194
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogItem;->recycle()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    .line 198
    :cond_0
    sget v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 199
    sget-object v0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mNext:Lcom/htc/utils/ulog/ReusableULogData;

    .line 200
    sput-object p0, Lcom/htc/utils/ulog/ReusableULogData;->sPool:Lcom/htc/utils/ulog/ReusableULogData;

    .line 201
    sget v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/utils/ulog/ReusableULogData;->sPoolSize:I

    .line 204
    :cond_1
    monitor-exit v1

    .line 205
    return-void

    .line 204
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
    .line 35
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogData;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mRefCount:I

    .line 37
    monitor-exit v1

    .line 39
    return-void

    .line 37
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
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    .line 56
    :cond_0
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    .line 62
    :cond_0
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mTimestamp:J

    .line 71
    return-object p0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 138
    const/16 v0, 0x1c

    .line 139
    .local v0, "size":I
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mAppId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/htc/utils/ulog/ReusableULogData;->mItem:Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogItem;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
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

    .line 154
    const-string v1, "category : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "timestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
