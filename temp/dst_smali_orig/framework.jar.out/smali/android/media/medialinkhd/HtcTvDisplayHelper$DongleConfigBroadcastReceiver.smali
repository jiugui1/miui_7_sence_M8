.class Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleConfigBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/medialinkhd/HtcTvDisplayHelper;
    .param p2, "x1"    # Landroid/media/medialinkhd/HtcTvDisplayHelper$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfigBroadcastReceiver"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    # getter for: Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->access$300(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .local v0, "listener":Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig SUCCESS"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z
    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvReadyToPlay()V

    goto :goto_0

    :cond_2
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig FAIL"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z
    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoTvToPlay()V

    goto :goto_0
.end method
