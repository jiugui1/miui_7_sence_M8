.class Lcom/htc/view/VolumePanel$9;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;->createSliders(Ljava/util/HashMap;[Lcom/htc/view/VolumePanel$StreamResources;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->resetTimeout()V
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$700(Lcom/htc/view/VolumePanel;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    .local v0, "htcchkBox":Landroid/widget/Checkable;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .local v1, "isChecked":Z
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UseRingVolume Check box click  isChecked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mUseRingVolumeAsNotifyVolume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$2000()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$2000()Z

    move-result v4

    if-eq v1, v4, :cond_3

    # setter for: Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$2002(Z)Z

    const/4 v3, 0x0

    .local v3, "scNotify":Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    const/4 v5, 0x5

    # invokes: Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;
    invoke-static {v4, v5}, Lcom/htc/view/VolumePanel;->access$1700(Lcom/htc/view/VolumePanel;I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v3

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v4}, Lcom/htc/view/VolumePanel;->updateStates()V

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$2100(Lcom/htc/view/VolumePanel;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$2100(Lcom/htc/view/VolumePanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v4

    # invokes: Lcom/htc/view/VolumePanel;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    invoke-static {v4, v7}, Lcom/htc/view/VolumePanel;->access$2200(Landroid/media/AudioManager;I)V

    :goto_0
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    const/4 v5, 0x2

    # invokes: Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;
    invoke-static {v4, v5}, Lcom/htc/view/VolumePanel;->access$1700(Lcom/htc/view/VolumePanel;I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v2

    .local v2, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_3

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$2000()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mVoiceCapable:Z
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$2300(Lcom/htc/view/VolumePanel;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    :goto_1
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .end local v2    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    .end local v3    # "scNotify":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    return-void

    .restart local v3    # "scNotify":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_4
    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$2100(Lcom/htc/view/VolumePanel;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$2100(Lcom/htc/view/VolumePanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/htc/view/VolumePanel$9;->this$0:Lcom/htc/view/VolumePanel;

    # getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lcom/htc/view/VolumePanel;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    invoke-static {v4, v5}, Lcom/htc/view/VolumePanel;->access$2200(Landroid/media/AudioManager;I)V

    goto :goto_0

    .restart local v2    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_7
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DlgRingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    goto :goto_1
.end method
