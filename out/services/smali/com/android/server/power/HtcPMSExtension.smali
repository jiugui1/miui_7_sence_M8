.class final Lcom/android/server/power/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPMSExtension$LogRecord;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final DISABLE_GC_TOLERANCE_RANGE_MB:J = 0x4L

.field private static final PROHIBITION_WAKELOCK_TAG_CIQ:Ljava/lang/String; = "com.carrieriq.iqagent.Wakelock"

.field private static final PROHIBITION_WAKELOCK_TAG_CIQ_WAKEUP:Ljava/lang/String; = "com.carrieriq.iqagent.service.action.WAKEUP"

.field private static final PROHIBITION_WAKELOCK_TAG_RILJ:Ljava/lang/String; = "RILJ"

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"

.field private static final mHasButtonOrientation:Z

.field private static final mHasPenMenuButton:Z

.field private static mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;


# instance fields
.field private final mActualScreenOffIntent:Landroid/content/Intent;

.field private final mActualScreenOnIntent:Landroid/content/Intent;

.field private final mBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

.field private mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

.field private mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

.field private mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

.field private final mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPenButtonLed:I

.field private mPortraitAmberLed:Lcom/android/server/LightsService$Light;

.field private mPortraitBlueLed:Lcom/android/server/LightsService$Light;

.field private mPortraitButtonLight:Lcom/android/server/LightsService$Light;

.field private mPortraitGreenLed:Lcom/android/server/LightsService$Light;

.field private final mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

.field private final mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ls"    # Lcom/android/server/LightsService;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x50000000

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    .line 34
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension;->mPenButtonLed:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension;->mOrientation:I

    .line 406
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcPMSExtension$2;-><init>(Lcom/android/server/power/HtcPMSExtension;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HPE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcPMSExtension;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPMSExtension;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcPMSExtension;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPMSExtension;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenStateHelper(Z)V

    return-void
.end method

.method protected static canPrintWakeLockLog(ILjava/lang/String;)Z
    .locals 2
    .param p0, "flags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 103
    .local v0, "printLog":Z
    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-nez v1, :cond_1

    const-string v1, "com.carrieriq.iqagent.Wakelock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.carrieriq.iqagent.service.action.WAKEUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 108
    :cond_1
    const v1, 0xffff

    and-int/2addr v1, p0

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v0

    .line 119
    goto :goto_0

    .line 110
    :pswitch_0
    if-nez p1, :cond_3

    .line 111
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_3
    const-string v1, "RILJ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 4
    .param p0, "CATEGORY"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v1, :cond_0

    .line 163
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 165
    :cond_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHtcCustomizationReader: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getWakeLockTypeInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 123
    const-string v0, ""

    .line 125
    .local v0, "info":Ljava/lang/String;
    const v1, 0xffff

    and-int/2addr v1, p0

    sparse-switch v1, :sswitch_data_0

    .line 157
    :goto_0
    return-object v0

    .line 127
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 128
    goto :goto_0

    .line 130
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 131
    goto :goto_0

    .line 133
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 134
    goto :goto_0

    .line 136
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 137
    goto :goto_0

    .line 139
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 140
    goto :goto_0

    .line 142
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    .line 143
    goto :goto_0

    .line 145
    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    .line 146
    goto :goto_0

    .line 148
    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    .line 149
    goto :goto_0

    .line 151
    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    .line 152
    goto :goto_0

    .line 154
    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method private setOrientationButton(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    iget v0, p0, Lcom/android/server/power/HtcPMSExtension;->mOrientation:I

    .line 429
    .local v0, "nOrientation":I
    if-ne v0, v3, :cond_0

    move v1, v2

    .line 433
    .local v1, "showPortrait":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 434
    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 435
    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 443
    :goto_1
    iget v2, p0, Lcom/android/server/power/HtcPMSExtension;->mPenButtonLed:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/power/HtcPMSExtension;->updatePenMenuButtonLed(IIZ)V

    .line 444
    return-void

    .end local v1    # "showPortrait":Z
    :cond_0
    move v1, v3

    .line 429
    goto :goto_0

    .line 437
    .restart local v1    # "showPortrait":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 438
    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_1
.end method

.method private writeScreenStateHelper(Z)V
    .locals 12
    .param p1, "on"    # Z

    .prologue
    .line 250
    const-string v1, "system"

    .line 251
    .local v1, "SYSTEM_PATH":Ljava/lang/String;
    const-string v0, "screen_state"

    .line 253
    .local v0, "SCREEN_FILE_NAME":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 254
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    const/4 v6, 0x0

    .line 258
    .local v6, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 261
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v8, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "screen_state"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 265
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 268
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 269
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    .line 270
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: creating screen_state file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 273
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 274
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: screen_state created."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 279
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_6

    :try_start_2
    const-string v9, "1"

    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 293
    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x0

    .line 294
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "systemDir":Ljava/io/File;
    :goto_2
    const/4 v6, 0x0

    .line 298
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :goto_3
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    .line 299
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " E"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_5
    return-void

    .line 281
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :cond_6
    :try_start_5
    const-string v9, "0"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 283
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "systemDir":Ljava/io/File;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_7

    .line 285
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: could not write to file. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 293
    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 294
    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 295
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    goto :goto_3

    .line 287
    :catch_2
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_9

    .line 289
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: exception occurred. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 293
    :cond_9
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 294
    :cond_a
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 293
    :goto_6
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 294
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/4 v6, 0x0

    .line 292
    :cond_c
    :goto_7
    throw v9

    .line 295
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :catch_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_8
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    goto :goto_8

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "systemDir":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v10

    goto :goto_7

    .line 292
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 287
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 283
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_d
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_e
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method


# virtual methods
.method protected disableGC(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    goto :goto_0
.end method

.method protected isAMOLED()Z
    .locals 6

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 330
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 331
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "hardware.LCD.AMOLED"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    const/4 v2, 0x1

    .line 340
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 341
    const-string v3, "HtcPMSExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAMOLED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 336
    const-string v3, "HtcPMSExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAMOLED: Exception caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyActualScreenState(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 208
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 220
    :goto_0
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "logBody"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    .line 305
    .local v0, "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    .end local v0    # "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/power/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .restart local v0    # "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendScreenStateChange(IJI)V
    .locals 4
    .param p1, "screenChange"    # I
    .param p2, "userActivityTime"    # J
    .param p4, "eventType"    # I

    .prologue
    .line 176
    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSSC: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.SCREEN_CHANGE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "state_change"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "act_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 182
    const-string v1, "event_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/HtcPMSExtension$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/HtcPMSExtension$1;-><init>(Lcom/android/server/power/HtcPMSExtension;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_1
    return-void
.end method

.method protected setOrientation(IIZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "buttonValue"    # I
    .param p3, "showNow"    # Z

    .prologue
    .line 393
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 395
    iput p1, p0, Lcom/android/server/power/HtcPMSExtension;->mOrientation:I

    .line 397
    :cond_0
    if-nez p3, :cond_1

    .line 401
    :cond_1
    return-void
.end method

.method protected updatePenMenuButtonLed(IIZ)V
    .locals 3
    .param p1, "penButtonLed"    # I
    .param p2, "buttonValue"    # I
    .param p3, "showNow"    # Z

    .prologue
    .line 348
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenMenuButtonLed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 350
    iput p1, p0, Lcom/android/server/power/HtcPMSExtension;->mPenButtonLed:I

    .line 352
    :cond_0
    if-nez p3, :cond_1

    .line 356
    :cond_1
    return-void
.end method

.method protected writeScreenState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    if-eqz v0, :cond_0

    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
