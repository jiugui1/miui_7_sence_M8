.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/16 v0, 0x2040

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 693
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 698
    const/4 v6, 0x0

    .line 701
    .local v6, "retryCount":I
    const-string v12, "ro.build.tags"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "buildtags":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v13, "test-keys"

    invoke-virtual {v0, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    :goto_0
    iput-boolean v10, v12, Lcom/android/internal/telephony/RIL;->mIsTestKeys:Z

    .line 706
    :goto_1
    const/4 v7, 0x0

    .line 710
    .local v7, "s":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 711
    .end local v7    # "s":Landroid/net/LocalSocket;
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v10, "rild"

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 713
    .local v3, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 746
    const/4 v6, 0x0

    .line 748
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v8, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 749
    const-string v10, "RILJ"

    const-string v11, "Connected to \'rild\' socket"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 751
    const/4 v4, 0x0

    .line 753
    .local v4, "length":I
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 758
    .local v2, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v10}, Lcom/android/internal/telephony/RIL;->access$700(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    .line 760
    if-gez v4, :cond_4

    .line 782
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    const-string v10, "RILJ"

    const-string v11, "Disconnected from \'rild\' socket"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 788
    :try_start_5
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 792
    :goto_4
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 793
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 796
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 797
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 798
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    .local v9, "tr":Ljava/lang/Throwable;
    :goto_5
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception"

    invoke-static {v10, v11, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;I)V

    .line 803
    return-void

    .end local v7    # "s":Landroid/net/LocalSocket;
    .end local v9    # "tr":Ljava/lang/Throwable;
    :cond_0
    move v10, v11

    .line 702
    goto :goto_0

    .line 714
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v1

    .line 716
    .local v1, "ex":Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_1

    .line 717
    :try_start_7
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 726
    :cond_1
    :goto_7
    if-ne v6, v14, :cond_3

    .line 727
    :try_start_8
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " times, continuing to retry silently"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 738
    :cond_2
    :goto_8
    const-wide/16 v10, 0xfa0

    :try_start_9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 742
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 743
    goto/16 :goto_1

    .line 731
    :cond_3
    if-lez v6, :cond_2

    if-ge v6, v14, :cond_2

    .line 732
    :try_start_a
    const-string v10, "RILJ"

    const-string v11, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 797
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 765
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_4
    :try_start_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 766
    .local v5, "p":Landroid/os/Parcel;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 767
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 771
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v10, v5}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 772
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    .line 774
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "p":Landroid/os/Parcel;
    :catch_3
    move-exception v1

    .line 775
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_c
    const-string v10, "RILJ"

    const-string v11, "\'rild\' socket closed"

    invoke-static {v10, v11, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 777
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 778
    .restart local v9    # "tr":Ljava/lang/Throwable;
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uncaught exception read length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .line 719
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    .end local v8    # "s":Landroid/net/LocalSocket;
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/io/IOException;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v10

    goto/16 :goto_7

    .line 739
    :catch_6
    move-exception v10

    goto :goto_9

    .line 789
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v10

    goto/16 :goto_4

    .line 714
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_8
    move-exception v1

    move-object v7, v8

    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method