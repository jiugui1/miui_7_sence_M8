.class Lcom/android/server/BatteryService$9;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$entryTime:J

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;J)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    iput-object p3, p0, Lcom/android/server/BatteryService$9;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/BatteryService$9;->val$dbox:Landroid/os/DropBoxManager;

    iput-wide p6, p0, Lcom/android/server/BatteryService$9;->val$entryTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 980
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/HTC_BATT_LOG@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dbox_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v2, "temp_file":Ljava/io/File;
    const/4 v7, 0x0

    .line 984
    .local v7, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    .end local v7    # "fileWriter":Ljava/io/FileWriter;
    .local v8, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 987
    const-string v0, "\n----- KERNEL -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v8, v3}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    .line 990
    const-string v0, "\n----- CMDLINE -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/cmdline"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v8, v3}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    .line 993
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 994
    const-string v0, "\n----- LOG FILE -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$dbox:Landroid/os/DropBoxManager;

    const-string v1, "HTC_BATT_LOG"

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/BatteryService$9;->val$entryTime:J

    invoke-virtual/range {v0 .. v5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    .line 999
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1005
    if-eqz v8, :cond_1

    .line 1006
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 1007
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_0
    move-object v7, v8

    .line 1012
    .end local v8    # "fileWriter":Ljava/io/FileWriter;
    .restart local v7    # "fileWriter":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 1001
    :catch_0
    move-exception v6

    .line 1002
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in dumping error information"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1005
    if-eqz v7, :cond_4

    .line 1006
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 1007
    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1009
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1004
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1005
    :goto_3
    if-eqz v7, :cond_5

    .line 1006
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 1007
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1008
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1004
    :cond_6
    :goto_4
    throw v0

    .line 1009
    .end local v7    # "fileWriter":Ljava/io/FileWriter;
    .restart local v8    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    goto :goto_0

    .end local v8    # "fileWriter":Ljava/io/FileWriter;
    .restart local v7    # "fileWriter":Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    goto :goto_4

    .line 1004
    .end local v7    # "fileWriter":Ljava/io/FileWriter;
    .restart local v8    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "fileWriter":Ljava/io/FileWriter;
    .restart local v7    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_3

    .line 1001
    .end local v7    # "fileWriter":Ljava/io/FileWriter;
    .restart local v8    # "fileWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileWriter":Ljava/io/FileWriter;
    .restart local v7    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2
.end method