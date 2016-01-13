.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;
    }
.end annotation


# static fields
.field private static final DYING_PROCESSES_COLUMN_COUNT:I = 0x14

.field private static final DYING_PROCESSES_FORMAT:[I

.field static HIGH_MEM_MB_SIZE:I = 0x0

.field static HTC_BROWSER:Ljava/lang/String; = null

.field static final HTC_CAR_HOME:Ljava/lang/String; = "com.htc.AutoMotive"

.field static final HTC_DIALER:Ljava/lang/String; = "com.htc.htcdialer"

.field static final HTC_LAUNCHER:Ljava/lang/String; = "com.htc.launcher"

.field static HTC_MAIL:Ljava/lang/String; = null

.field static HTC_MESSAGE:Ljava/lang/String; = null

.field static IS_LITE_SENSE:Z = false

.field static final TAG:Ljava/lang/String; = "HtcAmsUtil"

.field static sCpuMaxFreq:J

.field static sFirstBgProcWhiteList:[Ljava/lang/String;

.field static sHasDynamicSwitch:Z

.field static sHasVzwLogger:Z

.field static sIsHtcStyleRecentApp:Z

.field static sIsSupport3LM:Z

.field static sMaxRecentTasks:I

.field static sMaxVisibletasks:I

.field static sQuickBootWhiteList:[Ljava/lang/String;

.field static sSenseVersion:Ljava/lang/String;

.field static sTotalRamSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->IS_LITE_SENSE:Z

    .line 34
    const-string v1, "com.htc.sense.browser"

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->HTC_BROWSER:Ljava/lang/String;

    .line 35
    const-string v1, "com.htc.sense.mail"

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->HTC_MAIL:Ljava/lang/String;

    .line 36
    const-string v1, " com.htc.sense.mms"

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->HTC_MESSAGE:Ljava/lang/String;

    .line 38
    const/4 v1, -0x1

    sput v1, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    .line 39
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    .line 42
    const-string v1, "5.0"

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sSenseVersion:Ljava/lang/String;

    .line 43
    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sIsHtcStyleRecentApp:Z

    .line 44
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    .line 45
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    .line 46
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    .line 47
    sput v5, Lcom/android/server/am/HtcAmsUtil;->sMaxRecentTasks:I

    .line 48
    sput v6, Lcom/android/server/am/HtcAmsUtil;->sMaxVisibletasks:I

    .line 49
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.process.acore"

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    .line 50
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "system"

    aput-object v2, v1, v3

    const-string v2, "com.android.phone"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "com.android.nfc"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.android.systemui"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.process.acore"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.htc.usertrialfeedback"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.android.smith"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.google.android.apps.uploader"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.google.process.gapps"

    aput-object v3, v1, v2

    const-string v2, "com.htc.launcher"

    aput-object v2, v1, v6

    const/16 v2, 0xa

    const-string v3, "com.htc.htcdialer"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sQuickBootWhiteList:[Ljava/lang/String;

    .line 63
    const/16 v1, 0x514

    sput v1, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    .line 132
    new-array v1, v5, [I

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 135
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/16 v2, 0x203a

    aput v2, v1, v0

    .line 136
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x200a

    aput v3, v1, v2

    .line 134
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method static getCpuMaxFreq()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 249
    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    .line 252
    .local v0, "SINGLE_LONG_FORMAT":[I
    new-array v1, v7, [J

    .line 253
    .local v1, "longOut":[J
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 255
    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    .line 257
    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    return-wide v2
.end method

.method static getMaxHiddenAppsCount()I
    .locals 5

    .prologue
    .line 228
    sget v1, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 229
    .local v1, "result":I
    const-string v2, "customize_max_hidden_apps"

    sget v3, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "customizeMaxHiddenApps":I
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customizeMaxHiddenApps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget v2, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-eq v0, v2, :cond_0

    .line 234
    move v1, v0

    .line 243
    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_CACHED_APPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1
.end method

.method static getProcessNameFromPid(ILcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .locals 3
    .param p0, "myPid"    # I
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 174
    monitor-enter p1

    .line 175
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 176
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 177
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v2, :cond_0

    .line 179
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit p1

    .line 183
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v2

    .line 175
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 183
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p1

    goto :goto_1

    .line 184
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getTotalRamSize()I
    .locals 3

    .prologue
    .line 213
    sget v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    sput v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    .line 215
    const-string v0, "HtcAmsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalRamStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    sget v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    return v0
.end method

.method static isDyingProcess(IJ)Z
    .locals 17
    .param p0, "pid"    # I
    .param p1, "createTime"    # J

    .prologue
    .line 141
    const/16 v13, 0x14

    :try_start_0
    new-array v12, v13, [J

    .line 142
    .local v12, "outLongs":[J
    const-string v13, "/proc/dying_processes"

    sget-object v14, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v12, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-nez v13, :cond_0

    .line 143
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes not available"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v13, 0x0

    .line 168
    .end local v12    # "outLongs":[J
    :goto_0
    return v13

    .line 146
    .restart local v12    # "outLongs":[J
    :cond_0
    const/4 v13, 0x0

    aget-wide v13, v12, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 147
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes no record"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v13, 0x0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v13, 0x14

    if-ge v7, v13, :cond_4

    .line 151
    aget-wide v4, v12, v7

    .line 152
    .local v4, "dpid":J
    add-int/lit8 v13, v7, 0x1

    aget-wide v8, v12, v13

    .line 153
    .local v8, "jiffyFromSignalTime":J
    move/from16 v0, p0

    int-to-long v13, v0

    cmp-long v13, v13, v4

    if-nez v13, :cond_3

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 155
    .local v10, "now":J
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v8

    sub-long v2, v10, v13

    .line 156
    .local v2, "deadTime":J
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: deadTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; createTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    cmp-long v13, v2, p1

    if-lez v13, :cond_2

    .line 158
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dying proc:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v13, 0x1

    goto :goto_0

    .line 161
    :cond_2
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dead past proc:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2    # "deadTime":J
    .end local v10    # "now":J
    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    .line 165
    .end local v4    # "dpid":J
    .end local v7    # "i":I
    .end local v8    # "jiffyFromSignalTime":J
    .end local v12    # "outLongs":[J
    :catch_0
    move-exception v6

    .line 166
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "HtcAmsUtil"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static isHighMemDevice()Z
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getTotalRamSize()I

    move-result v0

    sget v1, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadCustomizationConfig()V
    .locals 8

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 68
    .local v2, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v2, :cond_0

    .line 69
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get HtcCustomizationManager instance"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v5, "Android_App_Framework"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 75
    .local v3, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v3, :cond_4

    .line 76
    const-string v5, "AMS_feature_recentApp_MaxRecentTasks"

    sget v6, Lcom/android/server/am/HtcAmsUtil;->sMaxRecentTasks:I

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/am/HtcAmsUtil;->sMaxRecentTasks:I

    .line 77
    const-string v5, "AMS_feature_recentApp_MaxVisibleTasks"

    sget v6, Lcom/android/server/am/HtcAmsUtil;->sMaxVisibletasks:I

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/am/HtcAmsUtil;->sMaxVisibletasks:I

    .line 78
    const-string v5, "AMS_feature_FirstBackgroundProcess_white_list"

    sget-object v6, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_1

    sput-object v0, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    .line 80
    :cond_1
    const-string v5, "AMS_feature_QuickBoot_white_list"

    sget-object v6, Lcom/android/server/am/HtcAmsUtil;->sQuickBootWhiteList:[Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    sput-object v0, Lcom/android/server/am/HtcAmsUtil;->sQuickBootWhiteList:[Ljava/lang/String;

    .line 86
    .end local v0    # "array":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v5, "SystemUI"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    const-string v5, "support_HtcStyleRecentApp"

    sget-boolean v6, Lcom/android/server/am/HtcAmsUtil;->sIsHtcStyleRecentApp:Z

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sIsHtcStyleRecentApp:Z

    .line 93
    :goto_2
    const-string v5, "System"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    const-string v5, "extra_sense_version"

    sget-object v6, Lcom/android/server/am/HtcAmsUtil;->sSenseVersion:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "senseVer":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 97
    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/HtcAmsUtil;->IS_LITE_SENSE:Z

    .line 98
    sput-object v4, Lcom/android/server/am/HtcAmsUtil;->sSenseVersion:Ljava/lang/String;

    .line 99
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x35

    if-gt v5, v6, :cond_3

    .line 100
    const-string v5, "com.android.browser"

    sput-object v5, Lcom/android/server/am/HtcAmsUtil;->HTC_BROWSER:Ljava/lang/String;

    .line 101
    const-string v5, "com.htc.android.mail"

    sput-object v5, Lcom/android/server/am/HtcAmsUtil;->HTC_MAIL:Ljava/lang/String;

    .line 102
    const-string v5, "com.android.mms"

    sput-object v5, Lcom/android/server/am/HtcAmsUtil;->HTC_MESSAGE:Ljava/lang/String;

    .line 105
    :cond_3
    const-string v5, "support_3lm"

    sget-boolean v6, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    .line 110
    .end local v4    # "senseVer":Ljava/lang/String;
    :goto_3
    const-string v5, "Android_Kernel"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    const-string v5, "support_dynamic_switch"

    sget-boolean v6, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    .line 117
    :goto_4
    const-string v5, "VZWQualityLogger"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 118
    if-eqz v3, :cond_8

    .line 119
    const-string v5, "support_quality_logger"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    .line 123
    :goto_5
    const-string v5, "HtcAmsUtil"

    const-string v6, "loadCustomizationConfig completed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    .end local v3    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "HtcAmsUtil"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_4
    :try_start_1
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get Android_App_Framework customization reader"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 90
    :cond_5
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get SystemUI customization reader"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 107
    :cond_6
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get System customization reader"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 114
    :cond_7
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get Android_Kernel customization reader"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 121
    :cond_8
    const-string v5, "HtcAmsUtil"

    const-string v6, "Cannot get VZWQualityLogger reader"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method static notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 320
    :try_start_0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 322
    .local v2, "isPreLoaded":Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.VZW_LOGGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.htc.vzwqualitylogger"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v4, "event_code"

    if-eqz v2, :cond_2

    const-string v3, "Q004"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 329
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :goto_2
    return-void

    .line 320
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 324
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isPreLoaded":Z
    :cond_2
    const-string v3, "Q006"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    const-string v4, "Failed to notify VzwLogger"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static resolveActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 190
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 192
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v0

    .line 192
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method
