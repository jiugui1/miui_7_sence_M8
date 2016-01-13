.class Lcom/htc/view/VolumePanel$HtcRingtonePlay;
.super Lcom/htc/view/VolumePanel$ISoundPlay;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcRingtonePlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDisableSoundEffect:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mdefaultUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "sStreamType"    # I

    .prologue
    iput-object p1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel$ISoundPlay;-><init>(Lcom/htc/view/VolumePanel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mDisableSoundEffect:Z

    iput-object p3, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mdefaultUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mdefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1, p4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mRingtone:Landroid/media/Ringtone;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "failed to abandon audio focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    :cond_1
    :goto_1
    return-void

    :cond_2
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "abandon audio focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    const-string v2, "mAudioMgr or mAudioFocusListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic access$400(Lcom/htc/view/VolumePanel$HtcRingtonePlay;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    .prologue
    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disableSoundEffect()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mDisableSoundEffect:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mDisableSoundEffect:Z

    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "disable beats icon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceSoundEffect(I)V

    :cond_1
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;-><init>(Lcom/htc/view/VolumePanel$HtcRingtonePlay;Lcom/htc/view/VolumePanel$1;)V

    iput-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "failed to request audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v4, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mAudioFocusListener:Lcom/htc/view/VolumePanel$HtcRingtonePlay$AudioFocusChangeListener;

    :cond_1
    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v1, "obtain audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v1, "mAudioMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSoundEffectToSystemSetting()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mDisableSoundEffect:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mDisableSoundEffect:Z

    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "enable beats icon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->restoreSoundEffect()V

    :cond_1
    return-void
.end method


# virtual methods
.method public fnplay(I)I
    .locals 1
    .param p1, "soundIndex"    # I

    .prologue
    invoke-direct {p0}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->requestAudioFocus()V

    invoke-direct {p0}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->disableSoundEffect()V

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fnstop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->abandonAudioFocus()V

    invoke-direct {p0}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->restoreSoundEffectToSystemSetting()V

    invoke-virtual {p0}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->fnstop()V

    return-void
.end method
