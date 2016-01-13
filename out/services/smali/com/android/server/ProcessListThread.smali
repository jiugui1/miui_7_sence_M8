.class Lcom/android/server/ProcessListThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServer"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1596
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private readProcessFromFile(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1655
    .local v3, "pReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1657
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .local v4, "pReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1659
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1661
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1662
    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Exception writing process name from pList.txt to node task_comm_list"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1664
    if-eqz v3, :cond_0

    .line 1666
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1667
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    :goto_2
    const/4 v3, 0x0

    .line 1673
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_3
    return-object v0

    .line 1664
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_1

    .line 1666
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1667
    const/4 v3, 0x0

    .line 1664
    :cond_1
    :goto_5
    throw v5

    .line 1668
    :catch_1
    move-exception v1

    .line 1669
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SystemServer"

    const-string v7, "Exception closing FileReader"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1668
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1669
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v6, "Exception closing FileReader"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1664
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 1666
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1668
    :catch_3
    move-exception v1

    .line 1669
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v6, "Exception closing FileReader"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1664
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1661
    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1601
    :try_start_0
    const-string v10, "SystemServer"

    const-string v11, "ProcessListThread - run start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string v6, "/sys/process/task_comm_list"

    .line 1604
    .local v6, "nodePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1606
    .local v5, "nodeFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1650
    .end local v5    # "nodeFile":Ljava/io/File;
    .end local v6    # "nodePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 1609
    .restart local v5    # "nodeFile":Ljava/io/File;
    .restart local v6    # "nodePath":Ljava/lang/String;
    :cond_0
    const-string v10, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "node "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const-string v8, "/data/p_list.txt"

    .line 1612
    .local v8, "pListPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v7, "pListFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 1615
    .local v9, "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1616
    const-string v10, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-direct {p0, v7}, Lcom/android/server/ProcessListThread;->readProcessFromFile(Ljava/io/File;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1625
    :goto_1
    const/4 v1, 0x0

    .line 1627
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 1629
    const-string v11, "SystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "write, process = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1628
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1619
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "i":I
    :cond_1
    :try_start_3
    const-string v10, "SystemServer"

    const-string v11, "use default process"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .restart local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "zygote"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    const-string v10, "system_server"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1647
    .end local v5    # "nodeFile":Ljava/io/File;
    .end local v6    # "nodePath":Ljava/lang/String;
    .end local v7    # "pListFile":Ljava/io/File;
    .end local v8    # "pListPath":Ljava/lang/String;
    .end local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "SystemServer"

    const-string v11, "Exception ProcessListThread running"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1633
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "nodeFile":Ljava/io/File;
    .restart local v6    # "nodePath":Ljava/lang/String;
    .restart local v7    # "pListFile":Ljava/io/File;
    .restart local v8    # "pListPath":Ljava/lang/String;
    .restart local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 1634
    .local v4, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v10, "SystemServer"

    const-string v11, "Exception writing default process name"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1636
    if-eqz v1, :cond_2

    .line 1638
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1639
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_4
    const/4 v1, 0x0

    .line 1646
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_5
    :try_start_6
    const-string v10, "SystemServer"

    const-string v11, "ProcessListThread - run end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1636
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v1, :cond_3

    .line 1638
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1639
    const/4 v1, 0x0

    .line 1636
    :cond_3
    :goto_7
    :try_start_8
    throw v10

    .line 1640
    :catch_2
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "SystemServer"

    const-string v12, "Exception closing FileWriter"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1640
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1641
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "SystemServer"

    const-string v11, "Exception closing FileWriter"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    .line 1636
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1638
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 1640
    :catch_4
    move-exception v0

    .line 1641
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_a
    const-string v10, "SystemServer"

    const-string v11, "Exception closing FileWriter"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .line 1636
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_6

    .line 1633
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method
