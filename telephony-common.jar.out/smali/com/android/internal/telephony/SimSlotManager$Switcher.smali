.class Lcom/android/internal/telephony/SimSlotManager$Switcher;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Switcher"
.end annotation


# static fields
.field public static final EVENT_CDMA_SERVICE_STATE_CHANGED_FOR_OFF:I = 0x7

.field public static final EVENT_CDMA_SERVICE_STATE_CHANGED_FOR_ON:I = 0x9

.field public static final EVENT_GSM_SERVICE_STATE_CHANGED_FOR_OFF:I = 0x6

.field public static final EVENT_GSM_SERVICE_STATE_CHANGED_FOR_ON:I = 0x8

.field public static final EVENT_SWITCH_SLOT:I = 0x5

.field public static final EVENT_TURN_OFF_CDMA:I = 0x4

.field public static final EVENT_TURN_OFF_GSM:I = 0x2

.field public static final EVENT_TURN_ON_CDMA:I = 0x3

.field public static final EVENT_TURN_ON_GSM:I = 0x1


# instance fields
.field mMsg:Landroid/os/Message;

.field mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;

.field private turnOffRadioCnt:I

.field private turnOnRadioCnt:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 924
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 939
    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    .line 940
    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    .line 946
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SimSlotManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/SimSlotManager$1;

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$Switcher;-><init>(Lcom/android/internal/telephony/SimSlotManager;)V

    return-void
.end method

.method private reportTurnOff()V
    .locals 2

    .prologue
    .line 965
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    .line 966
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->switchInternal()V

    .line 968
    :cond_0
    return-void
.end method

.method private reportTurnOn()V
    .locals 2

    .prologue
    .line 954
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    .line 955
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->switchInternal()V

    .line 957
    :cond_0
    return-void
.end method

.method private setSlotMode(II)V
    .locals 2
    .param p1, "slot1"    # I
    .param p2, "slot2"    # I

    .prologue
    .line 1033
    if-ne p1, p2, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "phone type of slot1 & slot2 must be different"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    return-void
.end method

.method private switchInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_OFF_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    if-ne v0, v1, :cond_1

    .line 1142
    const-string v0, "SSM"

    const-string v1, "turn off radio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffGsm()V

    .line 1144
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffCdma()V

    .line 1145
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->SWITCH_SLOT:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->SWITCH_SLOT:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    if-ne v0, v1, :cond_3

    .line 1147
    const-string v0, "SSM"

    const-string v1, "switch slot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1150
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->setSlotMode(II)V

    .line 1154
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_ON_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    goto :goto_0

    .line 1152
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->setSlotMode(II)V

    goto :goto_1

    .line 1155
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_ON_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    if-ne v0, v1, :cond_0

    .line 1156
    const-string v0, "SSM"

    const-string v1, "turn on radio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnGsm()V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1161
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnCdma()V

    .line 1163
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->onSwitchResult(Z)V

    goto :goto_0
.end method

.method private turnOffCdma()V
    .locals 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setRadioPower(Z)V

    .line 1010
    :goto_0
    return-void

    .line 1007
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private turnOffGsm()V
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setRadioPower(Z)V

    .line 981
    :goto_0
    return-void

    .line 979
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private turnOnCdma()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setRadioPower(Z)V

    .line 1024
    :cond_0
    return-void
.end method

.method private turnOnGsm()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setRadioPower(Z)V

    .line 996
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 1053
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1059
    :pswitch_0
    const-string v2, "SSM"

    const-string v3, "EVENT_TURN_ON_GSM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->reportTurnOn()V

    goto :goto_0

    .line 1066
    :pswitch_1
    const-string v2, "SSM"

    const-string v3, "EVENT_TURN_OFF_GSM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->reportTurnOff()V

    goto :goto_0

    .line 1073
    :pswitch_2
    const-string v2, "SSM"

    const-string v3, "EVENT_TURN_ON_CDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->reportTurnOn()V

    goto :goto_0

    .line 1080
    :pswitch_3
    const-string v2, "SSM"

    const-string v3, "EVENT_TURN_OFF_CDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->reportTurnOff()V

    goto :goto_0

    .line 1088
    :pswitch_4
    const-string v2, "SSM"

    const-string v3, "EVENT_SWITCH_SLOT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1091
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1093
    .local v1, "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1094
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SWITCH_SLOT fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->onSwitchResult(Z)V

    goto :goto_0

    .line 1099
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->switchInternal()V

    goto :goto_0

    .line 1103
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1105
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1110
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1112
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1117
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1118
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1119
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1124
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1126
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1056
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSwitchResult(Z)V
    .locals 4
    .param p1, "suc"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1170
    sget-object v2, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 1171
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    .line 1173
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 1174
    const/4 v1, 0x0

    .line 1175
    .local v1, "re":Ljava/lang/RuntimeException;
    if-nez p1, :cond_0

    .line 1176
    new-instance v1, Ljava/lang/RuntimeException;

    .end local v1    # "re":Ljava/lang/RuntimeException;
    const-string v2, "switch slot failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1178
    .restart local v1    # "re":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1179
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1180
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    .line 1184
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method

.method public start(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not switch if it\'s switching"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mMsg:Landroid/os/Message;

    .line 1192
    const-string v0, "SSM"

    const-string v1, "start switching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_OFF_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->mSwitchState:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOffRadioCnt:I

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$Switcher;->turnOnRadioCnt:I

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->switchInternal()V

    .line 1198
    return-void
.end method
