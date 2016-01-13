.class public Lcom/android/server/HtcActiveEngineManager;
.super Ljava/lang/Object;
.source "HtcActiveEngineManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final EPS_OFF:Ljava/lang/String; = "com.htc.htcpowermanager.action.LEAVE_EPS"

.field private static final EPS_ON:Ljava/lang/String; = "com.htc.htcpowermanager.action.ENTER_EPS"

.field private static final HTC_ACTIVE_ENGINE_ENABLE_SENSOR:[Ljava/lang/String;

.field private static final HTC_ACTIVE_ENGINE_SETTING:Ljava/lang/String; = "htc_active_engine_enable"

.field static final HTC_DEBUG:Z

.field private static final PROP_DEBUG_FLAG:Ljava/lang/String; = "sys.aem.debug.flag"

.field private static final PROP_ENGINE_ENABLED:Ljava/lang/String; = "sys.aem.enabled"

.field private static final PROP_HAS_REGISTERED:Ljava/lang/String; = "sys.aem.registered"

.field private static final QUICKBOOT_POWEROFF:Ljava/lang/String; = "com.htc.intent.action.QUICKBOOT_POWEROFF"

.field private static final QUICKBOOT_POWERON:Ljava/lang/String; = "com.htc.intent.action.QUICKBOOT_POWERON"

.field private static final TAG:Ljava/lang/String; = "HtcActiveEngineManager"


# instance fields
.field private mActiveEnableSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field final mLock:Ljava/lang/Object;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hTC Enable Active Engine Sensor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Enable Active Engine Sensor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/HtcActiveEngineManager;->HTC_ACTIVE_ENGINE_ENABLE_SENSOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 65
    iput-object v0, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->registerBootCompletedBroadcastReceiver()V

    .line 77
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->registerSettingsContentObservers()V

    .line 78
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->registerPowerSavingRelatedStatusBroadcastReceiver()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcActiveEngineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcActiveEngineManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineSettingChangedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HtcActiveEngineManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcActiveEngineManager;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineForPowerSavingLocked(Z)V

    return-void
.end method

.method private findActiveEnableSensorLocked()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 202
    .local v1, "s":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/HtcActiveEngineManager;->isActiveEngineEnableSensor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iput-object v1, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    .line 204
    const/4 v3, 0x1

    .line 210
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Landroid/hardware/Sensor;
    .end local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :goto_0
    return v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_2
    move v3, v4

    .line 207
    goto :goto_0

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_3
    const-string v3, "HtcActiveEngineManager"

    const-string v5, "Can\'t find SensorManager"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 210
    goto :goto_0
.end method

.method private handleHtcActiveEngineForPowerSavingLocked(Z)V
    .locals 6
    .param p1, "powerSaving"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_active_engine_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 170
    .local v0, "activeEnabled":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcActiveEngineManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerSaving= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ActiveEngineEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SensorRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->findActiveEnableSensorLocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :goto_1
    return-void

    .end local v0    # "activeEnabled":Z
    :cond_1
    move v0, v2

    .line 169
    goto :goto_0

    .line 175
    .restart local v0    # "activeEnabled":Z
    :cond_2
    if-eqz v0, :cond_4

    .line 178
    if-eqz p1, :cond_5

    iget-boolean v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    if-eqz v3, :cond_5

    .line 179
    iget-object v1, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 180
    sget-boolean v1, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HtcActiveEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    .line 188
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    iget-boolean v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/HtcActiveEngineManager;->updateDebugPropertiesLocked(ZZZ)V

    goto :goto_1

    .line 182
    :cond_5
    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    if-nez v2, :cond_4

    .line 183
    sget-boolean v2, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "HtcActiveEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    goto :goto_2
.end method

.method private handleHtcActiveEngineSettingChangedLocked()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_active_engine_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 117
    .local v0, "activeEnabled":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcActiveEngineManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActiveEngineEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcActiveEngineManager;->findActiveEnableSensorLocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    :goto_1
    return-void

    .end local v0    # "activeEnabled":Z
    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    .line 124
    .restart local v0    # "activeEnabled":Z
    :cond_2
    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    if-nez v3, :cond_5

    .line 125
    sget-boolean v2, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcActiveEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 127
    iput-boolean v1, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    .line 133
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    iget-boolean v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/HtcActiveEngineManager;->updateDebugPropertiesLocked(ZZZ)V

    goto :goto_1

    .line 128
    :cond_5
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    sget-boolean v1, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "HtcActiveEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcActiveEngineManager;->mActiveEnableSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/HtcActiveEngineManager;->mSensorRegistered:Z

    goto :goto_2
.end method

.method private isActiveEngineEnableSensor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "sensorName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    sget-object v3, Lcom/android/server/HtcActiveEngineManager;->HTC_ACTIVE_ENGINE_ENABLE_SENSOR:[Ljava/lang/String;

    array-length v1, v3

    .line 220
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 221
    sget-object v3, Lcom/android/server/HtcActiveEngineManager;->HTC_ACTIVE_ENGINE_ENABLE_SENSOR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    const/4 v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private registerBootCompletedBroadcastReceiver()V
    .locals 3

    .prologue
    .line 82
    new-instance v1, Lcom/android/server/HtcActiveEngineManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcActiveEngineManager$1;-><init>(Lcom/android/server/HtcActiveEngineManager;)V

    .line 94
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "bootFiler":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private registerPowerSavingRelatedStatusBroadcastReceiver()V
    .locals 3

    .prologue
    .line 140
    new-instance v1, Lcom/android/server/HtcActiveEngineManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/HtcActiveEngineManager$3;-><init>(Lcom/android/server/HtcActiveEngineManager;)V

    .line 160
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "powerSavingFilter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v2, "com.htc.htcpowermanager.action.ENTER_EPS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "com.htc.htcpowermanager.action.LEAVE_EPS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 5

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 100
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "htc_active_engine_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "activeEngineEnabledUri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/HtcActiveEngineManager$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/HtcActiveEngineManager$2;-><init>(Lcom/android/server/HtcActiveEngineManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    return-void
.end method

.method private updateDebugPropertiesLocked(ZZZ)V
    .locals 2
    .param p1, "debugFlag"    # Z
    .param p2, "engineEnabled"    # Z
    .param p3, "hasRegistered"    # Z

    .prologue
    .line 237
    const-string v0, "sys.aem.debug.flag"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "sys.aem.enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "sys.aem.registered"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 229
    const-string v0, "HtcActiveEngineManager"

    const-string v1, "AccuracyChanged. ActiveEngine Enable Sensor should be a silent sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 233
    const-string v0, "HtcActiveEngineManager"

    const-string v1, "SensorChanged. ActiveEngine Enable Sensor should be a silent sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method
