.class Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordLoadedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4376
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 4379
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->UnsyncConnectionCheck()V

    .line 4382
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_0

    .line 4383
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->htcGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4384
    .local v0, "sNewOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mOperatorNumeric:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4385
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mOperatorNumeric:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 4387
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    const-string v2, "simLoaded"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->dataProfileDbChanged(Ljava/lang/String;)V

    .line 4389
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mOperatorNumeric:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->setOperatorNumeric(Ljava/lang/String;)V

    .line 4393
    .end local v0    # "sNewOperator":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "onRecordsLoaded: createAllApnList"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4394
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4402
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v1, :cond_1

    .line 4413
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->updateProfile(I)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 4424
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimLoaded:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$602(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4427
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpLimit()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4429
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4430
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->setPdpLimit()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4433
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4434
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4436
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "simLoaded"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 4443
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "onRecordsLoaded: Send EVENT_TRY_SETUP_DATA Mesg to setupDataOnConnectableApns"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4444
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v3, 0x42003

    const-string v4, "simLoaded"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4446
    return-void
.end method
