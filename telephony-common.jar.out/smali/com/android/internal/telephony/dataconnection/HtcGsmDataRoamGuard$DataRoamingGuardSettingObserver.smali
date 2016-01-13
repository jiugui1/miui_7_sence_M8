.class Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
.super Landroid/database/ContentObserver;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingGuardSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)V
    .locals 1

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    .line 778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 779
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 787
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    # invokes: Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->access$100(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)Z

    move-result v0

    .line 791
    .local v0, "enable":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 792
    return-void

    :cond_0
    move v1, v2

    .line 791
    goto :goto_0
.end method
