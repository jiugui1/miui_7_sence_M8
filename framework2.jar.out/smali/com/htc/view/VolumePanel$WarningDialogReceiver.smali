.class Lcom/htc/view/VolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mVolumePanel:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Lcom/htc/view/VolumePanel;Landroid/media/AudioManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "volumePanel"    # Lcom/htc/view/VolumePanel;
    .param p4, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 856
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 857
    iput-object p1, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 858
    iput-object p2, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 859
    iput-object p3, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    .line 860
    iput-object p4, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 861
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 901
    # getter for: Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 902
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$902(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 903
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    iget-object v0, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->forceTimeout()V
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$600(Lcom/htc/view/VolumePanel;)V

    .line 905
    iget-object v0, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v0}, Lcom/htc/view/VolumePanel;->updateStates()V

    .line 906
    return-void

    .line 903
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    invoke-direct {p0}, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 877
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 881
    sparse-switch p2, :sswitch_data_0

    .line 896
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 883
    :sswitch_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$500(Lcom/htc/view/VolumePanel;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->forceTimeout()V
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$600(Lcom/htc/view/VolumePanel;)V

    goto :goto_0

    .line 888
    :sswitch_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$500(Lcom/htc/view/VolumePanel;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->resetTimeout()V
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$700(Lcom/htc/view/VolumePanel;)V

    goto :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 867
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "VolumePanel"

    const-string v1, "WarningDialogReceiver:onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 871
    invoke-direct {p0}, Lcom/htc/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 872
    return-void
.end method
