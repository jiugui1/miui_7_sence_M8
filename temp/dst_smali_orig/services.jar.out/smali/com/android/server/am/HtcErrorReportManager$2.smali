.class Lcom/android/server/am/HtcErrorReportManager$2;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcErrorReportManager;

.field final synthetic val$carrier:Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$homeRestartIntent:Landroid/content/Intent;

.field final synthetic val$isSystemServer:Z

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$carrier:Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

    iput-object p6, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p9, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isSystemServer:Z

    iput-object p10, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p11, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$homeRestartIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dbox_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "temp_file":Ljava/io/File;
    const/4 v10, 0x0

    .local v10, "fileWriter":Ljava/io/OutputStreamWriter;
    const/4 v13, 0x0

    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .local v12, "finishDump":Z
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .local v16, "os":Ljava/io/OutputStream;
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v14, v2, v3}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v16

    new-instance v11, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    .local v11, "fileWriter":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n----- KERNEL -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v20, "/proc/version"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v11, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_0

    const-string v2, "\n----- CMDLINE -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v20, "/proc/cmdline"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v11, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "\n----- REPORT -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$carrier:Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$carrier:Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

    invoke-virtual {v2}, Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;->getFinlizerTimeoutFlagFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$carrier:Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

    invoke-virtual {v3}, Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;->getFinlizerTimeoutFlagFile()Ljava/io/File;

    move-result-object v3

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v3, v11}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "native_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\n----- LOG FILE -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v3, v11}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "finalizer_timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "\n----- TIMEOUT LOG -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_5
    const-string v2, "\n----- STACK TRACE -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "finalizer_timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_7

    const-string v2, "dalvik.vm.stack-trace-file"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "tracesPath":Ljava/lang/String;
    if-eqz v19, :cond_1a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v18, "tracesFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "\n----- LOG FILE -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v0, v11}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .end local v18    # "tracesFile":Ljava/io/File;
    .end local v19    # "tracesPath":Ljava/lang/String;
    :cond_7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, "setting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .local v15, "lines":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "anr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "HTC_HOME_RESTART"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "HTC_APP_NATIVE_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "finalizer_timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_20

    const/16 v15, 0x1000

    :cond_9
    :goto_1
    if-lez v15, :cond_a

    const-string v2, "\n----- SYSTEM LOG -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "threadtime"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v20

    const/16 v21, 0x0

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_21

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v3, v0, v11, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    const-string v2, "\n----- EVENT LOG -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "threadtime"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-b"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "events"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v20

    const/16 v21, 0x0

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v3, v0, v11, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    const-string v2, "\n----- RADIO LOG -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "threadtime"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-b"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "radio"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v20

    const/16 v21, 0x0

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_23

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v3, v0, v11, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    const-string v2, "\n----- KERNEL MSG -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;I)V
    invoke-static {v2, v11, v15}, Lcom/android/server/am/HtcErrorReportManager;->access$300(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/OutputStreamWriter;I)V

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isSystemServer:Z

    if-eqz v2, :cond_a

    const-string v2, "\n----- PROCRANK (procrank) -----\n"

    invoke-virtual {v11, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v20, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "/system/xbin/procrank"

    aput-object v22, v2, v21

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v21, 0x0

    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v2, :cond_24

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v3, v0, v11, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isSystemServer:Z

    if-nez v2, :cond_b

    const-string v2, "/data"

    invoke-static {v2, v11}, Lcom/android/server/am/HtcErrorReportManager;->dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isSystemServer:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v11}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V

    :cond_c
    if-eqz v11, :cond_27

    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    .end local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_6
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "entryStartTime":J
    const/16 v5, 0x8

    .local v5, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "SYSTEM_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_10
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_11

    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "End---add error logs to dropbox"

    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v12, :cond_13

    const-string v2, "home_restart"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "dying_provider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$homeRestartIntent:Landroid/content/Intent;

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadHomeRestart(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->access$600(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_13
    :goto_8
    move-object v13, v14

    .end local v5    # "flags":I
    .end local v6    # "entryStartTime":J
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "lines":I
    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v17    # "setting":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_14
    :goto_9
    return-void

    .end local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v18    # "tracesFile":Ljava/io/File;
    .restart local v19    # "tracesPath":Ljava/lang/String;
    :cond_15
    :try_start_5
    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "traces.txt dosen\'t exist!"

    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .end local v18    # "tracesFile":Ljava/io/File;
    .end local v19    # "tracesPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v16    # "os":Ljava/io/OutputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_a
    :try_start_6
    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "Error in dumping error information"

    invoke-static {v2, v3, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v10, :cond_16

    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_17
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_18

    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "End---add error logs to dropbox"

    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-eqz v12, :cond_14

    const-string v2, "home_restart"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "dying_provider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$homeRestartIntent:Landroid/content/Intent;

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadHomeRestart(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->access$600(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "Error in finally block"

    invoke-static {v2, v3, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v19    # "tracesPath":Ljava/lang/String;
    :cond_1a
    :try_start_8
    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "traces.txt path: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .end local v19    # "tracesPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v16    # "os":Ljava/io/OutputStream;
    .restart local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_b
    if-eqz v10, :cond_1b

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1c
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v20, "End---add error logs to dropbox"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v12, :cond_1f

    const-string v3, "home_restart"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "dying_provider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadHomeRestart(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$600(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_1f
    :goto_c
    throw v2

    .end local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "lines":I
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v17    # "setting":Ljava/lang/String;
    :cond_20
    const/16 v15, 0x400

    goto/16 :goto_1

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5

    .end local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v5    # "flags":I
    .restart local v6    # "entryStartTime":J
    .restart local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    :cond_25
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .end local v5    # "flags":I
    .end local v6    # "entryStartTime":J
    .end local v15    # "lines":I
    .end local v17    # "setting":Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "flags":I
    .restart local v6    # "entryStartTime":J
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "lines":I
    .restart local v17    # "setting":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_7

    .end local v5    # "flags":I
    .end local v6    # "entryStartTime":J
    .end local v15    # "lines":I
    .end local v17    # "setting":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v16    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v20, "Error in finally block"

    move-object/from16 v0, v20

    invoke-static {v3, v0, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "flags":I
    .restart local v6    # "entryStartTime":J
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "lines":I
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v17    # "setting":Ljava/lang/String;
    :catch_4
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v3, "Error in finally block"

    invoke-static {v2, v3, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .end local v5    # "flags":I
    .end local v6    # "entryStartTime":J
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "lines":I
    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v17    # "setting":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v8

    goto/16 :goto_a

    .end local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "lines":I
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v17    # "setting":Ljava/lang/String;
    :cond_27
    move-object v10, v11

    .end local v11    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v10    # "fileWriter":Ljava/io/OutputStreamWriter;
    goto/16 :goto_6
.end method
