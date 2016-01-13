.class Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DndDisableDialogReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mVolumePanel:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "volumePanel"    # Lcom/htc/view/VolumePanel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->mDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    # getter for: Lcom/htc/view/VolumePanel;->sDndDisableDialogLock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$1102(Landroid/app/Dialog;)Landroid/app/Dialog;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->forceTimeout()V
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$600(Lcom/htc/view/VolumePanel;)V

    iget-object v0, p0, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v0}, Lcom/htc/view/VolumePanel;->updateStates()V

    return-void

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
    .locals 0
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    invoke-direct {p0}, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;->cleanUp()V

    return-void
.end method
