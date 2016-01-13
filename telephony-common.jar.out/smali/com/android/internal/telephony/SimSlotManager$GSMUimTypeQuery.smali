.class Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSMUimTypeQuery"
.end annotation


# instance fields
.field private final EVENT_QUERY_GSM_UIM_TYPE:I

.field private final EVENT_READ_CDMA_IMSI_DONE:I

.field private final EVENT_READ_GSM_IMSI_DONE:I

.field private final EVENT_READ_GSM_IMSI_DONE_EXT:I

.field private final MAX_RETRY_TIME:I

.field private final QUERY_GSM_UIM_TYPE_DELAY:I

.field private final REQUERY_GSM_UIM_TYPE_DELAY:I

.field private gsmPhoneType:I

.field private mCIMSIDone:Z

.field private mCIMSIExist:Z

.field private mGIMSIDone:Z

.field private mGIMSIExist:Z

.field private mInvalid:Z

.field private mInvalidSub:Z

.field private mQueryUimTypeFlag:Z

.field public mQueryUimTypeRunnable:Ljava/lang/Runnable;

.field private mRetry:I

.field private mRunning:Z

.field private mSubGIMSIDone:Z

.field private mSubGIMSIExist:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 638
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_QUERY_GSM_UIM_TYPE:I

    .line 642
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_CDMA_IMSI_DONE:I

    .line 643
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_GSM_IMSI_DONE:I

    .line 646
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_GSM_IMSI_DONE_EXT:I

    .line 648
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->QUERY_GSM_UIM_TYPE_DELAY:I

    .line 649
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->REQUERY_GSM_UIM_TYPE_DELAY:I

    .line 650
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->MAX_RETRY_TIME:I

    .line 651
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 652
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 653
    iput v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 656
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    .line 657
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 658
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    .line 659
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 662
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIDone:Z

    .line 663
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIExist:Z

    .line 666
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 669
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    .line 670
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    .line 673
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;-><init>(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SimSlotManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/SimSlotManager$1;

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;-><init>(Lcom/android/internal/telephony/SimSlotManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    return v0
.end method

.method private notifyClient()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 904
    const-string v0, "SSM"

    const-string v1, "Slot 2: notifyClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    if-nez v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 911
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 913
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    if-nez v0, :cond_2

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 917
    :cond_2
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot 2: mInvalid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onFail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 697
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query GSM UIM Type failed, retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 711
    :goto_0
    return-void

    .line 702
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 703
    iput v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 705
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0
.end method

.method private onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 714
    check-cast p1, [I

    .end local p1    # "result":Ljava/lang/Object;
    check-cast p1, [I

    aget v0, p1, v4

    .line 716
    .local v0, "type":I
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 732
    const-string v1, "SSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM Uim type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 735
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 737
    const-string v1, "SSM"

    const-string v2, "GSM got a SIM card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_0
    return-void

    .line 740
    :cond_1
    const-string v1, "SSM"

    const-string v2, "GSM Must requery PIN state now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0
.end method


# virtual methods
.method public clearQueryFlag()V
    .locals 2

    .prologue
    .line 832
    const-string v0, "SSM"

    const-string v1, "Clear Query flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 835
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->stop()V

    .line 838
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 754
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 756
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 758
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v2, "SSM"

    const-string v3, "EVENT_QUERY_GSM_UIM_TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-eqz v2, :cond_0

    .line 762
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 763
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->onFail()V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 770
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "SSM"

    const-string v3, "Slot 2: EVENT_READ_CDMA_IMSI_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 773
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    .line 775
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 776
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    .line 779
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->notifyClient()V

    goto :goto_0

    .line 783
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "SSM"

    const-string v3, "Slot 2: EVENT_READ_GSM_IMSI_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 786
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 788
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 789
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 792
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->notifyClient()V

    goto :goto_0

    .line 797
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "SSM"

    const-string v3, "receive EVENT_READ_GSM_IMSI_DONE_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 799
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 801
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 802
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 803
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 805
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 806
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 807
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    .line 811
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 812
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIDone:Z

    .line 813
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    .line 815
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 816
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIExist:Z

    .line 817
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInvalidCard(I)Z
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    const/4 v0, 0x1

    .line 861
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 863
    const/4 v0, 0x0

    .line 869
    :cond_0
    :goto_0
    return v0

    .line 865
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    .line 866
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 841
    const-string v0, "SSM"

    const-string v1, "Start GSM UIM Type querying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 844
    :cond_0
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQueryUimTypeFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneTypeOfSlot1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :goto_0
    return-void

    .line 853
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startEx(I)Z
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 876
    const-string v2, "SSM"

    const-string v3, "StartEx GSM UIM Type querying"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 890
    :goto_0
    return v0

    .line 882
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    iput p1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    .line 886
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 887
    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 890
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    const-string v0, "SSM"

    const-string v1, "Stop GSM UIM Type querying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 897
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 899
    return-void
.end method
