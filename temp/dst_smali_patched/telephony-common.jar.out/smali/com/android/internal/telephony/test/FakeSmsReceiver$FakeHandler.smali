.class final Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
.super Landroid/os/Handler;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/FakeSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "str":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    .local v4, "pdu":[Ljava/lang/String;
    const/4 v7, 0x1

    aput-object v6, v4, v7

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "FakeSmsReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FAKE_CDMA_SMS_MESSAGE > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    # invokes: Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;
    invoke-static {v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$200(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v7, "FakeSmsReceiver"

    const-string v8, "Exception dispatching message"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    const-string v7, "FakeSmsReceiver"

    const-string v8, "mCdmaInboundSmsHandler is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_1
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "FakeSmsReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FAKE_GSM_SMS_MESSAGE > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string v7, "FakeSmsReceiver"

    const-string v8, "Exception dispatching message"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_3
    const-string v7, "FakeSmsReceiver"

    const-string v8, "mGsmInboundSmsHandler is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_2
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "FakeSmsReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FAKE_GSM_CB_MESSAGE > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/CBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;

    move-result-object v0

    .local v0, "cbm":Lcom/android/internal/telephony/gsm/CBMessage;
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getCellBroadcastHandler()Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v1

    .local v1, "cellBroadcastHandler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CellBroadcastHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .local v3, "message":Landroid/os/Message;
    const/4 v7, 0x5

    iput v7, v3, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v0, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .end local v1    # "cellBroadcastHandler":Lcom/android/internal/telephony/CellBroadcastHandler;
    .end local v3    # "message":Landroid/os/Message;
    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string v7, "FakeSmsReceiver"

    const-string v8, "Exception dispatching cb message"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :try_start_5
    const-string v7, "FakeSmsReceiver"

    const-string v8, "mGsmInboundSmsHandler is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
