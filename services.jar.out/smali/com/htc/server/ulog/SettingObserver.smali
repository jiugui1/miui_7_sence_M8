.class final Lcom/htc/server/ulog/SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/SettingObserver$SettingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsErrorReportSettingEnabled:Z

.field private mIsSenseDotComSettingEnabled:Z

.field private mIsTellHTCSettingShown:Z

.field private mIsUserProfilingSettingEnabled:Z

.field private mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

.field private mPreferredNetworkSetting:I

.field private final mSettingListener:Lcom/htc/server/ulog/SettingObserver$SettingListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/htc/server/ulog/PolicyStore;Lcom/htc/server/ulog/SettingObserver$SettingListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "policyStore"    # Lcom/htc/server/ulog/PolicyStore;
    .param p4, "settingListener"    # Lcom/htc/server/ulog/SettingObserver$SettingListener;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 27
    iput-object p2, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    .line 29
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    .line 30
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    .line 31
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->getTellHtcPreferredNetworkSetting(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 32
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    .line 33
    iput-object p3, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    .line 34
    iput-object p4, p0, Lcom/htc/server/ulog/SettingObserver;->mSettingListener:Lcom/htc/server/ulog/SettingObserver$SettingListener;

    .line 35
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v9, 0x1

    .line 38
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v3

    .line 39
    .local v3, "newTellHTCSettingShown":Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    if-eq v6, v3, :cond_1

    .line 40
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htc_error_report_setting is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-eqz v3, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "show_tellhtc_ui"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: show_tellhtc_ui"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    .line 48
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 51
    :cond_1
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 52
    .local v1, "newErrorReportSetting":Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    if-eq v6, v1, :cond_3

    .line 53
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_htc_error_report is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz v1, :cond_2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "error_report"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: error_report"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iput-boolean v1, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    .line 61
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 64
    :cond_3
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 65
    .local v4, "newUserProfilingSettingEnabled":Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    if-eq v6, v4, :cond_5

    .line 66
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_htc_application_log is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v4, :cond_4

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "application_log"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: application_log"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iput-boolean v4, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    .line 74
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 75
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mSettingListener:Lcom/htc/server/ulog/SettingObserver$SettingListener;

    if-eqz v6, :cond_5

    .line 76
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mSettingListener:Lcom/htc/server/ulog/SettingObserver$SettingListener;

    invoke-interface {v6, v9}, Lcom/htc/server/ulog/SettingObserver$SettingListener;->onTellHTCSettingChanged(I)V

    .line 79
    :cond_5
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->getTellHtcPreferredNetworkSetting(Landroid/content/Context;)I

    move-result v2

    .line 80
    .local v2, "newPreferredNetwork":I
    iget v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    if-eq v6, v2, :cond_8

    .line 81
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htc_error_report_prefer_network is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-nez v2, :cond_7

    invoke-static {}, Lcom/htc/server/ulog/Utils;->is3GNetwork()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    if-eqz v6, :cond_7

    .line 84
    :cond_6
    iput v2, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "prefer_network"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: prefer_network"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iput v2, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 93
    :cond_8
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 94
    .local v5, "senseDotComSettingEnabled":Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    if-eq v6, v5, :cond_a

    .line 95
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sense.com is enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v5, :cond_9

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "sense_dot_com"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: sense.com"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    iput-boolean v5, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    .line 103
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 105
    :cond_a
    return-void
.end method
