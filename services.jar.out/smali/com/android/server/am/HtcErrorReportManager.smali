.class public Lcom/android/server/am/HtcErrorReportManager;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorReportManager$Log;,
        Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_FOR_DYING_PROVIDER:Ljava/lang/String; = "dying_provider"

.field public static final EVENT_TYPE_FOR_FINALIZER_TIMEOUT:Ljava/lang/String; = "finalizer_timeout"

.field public static final EVENT_TYPE_FOR_HOME_RESTART:Ljava/lang/String; = "home_restart"

.field static final IS_SHIPPING_ROM:Z

.field static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field public static final SYSTEM_CRASH_ENTRY:Ljava/lang/String; = "/data/system/last_crash_msg"

.field static final TAG:Ljava/lang/String;

.field static final htcDebugFlag:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/server/am/HtcErrorReportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    .line 67
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    .line 183
    new-instance v0, Lcom/android/server/am/HtcErrorReportManager$1;

    invoke-direct {v0}, Lcom/android/server/am/HtcErrorReportManager$1;-><init>()V

    sput-object v0, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 79
    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/OutputStreamWriter;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Ljava/lang/ProcessBuilder;
    .param p2, "x2"    # Ljava/io/OutputStreamWriter;
    .param p3, "x3"    # Ljava/lang/Integer;
    .param p4, "x4"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/OutputStreamWriter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorReportManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->notifyUploadHomeRestart(Landroid/content/Intent;)V

    return-void
.end method

.method private final createAppErrorIntentForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "eventType"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "dropboxTag":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;

    move-result-object v1

    .line 648
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, "result":Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 650
    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    const-string v3, "isM10Process"

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Landroid/os/Debug;->native_IsM10Process(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    .end local v0    # "dropboxTag":Ljava/lang/String;
    .end local v1    # "report":Landroid/app/ApplicationErrorReport;
    .end local v2    # "result":Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dropboxTag"    # Ljava/lang/String;

    .prologue
    .line 739
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 740
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 741
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 742
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 743
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->errorOccurTime:J

    iput-wide v1, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 744
    iput-object p2, v0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 745
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 746
    return-object v0

    .line 745
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 766
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v3, "entry":Ljava/io/File;
    const/4 v6, 0x0

    .line 768
    .local v6, "writer":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 771
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 772
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 775
    const/4 v3, 0x0

    .line 776
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 777
    .end local v3    # "entry":Ljava/io/File;
    .local v4, "entry":Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 779
    .end local v4    # "entry":Ljava/io/File;
    .restart local v3    # "entry":Ljava/io/File;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 786
    if-eqz v0, :cond_1

    .line 787
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 792
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 793
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_1
    move-object v6, v7

    .line 798
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_3
    :goto_2
    return-void

    .line 782
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Error in storing log entry message"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 786
    if-eqz v0, :cond_4

    .line 787
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 792
    :cond_4
    :goto_4
    if-eqz v6, :cond_3

    .line 793
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 794
    :catch_1
    move-exception v5

    .line 795
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Error in closing FileWriter writer"

    invoke-static {v8, v9, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 785
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 786
    :goto_5
    if-eqz v0, :cond_5

    .line 787
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 792
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 793
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 785
    :cond_6
    :goto_7
    throw v8

    .line 788
    :catch_2
    move-exception v5

    .line 789
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Error in closing BufferedReader br"

    invoke-static {v9, v10, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 794
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 795
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Error in closing FileWriter writer"

    invoke-static {v9, v10, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 788
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 789
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Error in closing BufferedReader br"

    invoke-static {v8, v9, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 788
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v5

    .line 789
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Error in closing BufferedReader br"

    invoke-static {v8, v9, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 794
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 795
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Error in closing FileWriter writer"

    invoke-static {v8, v9, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 785
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "entry":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "entry":Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "entry":Ljava/io/File;
    .restart local v3    # "entry":Ljava/io/File;
    goto :goto_5

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 782
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "entry":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "entry":Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "entry":Ljava/io/File;
    .restart local v3    # "entry":Ljava/io/File;
    goto :goto_3

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_9
    move-exception v2

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 951
    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_0

    .line 952
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "HtcFeedback is dumping status information"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    :try_start_0
    const-string v1, "\n----- DEVICE STATUS -----"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 955
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 956
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 957
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "dumping error"

    invoke-static {v1, v2, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 1039
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1040
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1043
    .local v6, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "<UNKNOWN>"

    .line 1046
    .local v1, "defaultStr":Ljava/lang/String;
    :try_start_0
    const-string v8, "\n----- POST-INSTALLED HTC APP -----\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1048
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1049
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1050
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1051
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    .line 1048
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1054
    :cond_3
    invoke-static {v0}, Lcom/android/server/am/HtcErrorReportManager;->isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1057
    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-eqz v8, :cond_2

    .line 1060
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1062
    .local v4, "installerPackageName":Ljava/lang/String;
    const-string v8, "PackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1063
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_5

    move-object v8, v1

    :goto_3
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1064
    const-string v8, ",VersionName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1065
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object v8, v1

    :goto_4
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1066
    const-string v8, ",VersionCode="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1067
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1068
    const-string v8, ",InstallerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1069
    if-nez v4, :cond_4

    move-object v4, v1

    .end local v4    # "installerPackageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1070
    const-string v8, "\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1072
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1073
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "IOException in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1063
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "i":I
    .restart local v4    # "installerPackageName":Ljava/lang/String;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    .line 1065
    :cond_6
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1074
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 1075
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Exception in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 751
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_3

    .line 752
    :cond_0
    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "finalizer_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    :cond_1
    const-string v0, "SYSTEM_CRASH"

    .line 761
    :goto_0
    return-object v0

    .line 755
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_3
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->isHtcLauncher:Z

    if-eqz v0, :cond_5

    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "home_restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dying_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "native_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    :cond_4
    const-string v0, "HTC_HOME_RESTART"

    goto :goto_0

    .line 758
    :cond_5
    const-string v0, "finalizer_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 759
    const-string v0, "HTC_APP_CRASH"

    goto :goto_0

    .line 761
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_APP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final getProcessRecordFromPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .line 660
    if-gez p1, :cond_0

    move-object v0, v2

    .line 670
    :goto_0
    return-object v0

    .line 663
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 664
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 665
    iget-object v4, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 666
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_1

    .line 667
    monitor-exit v3

    goto :goto_0

    .line 671
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 664
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 670
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method private final getProcessRecordFromPid_fast(I)Lcom/android/server/am/ProcessRecord;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 675
    if-gez p1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v1

    .line 678
    :cond_1
    const/4 v0, 0x0

    .line 679
    .local v0, "pidsSelfLocked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 681
    if-eqz v0, :cond_0

    .line 682
    monitor-enter v0

    .line 683
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 684
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0

    goto :goto_0

    .line 685
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getReadableSize(J)Ljava/lang/String;
    .locals 5
    .param p0, "size"    # J

    .prologue
    const-wide/16 v2, 0x400

    .line 1027
    const-string v0, "K"

    .line 1028
    .local v0, "unit":Ljava/lang/String;
    div-long/2addr p0, v2

    .line 1029
    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 1030
    div-long/2addr p0, v2

    .line 1031
    const-string v0, "M"

    .line 1034
    :cond_0
    const-string v1, "%4d%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 3
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 208
    const-string v0, ".finalize() timed out after "

    .line 209
    .local v0, "msgPattern":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string v2, ".finalize() timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "[isFinalizerTimeoutMessage]: True"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1082
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v0, v4

    .line 1083
    .local v0, "isPreloadAP":Z
    :goto_0
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    move v2, v4

    .line 1084
    .local v2, "isUpdatedPreloadAP":Z
    :goto_1
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    .line 1085
    .local v1, "isSystemApp":Z
    :goto_2
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    move v3, v4

    .line 1087
    .local v3, "isUpdatedSystemApp":Z
    :goto_3
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 1096
    :cond_0
    :goto_4
    return v5

    .end local v0    # "isPreloadAP":Z
    .end local v1    # "isSystemApp":Z
    .end local v2    # "isUpdatedPreloadAP":Z
    .end local v3    # "isUpdatedSystemApp":Z
    :cond_1
    move v0, v5

    .line 1082
    goto :goto_0

    .restart local v0    # "isPreloadAP":Z
    :cond_2
    move v2, v5

    .line 1083
    goto :goto_1

    .restart local v2    # "isUpdatedPreloadAP":Z
    :cond_3
    move v1, v5

    .line 1084
    goto :goto_2

    .restart local v1    # "isSystemApp":Z
    :cond_4
    move v3, v5

    .line 1085
    goto :goto_3

    .line 1091
    .restart local v3    # "isUpdatedSystemApp":Z
    :cond_5
    if-eqz v3, :cond_6

    move v5, v4

    .line 1092
    goto :goto_4

    .line 1093
    :cond_6
    if-nez v1, :cond_0

    move v5, v4

    .line 1094
    goto :goto_4
.end method

.method private isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logMarketAppInfo(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 151
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    .line 152
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 153
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "installer":Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Market AP] processName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", htcApp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", gmsApp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isSystem="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", installer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isReportHtcError="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v5}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v1    # "installer":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_2
    return-void

    .line 157
    .restart local v1    # "installer":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get installer"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 167
    .end local v1    # "installer":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "proc or proc.info or pm is null"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 12
    .param p1, "processBuilder"    # Ljava/lang/ProcessBuilder;
    .param p2, "writer"    # Ljava/io/OutputStreamWriter;
    .param p3, "lines"    # Ljava/lang/Integer;
    .param p4, "needPrintExceptionToLogfile"    # Z

    .prologue
    .line 840
    const/4 v3, 0x0

    .line 841
    .local v3, "input":Ljava/io/BufferedReader;
    if-nez p3, :cond_1

    const/4 v7, 0x0

    .line 842
    .local v7, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_0
    const/4 v5, 0x0

    .line 843
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 845
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 847
    .local v6, "process":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 849
    :goto_2
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v4, "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 852
    if-eqz v7, :cond_2

    .line 853
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 854
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 855
    .local v8, "tmp":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v0, v9

    .line 857
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    .line 841
    .end local v0    # "count":I
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 860
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "process":Ljava/lang/Process;
    .restart local v7    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 871
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 873
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :goto_4
    if-eqz p4, :cond_3

    .line 874
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 881
    :cond_3
    :goto_5
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 885
    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 887
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_7
    return-void

    .line 863
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :cond_5
    if-nez v7, :cond_7

    .line 864
    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 881
    :try_start_a
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 885
    :goto_8
    if-eqz v4, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_9
    move-object v3, v4

    .line 865
    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto :goto_7

    .line 868
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :cond_7
    :goto_a
    :try_start_c
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 869
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 880
    :catchall_0
    move-exception v9

    move-object v3, v4

    .line 881
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :goto_b
    :try_start_d
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 885
    :goto_c
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 880
    :cond_8
    :goto_d
    throw v9

    .line 881
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :cond_9
    :try_start_f
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 885
    :goto_e
    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_a
    :goto_f
    move-object v3, v4

    .line 886
    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto :goto_7

    .line 876
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 877
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_11
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Error running process"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    .line 880
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    goto :goto_b

    .line 882
    :catch_2
    move-exception v2

    .line 883
    .local v2, "e1":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "flush exception"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 885
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_d

    .line 882
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 883
    .restart local v2    # "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 885
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 882
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_6
    move-exception v2

    .line 883
    .restart local v2    # "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 885
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_9

    .line 882
    :catch_8
    move-exception v2

    .line 883
    .restart local v2    # "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 885
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_9
    move-exception v9

    goto :goto_f

    .line 871
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    goto/16 :goto_4

    .line 848
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_b
    move-exception v9

    goto/16 :goto_2

    .line 847
    :catch_c
    move-exception v9

    goto/16 :goto_1
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 823
    const/4 v2, 0x0

    .line 824
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 826
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 828
    .local v0, "count":I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 832
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 833
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 837
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 831
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 835
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    move-object v2, v3

    .line 836
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .line 835
    .end local v0    # "count":I
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_5
    throw v5

    :catch_1
    move-exception v6

    goto :goto_5

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_4

    .line 832
    .end local v0    # "count":I
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/OutputStreamWriter;
    .param p3, "lines"    # Ljava/lang/Integer;

    .prologue
    .line 801
    const/4 v2, 0x0

    .line 802
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 803
    .local v4, "line":Ljava/lang/String;
    if-nez p3, :cond_4

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 805
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 807
    .local v0, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 810
    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 814
    :cond_1
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 818
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v2, v3

    .line 820
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-void

    .line 803
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 815
    :catch_0
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_5
    throw v5

    :catch_2
    move-exception v6

    goto :goto_5

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_4

    .line 815
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private notifyUploadHomeRestart(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 610
    if-eqz p1, :cond_0

    sget-boolean v7, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-eqz v7, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "notifyUploadHomeRestart"

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v4, 0x0

    .line 614
    .local v4, "tag":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 615
    .local v5, "time":J
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.BUGREPORT"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v3, "reportIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 617
    const-string v7, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport;

    .line 618
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    if-eqz v2, :cond_2

    .line 619
    iget-object v4, v2, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 620
    iget-wide v5, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 622
    :cond_2
    const/4 v1, 0x0

    .line 623
    .local v1, "entry":Landroid/os/DropBoxManager$Entry;
    iget-object v7, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 624
    .local v0, "dbox":Landroid/os/DropBoxManager;
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v1

    .line 625
    if-nez v1, :cond_3

    .line 626
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot get entry from dbox, skip. tag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_3
    const-string v7, "fromDropBox"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    if-eqz v1, :cond_4

    .line 631
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 633
    :cond_4
    const-string v7, "tag"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v7, "time"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 636
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.htc.reportagent"

    const-string v9, "com.htc.reportagent.receiver.ReportAgentReceiver"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 637
    iget-object v7, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v8, "com.htc.permission.UPLOAD_LOG"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 639
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send intent tag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "send home restart broadcast to reportagent"

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    .locals 7
    .param p0, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 1000
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1002
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v2, "statFs":Landroid/os/StatFs;
    const-string v3, "Filesystem               Size     Used     Free   Blksize\n"

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1005
    const-string v3, "%-20s  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1007
    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1009
    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1011
    const-string v3, "   "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1024
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "statFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-void

    .line 1015
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    .line 1016
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get the path of data directory"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1019
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "IOException in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1021
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Exception in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 9
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v3, 0x0

    .line 965
    .local v3, "isReadOnly":Z
    const/4 v1, 0x0

    .line 966
    .local v1, "foutput":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 968
    .local v4, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".testReadOnly.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    .end local v4    # "tmp":Ljava/io/File;
    .local v5, "tmp":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 974
    .end local v1    # "foutput":Ljava/io/FileOutputStream;
    .local v2, "foutput":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    .line 976
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    move-object v1, v2

    .line 982
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v1    # "foutput":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 983
    const-string v6, "\n/data read-only=true\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 988
    :goto_2
    if-eqz v4, :cond_2

    .line 989
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 993
    :cond_2
    :goto_3
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t write: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 972
    const/4 v3, 0x1

    .line 974
    if-eqz v1, :cond_1

    .line 976
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 977
    :catch_1
    move-exception v0

    .line 978
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v1, :cond_3

    .line 976
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 974
    :cond_3
    :goto_6
    throw v6

    .line 985
    :cond_4
    const-string v6, "\n/data read-only=false\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 990
    :catch_2
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 977
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 978
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "sIsDataPartitionReadOnly error: "

    invoke-static {v7, v8, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 977
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "foutput":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_4
    move-exception v0

    .line 978
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v1    # "foutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    goto :goto_5

    .line 970
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    goto :goto_4
.end method

.method private writeKernelLog(Ljava/io/OutputStreamWriter;I)V
    .locals 13
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;
    .param p2, "lines"    # I

    .prologue
    .line 553
    const/4 v8, 0x0

    .line 554
    .local v8, "localSocket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 555
    .local v4, "input":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 556
    .local v7, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 558
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .local v9, "localSocket":Landroid/net/LocalSocket;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x5

    if-ge v2, v10, :cond_0

    .line 561
    :try_start_1
    new-instance v10, Landroid/net/LocalSocketAddress;

    const-string v11, "htc_dk"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v10, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v9, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 562
    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 567
    :cond_0
    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-nez v10, :cond_5

    .line 568
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Cannot connect to socket!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 592
    if-eqz v4, :cond_1

    .line 594
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 595
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 598
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 600
    :try_start_3
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    .line 601
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_2
    :goto_2
    move-object v8, v9

    .line 605
    .end local v2    # "i":I
    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    :cond_3
    :goto_3
    return-void

    .line 564
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v2    # "i":I
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :cond_4
    :try_start_4
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Connect socket fail, wait 1 second..."

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_5
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_6

    .line 573
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 574
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[writeKernelLog] Connect!, fd = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_6
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 578
    .end local v4    # "input":Ljava/io/BufferedReader;
    .local v5, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 579
    .local v0, "count":I
    :cond_7
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 580
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 581
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_7

    .line 582
    const-string v10, "\n\n[[TRUNCATED]]"

    invoke-virtual {p1, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 586
    :cond_8
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 592
    if-eqz v5, :cond_9

    .line 594
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 595
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 598
    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    .line 600
    :try_start_7
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    .line 601
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_a
    :goto_5
    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .line 604
    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_3

    .line 587
    .end local v0    # "count":I
    .end local v2    # "i":I
    :catch_0
    move-exception v6

    .line 588
    .local v6, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_8
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 592
    if-eqz v4, :cond_b

    .line 594
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 595
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 598
    :cond_b
    :goto_7
    if-eqz v8, :cond_3

    .line 600
    :try_start_a
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 601
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 602
    :catch_1
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    :goto_8
    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 589
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 590
    .local v3, "ie":Ljava/lang/InterruptedException;
    :goto_9
    :try_start_b
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 592
    if-eqz v4, :cond_c

    .line 594
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 595
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 598
    :cond_c
    :goto_a
    if-eqz v8, :cond_3

    .line 600
    :try_start_d
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 601
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    .line 602
    :catch_3
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    goto :goto_8

    .line 592
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_b
    if-eqz v4, :cond_d

    .line 594
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 595
    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_d

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close input stream success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 598
    :cond_d
    :goto_c
    if-eqz v8, :cond_e

    .line 600
    :try_start_f
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 601
    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_e

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close localSocket success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 592
    :cond_e
    :goto_d
    throw v10

    .line 596
    :catch_4
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 602
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 596
    :catch_6
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v3    # "ie":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v3    # "ie":Ljava/lang/InterruptedException;
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v2    # "i":I
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_8
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 602
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 596
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :catch_a
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 602
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 592
    .end local v0    # "count":I
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_b

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_b

    .line 589
    .end local v0    # "count":I
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_c
    move-exception v3

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_9

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_d
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_9

    .line 587
    .end local v0    # "count":I
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_e
    move-exception v6

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_6

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_f
    move-exception v6

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method


# virtual methods
.method public addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 11
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 223
    move-object v2, p1

    .line 224
    .local v2, "eventTypeString":Ljava/lang/String;
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcErrorReportManager;->isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v2, "finalizer_timeout"

    .line 227
    :cond_0
    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;)V

    .line 228
    return-void
.end method

.method public addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;)V
    .locals 28
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p9, "carrier"    # Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;

    .prologue
    .line 237
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Begin---add error logs to dropbox"

    invoke-static {v4, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z

    move-result v12

    .line 243
    .local v12, "isSystemServer":Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "dropboxTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v7, "dropbox"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    .line 248
    .local v13, "dbox":Landroid/os/DropBoxManager;
    if-eqz v13, :cond_0

    invoke-virtual {v13, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 253
    .local v17, "entryTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Type: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    if-eqz v12, :cond_3

    .line 256
    const-string v4, "Process: system_server\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :goto_1
    const-string v4, "Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v4, "Device Active Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v7}, Lcom/htc/server/HtcDeviceInfoManager;->getDeviceAliveTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    if-eqz p2, :cond_9

    .line 264
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->errorTag:Ljava/lang/String;

    .line 265
    move-wide/from16 v0, v17

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/server/am/ProcessRecord;->errorOccurTime:J

    .line 267
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    .line 268
    .local v19, "flags":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v25

    .line 269
    .local v25, "pm":Landroid/content/pm/IPackageManager;
    const-string v4, "Flags: 0x"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x10

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_4

    .line 272
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 273
    .local v24, "pkg":Ljava/lang/String;
    const-string v4, "Package: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    if-eqz v25, :cond_2

    .line 276
    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v4, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 277
    .local v23, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v23, :cond_2

    .line 278
    const-string v4, " v"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 280
    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .end local v23    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_3
    :try_start_2
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 258
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v24    # "pkg":Ljava/lang/String;
    .end local v25    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    const-string v4, "Process: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 284
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v24    # "pkg":Ljava/lang/String;
    .restart local v25    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v16

    .line 285
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting package info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v4, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 289
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v24    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 290
    .local v16, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in get Package:"

    move-object/from16 v0, v16

    invoke-static {v4, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_13

    .line 293
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_11

    .line 294
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_5
    :goto_4
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_6

    .line 321
    const-string v4, "System App: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_6
    if-eqz v25, :cond_7

    .line 324
    :try_start_4
    const-string v4, "Installed By: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 331
    :cond_7
    :goto_6
    const-string v4, "anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "crash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 332
    :cond_8
    const-string v4, "App Active Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/server/HtcDeviceInfoManager;->getAppAliveTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v25    # "pm":Landroid/content/pm/IPackageManager;
    :cond_9
    if-eqz p3, :cond_a

    .line 336
    const-string v4, "Activity: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_a
    if-eqz p4, :cond_b

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_b

    if-eqz p2, :cond_b

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v7, :cond_b

    .line 339
    const-string v4, "Parent-Process: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_b
    if-eqz p4, :cond_c

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_c

    .line 342
    const-string v4, "Parent-Activity: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_c
    if-eqz p5, :cond_d

    .line 345
    const-string v4, "Subject: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_d
    const-string v4, "Build: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v4, "Project Branch: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.build.project"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v4, "Changelist: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.build.changelist"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v4, "Release: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v4, "Number of hibernations: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "sys.shutdown.resume.count"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v4, "Time of resume from hibernation: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "sys.shutdown.resume.timestamp"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v4, "Bootloader: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.bootloader"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v4, "Radio: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.baseband"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v4, :cond_e

    .line 358
    const-string v4, "Network: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "gsm.operator.alpha"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_e
    const/16 v27, 0x0

    .line 368
    .local v27, "result":Landroid/content/Intent;
    if-eqz p2, :cond_10

    const-string v4, "home_restart"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "dying_provider"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 369
    :cond_f
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorIntentForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    .line 373
    :cond_10
    move-object/from16 v14, v27

    .line 378
    .local v14, "homeRestartIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/server/am/HtcErrorReportManager$2;

    move-object/from16 v4, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p1

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/server/am/HtcErrorReportManager$2;-><init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Landroid/content/Intent;)V

    .line 539
    .local v3, "worker":Ljava/lang/Runnable;
    if-nez p2, :cond_16

    .line 540
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 296
    .end local v3    # "worker":Ljava/lang/Runnable;
    .end local v14    # "homeRestartIntent":Landroid/content/Intent;
    .end local v27    # "result":Landroid/content/Intent;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v25    # "pm":Landroid/content/pm/IPackageManager;
    :cond_11
    const/16 v22, 0x0

    .line 298
    .local v22, "packageContext":Landroid/content/Context;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v22

    .line 299
    if-eqz v22, :cond_5

    .line 300
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 301
    .local v26, "resources":Landroid/content/res/Resources;
    new-instance v15, Landroid/content/res/Configuration;

    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 302
    .local v15, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v15}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 303
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v4, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 304
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 305
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v4, :cond_12

    .line 306
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 307
    .local v21, "label":Ljava/lang/String;
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 312
    .end local v15    # "configuration":Landroid/content/res/Configuration;
    .end local v21    # "label":Ljava/lang/String;
    .end local v26    # "resources":Landroid/content/res/Resources;
    :catch_2
    move-exception v16

    .line 313
    .restart local v16    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting package label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v4, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<ERROR>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 309
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v15    # "configuration":Landroid/content/res/Configuration;
    .restart local v26    # "resources":Landroid/content/res/Resources;
    :cond_12
    :try_start_6
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<UNKOWN>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 318
    .end local v15    # "configuration":Landroid/content/res/Configuration;
    .end local v22    # "packageContext":Landroid/content/Context;
    .end local v26    # "resources":Landroid/content/res/Resources;
    :cond_13
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<MULTIPLE_PACKAGE>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 321
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 326
    :catch_3
    move-exception v16

    .line 327
    .local v16, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting installer package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v4, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 328
    .end local v16    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v16

    .line 329
    .local v16, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting installer package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v4, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 369
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v25    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v27    # "result":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    invoke-static {v4, v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v4

    goto/16 :goto_7

    .line 542
    .restart local v3    # "worker":Ljava/lang/Runnable;
    .restart local v14    # "homeRestartIntent":Landroid/content/Intent;
    :cond_16
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dump: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public createAppErrorReportForHTCLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 696
    if-nez p1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-object v0

    .line 700
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 707
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_0

    .line 711
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 716
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p4, :cond_4

    .line 717
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 718
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    goto :goto_0

    .line 719
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v1, :cond_5

    if-nez p4, :cond_5

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v1, :cond_5

    .line 720
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 721
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 722
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "Create Crash App Error Report without CrashInfo"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 725
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 726
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 728
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 729
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method public dumpHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 944
    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHomeRestart, eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    .line 945
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 946
    return-void
.end method

.method public isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->logMarketAppInfo(Lcom/android/server/am/ProcessRecord;)V

    .line 88
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableErrorRport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "Disable Error Report by local property (profiler.force_disable_err_rpt=0)"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "send_htc_error_report"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 95
    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "Disable Error Report by uncheck error report"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_5

    .line 102
    :cond_3
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_4

    .line 103
    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable Error Report by system server"

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/am/HtcErrorReportManager;->isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableHomeRestartReport(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isHtcLauncher:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/errorreport/Utils;->isAutoSend(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable Home Restart Report"

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinalizerTimeoutMessage(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 1
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isReportHtcError(Landroid/content/pm/ApplicationInfo;)Z
    .locals 11
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 114
    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/htcjavaflag/NonHTCAPList;->isNonHTCAP(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v8

    .line 118
    :cond_1
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-nez v9, :cond_0

    .line 122
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    move v3, v7

    .line 123
    .local v3, "isSystemApp":Z
    :goto_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    move v5, v7

    .line 124
    .local v5, "isUpdatedSystemApp":Z
    :goto_2
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    move v2, v7

    .line 125
    .local v2, "isDataPreloadApp":Z
    :goto_3
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_5

    move v4, v7

    .line 126
    .local v4, "isUpdatedDataPreloadApp":Z
    :goto_4
    if-eqz v3, :cond_6

    if-nez v5, :cond_6

    move v8, v7

    .line 127
    goto :goto_0

    .end local v2    # "isDataPreloadApp":Z
    .end local v3    # "isSystemApp":Z
    .end local v4    # "isUpdatedDataPreloadApp":Z
    .end local v5    # "isUpdatedSystemApp":Z
    :cond_2
    move v3, v8

    .line 122
    goto :goto_1

    .restart local v3    # "isSystemApp":Z
    :cond_3
    move v5, v8

    .line 123
    goto :goto_2

    .restart local v5    # "isUpdatedSystemApp":Z
    :cond_4
    move v2, v8

    .line 124
    goto :goto_3

    .restart local v2    # "isDataPreloadApp":Z
    :cond_5
    move v4, v8

    .line 125
    goto :goto_4

    .line 128
    .restart local v4    # "isUpdatedDataPreloadApp":Z
    :cond_6
    if-eqz v2, :cond_7

    if-nez v4, :cond_7

    move v8, v7

    .line 129
    goto :goto_0

    .line 132
    :cond_7
    const/4 v1, 0x0

    .line 134
    .local v1, "installerPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 135
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_5
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-nez v9, :cond_8

    if-eqz v4, :cond_0

    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v8, v7

    .line 140
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Fail to get installer"

    invoke-static {v9, v10, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
