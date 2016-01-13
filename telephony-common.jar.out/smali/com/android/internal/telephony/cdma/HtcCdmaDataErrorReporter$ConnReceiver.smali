.class Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaDataErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
    .param p2, "x1"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    const-string v3, "com.htc.intent.action.REPORT_DATA_CONNECTION_ERROR_CODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    const-string v3, "entitleError"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "errorCode":I
    const-string v3, "data_radio_tech_key"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "rat":I
    if-eq v1, v6, :cond_1

    .line 48
    packed-switch v2, :pswitch_data_0

    .line 60
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->isNeedToShowError()Z
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z

    move-result v4

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$200(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Z)V

    .line 61
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; rat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "errorCode":I
    .end local v2    # "rat":I
    :cond_2
    :goto_1
    return-void

    .line 50
    .restart local v1    # "errorCode":I
    .restart local v2    # "rat":I
    :pswitch_0
    sput v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->EHRPD:I

    goto :goto_0

    .line 53
    :pswitch_1
    sput v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_ESM:I

    goto :goto_0

    .line 62
    .end local v1    # "errorCode":I
    .end local v2    # "rat":I
    :cond_3
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->isNeedToShowError()Z
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z

    move-result v4

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$200(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Z)V

    goto :goto_1

    .line 67
    :cond_5
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->access$300(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CDMA_DATA_ERROR_CODE_IS_SHOWING"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
