.class Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel$HtcRingtonePlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/view/VolumePanel$HtcRingtonePlay;


# direct methods
.method private constructor <init>(Lcom/htc/view/VolumePanel$HtcRingtonePlay;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;->this$1:Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/VolumePanel$HtcRingtonePlay;Lcom/htc/view/VolumePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    .param p2, "x1"    # Lcom/htc/view/VolumePanel$1;

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;-><init>(Lcom/htc/view/VolumePanel$HtcRingtonePlay;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 697
    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;->this$1:Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    # getter for: Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->access$400(Lcom/htc/view/VolumePanel$HtcRingtonePlay;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 699
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 700
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "failed to call getSystemService(TELEPHONY_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 721
    :pswitch_1
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "receive AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :pswitch_2
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VolumePanel"

    const-string v2, "receive AUDIOFOCUS_LOSS or AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 715
    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;->this$1:Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->fnstop()V

    goto :goto_0

    .line 725
    :pswitch_3
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "receive AUDIOFOCUS_LOSS, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
