.class Lcom/android/server/power/HtcAutoBrightnessCtrl$1;
.super Landroid/os/FileObserver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/HtcAutoBrightnessCtrl;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 11
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "HABCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DDObserver("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "pFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/sys/power/pnpmgr/apps/non_activity_trigger"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "pFile":Ljava/io/File;
    .local v5, "pFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "HABCtrl"

    const-string v9, "DDObserver file path is not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .restart local v4    # "pFile":Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .end local v4    # "pFile":Ljava/io/File;
    .restart local v5    # "pFile":Ljava/io/File;
    :cond_3
    const/16 v8, 0x20

    :try_start_3
    new-array v0, v8, [B

    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_4
    array-length v9, v0

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "readByte":I
    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "HABCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Byte="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "HABCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "str="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v8, "daydream"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOnTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_3
    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .restart local v4    # "pFile":Ljava/io/File;
    goto :goto_1

    .end local v4    # "pFile":Ljava/io/File;
    .restart local v5    # "pFile":Ljava/io/File;
    :cond_7
    :try_start_7
    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOffTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v6    # "readByte":I
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "pFile":Ljava/io/File;
    :goto_4
    :try_start_8
    const-string v8, "HABCtrl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v8, "HABCtrl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v2, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_6
    throw v8

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "HABCtrl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "pFile":Ljava/io/File;
    .restart local v5    # "pFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "HABCtrl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v6    # "readByte":I
    .restart local v7    # "str":Ljava/lang/String;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "HABCtrl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "readByte":I
    .end local v7    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .restart local v4    # "pFile":Ljava/io/File;
    goto :goto_5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "pFile":Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .restart local v4    # "pFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "buffer":[B
    :catch_5
    move-exception v1

    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "pFile":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "pFile":Ljava/io/File;
    .restart local v4    # "pFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method