.class Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationInfoLogger"
.end annotation


# static fields
.field private static final MIN_LOGGING_INTERVAL:J = 0x7530L


# instance fields
.field private final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field private mLastTimeOfLogging:J


# direct methods
.method public constructor <init>([Lcom/htc/server/HtcInfoOperator;)V
    .locals 2
    .param p1, "infoOperators"    # [Lcom/htc/server/HtcInfoOperator;

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 1255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    .line 1256
    return-void
.end method


# virtual methods
.method public log()V
    .locals 10

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1259
    .local v1, "currentElapsedTime":J
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcDeviceInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentElapsedTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLastTimeOfLogging: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_0
    iget-wide v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1262
    .local v5, "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo4()V

    .line 1263
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo1()V

    .line 1264
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo6()V

    .line 1265
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo7()V

    .line 1266
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo8()V

    .line 1261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1269
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method
