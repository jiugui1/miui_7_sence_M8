.class Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcateHandler"
.end annotation


# instance fields
.field nConcatDestAddr:Ljava/lang/String;

.field nConcateCount:I

.field nConcateRef:I

.field nDate:I

.field nSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, -0x1

    .line 2893
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 2894
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2887
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    .line 2888
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    .line 2889
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    .line 2890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    .line 2891
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    .line 2895
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2899
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    .line 2900
    .local v23, "obj":Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    .line 2901
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    .line 2902
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    .line 2903
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    .line 2904
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    .line 2905
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2906
    .local v17, "informationIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    .line 2909
    .local v20, "notifyAp":Z
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .line 2910
    .local v18, "map":Ljava/util/HashMap;
    const-string v2, "pdu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v24, v2

    check-cast v24, [B

    .line 2913
    .local v24, "pdu":[B
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 2916
    :pswitch_0
    const-string v2, "Concate"

    const-string v6, "message type MSG_FILTER_CONCATE_SENT"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    .line 2918
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ConcatedUtil;->query2StatusCount(ILjava/lang/String;IIIII)I

    move-result v22

    .line 2919
    .local v22, "nsentcount":I
    const-string v2, "Concate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sent(+fail) count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const/16 v25, 0x0

    .line 2922
    .local v25, "sendNext":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    add-int/lit8 v2, v2, 0x0

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 2923
    const-string v2, "Concate"

    const-string v6, "sent+fail complete del entry"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ConcatedUtil;->deleteentry(ILjava/lang/String;IIII)Z

    .line 2928
    const-string v2, "destaddr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2929
    .local v3, "str":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2930
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move/from16 v0, v22

    int-to-long v6, v0

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->access$800(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;JJ)V

    .line 2937
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "time":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v20

    .line 2938
    if-eqz v20, :cond_2

    .line 2939
    if-nez v25, :cond_1

    new-instance v25, Landroid/content/Intent;

    .end local v25    # "sendNext":Landroid/content/Intent;
    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 2940
    .restart local v25    # "sendNext":Landroid/content/Intent;
    :cond_1
    const-string v2, "SendNextMsg"

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2945
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSmsWriteUiccForMo3gppSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2946
    if-nez v25, :cond_3

    new-instance v25, Landroid/content/Intent;

    .end local v25    # "sendNext":Landroid/content/Intent;
    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 2947
    .restart local v25    # "sendNext":Landroid/content/Intent;
    :cond_3
    const-string v2, "pdu"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2952
    :cond_4
    :try_start_0
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 2953
    if-nez v25, :cond_6

    .line 2954
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2960
    :catch_0
    move-exception v14

    .line 2961
    .local v14, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SMSDispatcher"

    const-string v6, "failed to send sent intent"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2933
    .end local v14    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    new-instance v25, Landroid/content/Intent;

    .end local v25    # "sendNext":Landroid/content/Intent;
    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 2934
    .restart local v25    # "sendNext":Landroid/content/Intent;
    const-string v2, "middle_success"

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2956
    :cond_6
    :try_start_1
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    const/4 v7, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2967
    .end local v22    # "nsentcount":I
    .end local v25    # "sendNext":Landroid/content/Intent;
    :pswitch_1
    const-string v2, "Concate"

    const-string v6, "message type MSG_FILTER_CONCATE_RETRY"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v12, 0x6

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    .line 2970
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v12, 0x6

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/ConcatedUtil;->queryStatusCount(ILjava/lang/String;IIII)I

    move-result v21

    .line 2971
    .local v21, "nretrycount":I
    const-string v2, "Concate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retry count of retry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v7, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    .line 2974
    const-string v2, "retry_count"

    const/4 v6, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2979
    :goto_2
    const-string v2, "under_retry"

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2981
    :try_start_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 2982
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    move-object/from16 v0, v17

    invoke-virtual {v2, v6, v7, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2983
    :catch_1
    move-exception v15

    .line 2984
    .local v15, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SMSDispatcher"

    const-string v6, "failed to send retry intent"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2976
    .end local v15    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_7
    const-string v2, "retry_count"

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v6, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 2985
    :catch_2
    move-exception v14

    .line 2986
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2991
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "nretrycount":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "obj":Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    check-cast v23, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    .line 2993
    .restart local v23    # "obj":Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v12, 0x5

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    .line 2994
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v12, 0x5

    const/4 v13, 0x2

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/ConcatedUtil;->query2StatusCount(ILjava/lang/String;IIIII)I

    move-result v19

    .line 2995
    .local v19, "nfailcount":I
    const-string v2, "Concate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail(+sent count): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2997
    .local v16, "fillIn":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v20

    .line 2998
    if-eqz v20, :cond_8

    .line 2999
    const-string v2, "SendNextMsg"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3001
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    add-int/lit8 v2, v2, 0x0

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 3002
    const-string v2, "Concate"

    const-string v6, "fail+sent count reached, delete entry and send intent"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v12, 0x5

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/ConcatedUtil;->deleteentry(ILjava/lang/String;IIII)Z

    .line 3005
    const-string v2, "retry_count"

    const/16 v6, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3010
    :goto_3
    const-string v2, "under_retry"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3014
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSmsWriteUiccForMo3gppSms()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3015
    const-string v2, "pdu"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3020
    :cond_9
    :try_start_3
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v7, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 3021
    :catch_3
    move-exception v15

    .line 3022
    .restart local v15    # "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SMSDispatcher"

    const-string v6, "failed to send fail intent"

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3007
    .end local v15    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_a
    const-string v2, "retry_count"

    const/16 v6, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 2913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
