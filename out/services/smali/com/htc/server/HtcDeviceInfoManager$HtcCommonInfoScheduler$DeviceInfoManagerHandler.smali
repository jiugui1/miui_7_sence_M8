.class final Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
.super Landroid/os/Handler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceInfoManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    .line 1085
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1086
    return-void
.end method

.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    .line 1089
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1090
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 1095
    return-void
.end method
