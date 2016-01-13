.class Lcom/android/server/ShowWatermarkService$1;
.super Landroid/os/Handler;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShowWatermarkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShowWatermarkService;


# direct methods
.method constructor <init>(Lcom/android/server/ShowWatermarkService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "ro.gsm.imei"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$102(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "ro.cdma.meid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$202(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v8

    .local v8, "tm":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v8, :cond_7

    :try_start_0
    const-string v1, "getIMEI"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "bd":Landroid/os/Bundle;
    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "getIMEI"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$102(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string v1, "getMEID"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "getMEID"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$202(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "bd":Landroid/os/Bundle;
    .end local v8    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # operator++ for: Lcom/android/server/ShowWatermarkService;->mRetry:I
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$308(Lcom/android/server/ShowWatermarkService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$400(Lcom/android/server/ShowWatermarkService;)I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$500(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .restart local v8    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "watermark"

    const-string v2, "failed to get device id!"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_9
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # invokes: Lcom/android/server/ShowWatermarkService;->isCertificated()Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$600(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "watermark"

    const-string v2, "verified passed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$500(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "watermark"

    const-string v3, "start watermark"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sys.ws"

    const-string v3, "96"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # invokes: Lcom/android/server/ShowWatermarkService;->getWatermarkWords()V
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$700(Lcom/android/server/ShowWatermarkService;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x418

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "Show Watermark 2.1"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .local v9, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    new-instance v2, Lcom/android/server/ShowWatermarkService$LoadView;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/ShowWatermarkService$LoadView;-><init>(Lcom/android/server/ShowWatermarkService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$802(Lcom/android/server/ShowWatermarkService;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$800(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$900(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$1000(Lcom/android/server/ShowWatermarkService;)Landroid/accounts/OnAccountsUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "watermark"

    const-string v2, "add account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v1, "watermark"

    const-string v2, "add account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
