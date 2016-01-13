.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserverSlot1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 653
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 654
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 655
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSupportSeperatedDataRoaming:Z

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleDataOnRoamingChangeSlot1()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$100(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 676
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 660
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserverSlot1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 664
    return-void
.end method
