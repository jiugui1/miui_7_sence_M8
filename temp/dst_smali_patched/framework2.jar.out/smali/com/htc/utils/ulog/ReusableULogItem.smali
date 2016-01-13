.class final Lcom/htc/utils/ulog/ReusableULogItem;
.super Ljava/lang/Object;
.source "ReusableULogItem.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogData$ULogItem;


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReusableULogItem"

.field private static sLock:Ljava/lang/Object;

.field private static sPool:Lcom/htc/utils/ulog/ReusableULogItem;

.field private static sPoolSize:I


# instance fields
.field private mNext:Lcom/htc/utils/ulog/ReusableULogItem;

.field private final nameValuePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    return-void
.end method

.method public static obtain()Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 3

    .prologue
    sget-object v2, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    .local v0, "item":Lcom/htc/utils/ulog/ReusableULogItem;
    iget-object v1, v0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sput-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sget v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    monitor-exit v2

    .end local v0    # "item":Lcom/htc/utils/ulog/ReusableULogItem;
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-direct {v0}, Lcom/htc/utils/ulog/ReusableULogItem;-><init>()V

    goto :goto_0

    .restart local v0    # "item":Lcom/htc/utils/ulog/ReusableULogItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/htc/utils/ulog/ReusableULogItem;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogItem;->recycle()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    return-void
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .local v3, "length":I
    iget-object v5, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "keyStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "valueObj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/htc/utils/ulog/ReusableULogItem;

    .end local v4    # "valueObj":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogItem;->length()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .restart local v4    # "valueObj":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    .end local v4    # "valueObj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "keyStr":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method put(Ljava/lang/String;Lcom/htc/utils/ulog/ReusableULogItem;)Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/htc/utils/ulog/ReusableULogItem;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogItem;->clear()V

    sget-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sput-object p0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    sget v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 6

    .prologue
    const/4 v3, 0x4

    .local v3, "size":I
    iget-object v5, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "keyStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x24

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "valueObj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/htc/utils/ulog/ReusableULogItem;

    .end local v4    # "valueObj":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogItem;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .restart local v4    # "valueObj":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    .end local v4    # "valueObj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x24

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "keyStr":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
