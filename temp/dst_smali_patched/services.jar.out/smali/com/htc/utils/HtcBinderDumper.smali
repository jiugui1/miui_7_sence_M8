.class public Lcom/htc/utils/HtcBinderDumper;
.super Ljava/lang/Object;
.source "HtcBinderDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;,
        Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;,
        Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcBinderDumper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBinderTransactions(Ljava/io/File;)V
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const-string v11, "HtcBinderDumper"

    const-string v12, "dumpBinderTransactions(), file is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .local v5, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .local v9, "now":Ljava/util/Date;
    const/4 v7, 0x0

    .local v7, "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    const/4 v2, 0x0

    .local v2, "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    :try_start_0
    new-instance v3, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;

    invoke-direct {v3}, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .local v3, "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    :try_start_1
    new-instance v8, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;

    const-wide/16 v11, 0xa

    invoke-direct {v8, v3, v11, v12}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;-><init>(Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .local v8, "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :try_start_2
    invoke-virtual {v8}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->start()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd kk:mm:ss"

    invoke-direct {v6, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .local v6, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_3
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .end local v9    # "now":Ljava/util/Date;
    .local v10, "now":Ljava/util/Date;
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    const/4 v12, 0x1

    invoke-direct {v11, p0, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO START at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v11, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-static {v11, v1, v3}, Lcom/htc/utils/HtcBinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/transaction_log"

    invoke-static {v11, v1, v3}, Lcom/htc/utils/HtcBinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/transactions"

    invoke-static {v11, v1, v3}, Lcom/htc/utils/HtcBinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/stats"

    invoke-static {v11, v1, v3}, Lcom/htc/utils/HtcBinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/state"

    invoke-static {v11, v1, v3}, Lcom/htc/utils/HtcBinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->cancel()V

    :cond_3
    if-eqz v1, :cond_7

    :try_start_6
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO END at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    :goto_1
    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_9
    const-string v11, "HtcBinderDumper"

    const-string v12, "[dumpBinderTransactions] exception"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->cancel()V

    :cond_4
    if-eqz v0, :cond_1

    :try_start_a
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :try_start_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO END at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :goto_3
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    :goto_4
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :cond_5
    :goto_5
    throw v11

    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->cancel()V

    :cond_6
    if-eqz v0, :cond_5

    :try_start_e
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :try_start_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DUMP BINDER INFO END at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :goto_7
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto :goto_5

    :catch_2
    move-exception v12

    goto :goto_5

    :catchall_1
    move-exception v11

    :goto_8
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :goto_9
    throw v11

    :catch_3
    move-exception v12

    goto :goto_9

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_4
    move-exception v12

    goto :goto_7

    .end local v10    # "now":Ljava/util/Date;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "now":Ljava/util/Date;
    :catch_5
    move-exception v11

    :goto_a
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v11

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    :goto_b
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :goto_c
    throw v11

    :catch_7
    move-exception v12

    goto :goto_c

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_8
    move-exception v11

    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :catch_9
    move-exception v11

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    :goto_d
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v11

    goto/16 :goto_1

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    :goto_e
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :goto_f
    throw v11

    :catch_b
    move-exception v12

    goto :goto_f

    :catchall_4
    move-exception v11

    goto :goto_e

    :catch_c
    move-exception v11

    goto :goto_d

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :catchall_5
    move-exception v11

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto :goto_b

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_d
    move-exception v11

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto :goto_a

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catchall_6
    move-exception v11

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto :goto_8

    .end local v9    # "now":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_e
    move-exception v12

    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto :goto_4

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    :catchall_7
    move-exception v11

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    goto :goto_6

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :catchall_8
    move-exception v11

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    goto :goto_6

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :catchall_9
    move-exception v11

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    goto :goto_6

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :catchall_a
    move-exception v11

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    goto/16 :goto_6

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :catchall_b
    move-exception v11

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_6

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    :catch_f
    move-exception v4

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    goto/16 :goto_2

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :catch_10
    move-exception v4

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    goto/16 :goto_2

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    :catch_11
    move-exception v4

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    goto/16 :goto_2

    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_12
    move-exception v4

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    goto/16 :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :catch_13
    move-exception v4

    move-object v2, v3

    .end local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    move-object v7, v8

    .end local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    move-object v5, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "formatter":Ljava/text/SimpleDateFormat;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .end local v9    # "now":Ljava/util/Date;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "callback":Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .restart local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v8    # "notifier":Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
    .restart local v10    # "now":Ljava/util/Date;
    :cond_7
    move-object v9, v10

    .end local v10    # "now":Ljava/util/Date;
    .restart local v9    # "now":Ljava/util/Date;
    goto/16 :goto_1
.end method

.method private static dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;)V
    .locals 6
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "callback"    # Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;->isTimeout()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/htc/utils/HtcBinderDumper;->throwTimoutException()V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p2}, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;->isTimeout()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/htc/utils/HtcBinderDumper;->throwTimoutException()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    throw v4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_4
    return-void

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_4

    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static throwTimoutException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Dump binder info timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
