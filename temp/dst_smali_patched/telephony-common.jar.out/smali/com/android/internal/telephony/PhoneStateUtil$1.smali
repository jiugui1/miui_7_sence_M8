.class Lcom/android/internal/telephony/PhoneStateUtil$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneStateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneStateUtil;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneStateUtil;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneStateUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    iput p1, v0, Lcom/android/internal/telephony/PhoneStateUtil;->mCallState:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    # invokes: Lcom/android/internal/telephony/PhoneStateUtil;->sendSmsWhenStateReady()V
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneStateUtil;->access$000(Lcom/android/internal/telephony/PhoneStateUtil;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const-string v0, "PhoneStateUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    iput p1, v0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    # invokes: Lcom/android/internal/telephony/PhoneStateUtil;->sendSmsWhenStateReady()V
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneStateUtil;->access$000(Lcom/android/internal/telephony/PhoneStateUtil;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const-string v0, "PhoneStateUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: dataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    iput p1, v0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataState:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    iput p2, v0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataNetType:I

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const-string v0, "PhoneStateUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil$1;->this$0:Lcom/android/internal/telephony/PhoneStateUtil;

    iput-object p1, v0, Lcom/android/internal/telephony/PhoneStateUtil;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method
