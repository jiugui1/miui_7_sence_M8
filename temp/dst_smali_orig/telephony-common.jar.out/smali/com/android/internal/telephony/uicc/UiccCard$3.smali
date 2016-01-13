.class Lcom/android/internal/telephony/uicc/UiccCard$3;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v10, "EVENT_SIM_HOT_SWAP_STATUS"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v8, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v6, v0

    .local v6, "isSIMRemoved":[I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v11, Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;

    iput-object v11, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mOldCardState:Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;

    if-eqz v6, :cond_8

    array-length v8, v6

    if-lez v8, :cond_8

    # ++operator for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$804()I

    const-string v8, "sys.shutdown.hibernate.mode"

    const/4 v11, 0x0

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "hibernate":Z
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v2, v9

    .local v2, "airplane":Z
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " airplane = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    const/4 v8, 0x0

    aget v8, v6, v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->access$902(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v11, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->noRebootWhenSimHotswap()Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eq v5, v9, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->shutDownDevice()V
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)V

    monitor-exit v10

    goto/16 :goto_0

    .end local v2    # "airplane":Z
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "hibernate":Z
    .end local v6    # "isSIMRemoved":[I
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "airplane":Z
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "hibernate":Z
    .restart local v6    # "isSIMRemoved":[I
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v11, 0x1

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->access$902(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    const-string v7, "ICC_HOT_SWAP_INSERTED"

    .local v7, "ret":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSIMHotSwapStatusRegistrants:Landroid/os/RegistrantList;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v8

    new-instance v11, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v7, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .end local v7    # "ret":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    .end local v2    # "airplane":Z
    .end local v5    # "hibernate":Z
    :goto_1
    monitor-exit v10

    goto/16 :goto_0

    .restart local v2    # "airplane":Z
    .restart local v5    # "hibernate":Z
    :cond_5
    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800()I

    move-result v8

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/16 v9, 0x66

    const/4 v11, 0x0

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v8, "gsm.sim.hotswap.procedure"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "Can not complete sim hot swap procedure due to phone is null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wait for previous hot swap procedure completed, mHotSwap = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "airplane":Z
    .end local v5    # "hibernate":Z
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "invalid sim hot swap data"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "isSIMRemoved":[I
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    .local v4, "currentState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v8, "sys.shutdown.hibernate.mode"

    const/4 v11, 0x0

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .restart local v5    # "hibernate":Z
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_9

    move v2, v9

    .restart local v2    # "airplane":Z
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_RADIO_STATE_CHANGED radioState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "hibernate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " airplane = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    if-nez v5, :cond_a

    if-eqz v2, :cond_d

    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    :cond_b
    :goto_2
    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    monitor-exit v10

    goto/16 :goto_0

    .end local v2    # "airplane":Z
    .end local v4    # "currentState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v5    # "hibernate":Z
    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v2    # "airplane":Z
    .restart local v4    # "currentState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .restart local v5    # "hibernate":Z
    :cond_c
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    if-ne v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_2

    :cond_d
    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "EVENT_SIM_HOT_SWAP_STATUS radio on"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/16 v9, 0x66

    const/4 v11, 0x0

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    :cond_e
    :goto_3
    monitor-exit v10

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "mPhone is  null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    goto :goto_3

    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "radio on mHotSwap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800()I

    move-result v8

    if-le v8, v9, :cond_12

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/16 v9, 0x66

    const/4 v11, 0x0

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    goto :goto_3

    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "mPhone is null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    goto/16 :goto_3

    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "Stop to trun radio on/off"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    const-string v8, "gsm.sim.hotswap.procedure"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v9, Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mCurrentAction:Lcom/android/internal/telephony/HtcIccCardConstants$SimHotSwapActionState;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mHotSwap:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    .end local v2    # "airplane":Z
    .end local v4    # "currentState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v5    # "hibernate":Z
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v10, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v1, v8

    check-cast v1, [I

    .local v1, "SIMStatus":[I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v10, Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;

    iput-object v10, v8, Lcom/android/internal/telephony/uicc/UiccCard;->mOldCardState:Lcom/android/internal/telephony/HtcIccCardConstants$IccCardState;

    if-eqz v1, :cond_15

    array-length v8, v1

    if-lez v8, :cond_15

    aget v8, v1, v2

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v10, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    const-string v8, "sys.shutdown.hibernate.mode"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .restart local v5    # "hibernate":Z
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->noRebootWhenSimHotswap()Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eq v5, v9, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->shutDownDevice()V
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)V

    :goto_4
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    :cond_13
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v10, "Can not shutdown device due to mContext is null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .end local v5    # "hibernate":Z
    :cond_14
    const-string v7, "ICC_HOT_SWAP_INSERTED"

    .restart local v7    # "ret":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSIMHotSwapStatusRegistrants:Landroid/os/RegistrantList;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v8

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v11, v7, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v7    # "ret":Ljava/lang/String;
    :cond_15
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v9, "invalid MdmRst sim hot swap data"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
