.class final Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/deviceinfo/ActivityLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveTimeInfoArrayList"
.end annotation


# instance fields
.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    .line 60
    return-void
.end method


# virtual methods
.method public getByIndex(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    .line 88
    .local v0, "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(ILcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    .locals 5
    .param p1, "key"    # I
    .param p2, "info"    # Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .prologue
    .line 67
    new-instance v1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    invoke-direct {v1, p1, p2}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;-><init>(ILcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)V

    .line 68
    .local v1, "newEntry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    .line 70
    .local v2, "oldEntry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    if-ne v4, p1, :cond_0

    .line 71
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, v2, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .line 80
    .end local v2    # "oldEntry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :goto_1
    return-object v4

    .line 68
    .restart local v2    # "oldEntry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "oldEntry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :cond_1
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 80
    .local v3, "success":Z
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public removeByIndex(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    .line 120
    .local v0, "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .line 123
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeByKey(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 100
    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 101
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 102
    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    .line 103
    .local v0, "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    if-ne v3, p1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v3, v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .line 110
    .end local v0    # "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :goto_1
    return-object v3

    .line 101
    .restart local v0    # "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "entry":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public trim(I)Z
    .locals 4
    .param p1, "maxElementCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    if-lez p1, :cond_0

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "size":I
    if-le v1, p1, :cond_2

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sub-int v2, v1, p1

    if-ge v0, v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    move p1, v3

    .line 132
    goto :goto_0

    .line 139
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    const/4 v3, 0x1

    .line 142
    .end local v0    # "i":I
    :cond_2
    return v3
.end method
