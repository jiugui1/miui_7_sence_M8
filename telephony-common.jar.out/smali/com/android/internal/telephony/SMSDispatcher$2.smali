.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$bFirstofAll:Z

.field final synthetic val$bLastofAll:Z

.field final synthetic val$mRoamGuardDlg:Lcom/htc/dialog/HtcAlertDialog;

.field final synthetic val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/htc/dialog/HtcAlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuardDlg:Lcom/htc/dialog/HtcAlertDialog;

    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput-boolean p4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iput-boolean p5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 872
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuardDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 874
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 876
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :goto_0
    if-nez p3, :cond_1

    .line 884
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v3, :cond_0

    .line 886
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 887
    .local v1, "informationIntent":Landroid/content/Intent;
    const-string v3, "under_retry"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    const-string v3, "retry_count"

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    const-string v3, "auto_send"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 892
    :try_start_2
    const-string v3, "SMSDispatcher"

    const-string v4, "EVENT_SHOW_SPRINT_ROAM_DLG, message send fail, will auto send later"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 913
    .end local v1    # "informationIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 876
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 877
    :catch_0
    move-exception v3

    goto :goto_0

    .line 895
    .restart local v1    # "informationIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 902
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "informationIntent":Landroid/content/Intent;
    :cond_1
    if-ne p3, v5, :cond_0

    .line 903
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v2

    .line 906
    .local v2, "ss":I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z
    invoke-static {v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 907
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 909
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 910
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method
