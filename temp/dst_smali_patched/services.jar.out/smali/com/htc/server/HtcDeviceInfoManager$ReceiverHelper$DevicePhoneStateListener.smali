.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DevicePhoneStateListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DevicePhoneStateListener.onCallStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged, phone disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged, phone connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
