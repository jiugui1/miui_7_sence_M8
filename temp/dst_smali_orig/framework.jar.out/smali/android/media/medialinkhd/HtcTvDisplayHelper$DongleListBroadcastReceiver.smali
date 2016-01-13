.class Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleListBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/medialinkhd/HtcTvDisplayHelper;
    .param p2, "x1"    # Landroid/media/medialinkhd/HtcTvDisplayHelper$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleListBroadcastReceiver"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    # getter for: Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->access$300(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v1

    .local v1, "listener":Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    # getter for: Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->access$400(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .local v0, "dongle":Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onReadyDongleFound()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoReadyDongle()V

    goto :goto_0
.end method
