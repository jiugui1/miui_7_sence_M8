.class Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;
.super Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcAdditionalInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;
    }
.end annotation


# instance fields
.field private mDebugInfoFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

.field private mDeviceUsageOutputAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

.field private mInsAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

.field private mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;-><init>(Landroid/content/Context;)V

    .line 1108
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;-><init>([Lcom/htc/server/HtcInfoOperator;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    .line 1112
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$600()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "DebugInfoFlushAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mDebugInfoFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    .line 1114
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const/4 v3, 0x0

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINS_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$800()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "LogInsAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInsAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    .line 1115
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    const/4 v3, 0x0

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->OUTPUT_DEVICE_INFO_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$900()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "DeviceUsageOutputAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mDeviceUsageOutputAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    .line 1119
    :goto_0
    return-void

    .line 1118
    :cond_0
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "[HtcAdditionalInfoScheduler] no info operator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1122
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1124
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v1}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v1, v0, v5

    .line 1127
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1241
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 1246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1132
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1203
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1135
    :sswitch_0
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "SENTINEL "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_1
    monitor-enter p0

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1138
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1143
    :sswitch_1
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_2

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "extra 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_2
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1145
    .local v4, "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo1()V

    .line 1144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    :sswitch_2
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_3

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "extra 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_3
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1152
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo2()V

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1157
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    :sswitch_3
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_4

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "extra 3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_4
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_3
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1159
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo3()V

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1164
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    :sswitch_4
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_5

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "extra cap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_5
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    if-eqz v6, :cond_0

    .line 1166
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    invoke-virtual {v6}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->log()V

    goto :goto_0

    .line 1171
    :sswitch_5
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_6

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "SET_UI_MODE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1173
    .local v5, "uiMode":Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_4
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1174
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->setUIMode(Ljava/lang/String;)V

    .line 1173
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1179
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "uiMode":Ljava/lang/String;
    :sswitch_6
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_7

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "UPDATE_POLICY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1181
    .local v2, "isSIE":Z
    if-nez v2, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_5
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1183
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->updatePolicy()V

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1189
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v2    # "isSIE":Z
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    :sswitch_7
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_8

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "extra 8"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_8
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_6
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1191
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logExtraInfo8()V

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1196
    .end local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    :sswitch_8
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_9

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "outputDeviceUsage message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_9
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_7
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1198
    .restart local v4    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->outputDeviceUsage()V

    .line 1197
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1132
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1b -> :sswitch_5
        0x1c -> :sswitch_6
        0x1d -> :sswitch_7
        0x22 -> :sswitch_8
    .end sparse-switch
.end method

.method public setup(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1212
    .local v3, "op":Lcom/htc/server/HtcInfoOperator;
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/server/HtcInfoOperator;->setup(Landroid/os/Looper;)V

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    .end local v3    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_0
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mDebugInfoFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    .line 1216
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mInsAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    .line 1217
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mDeviceUsageOutputAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    .line 1218
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v4, v5}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1219
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v4, v5}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerUIModeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1220
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v4, v5}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPolicyChangeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1222
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->setup(Landroid/content/Context;)V

    .line 1223
    return-void
.end method

.method public synchronizedFlush()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 1226
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1227
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1231
    monitor-enter p0

    .line 1233
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 1238
    return-void

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronized flush exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
