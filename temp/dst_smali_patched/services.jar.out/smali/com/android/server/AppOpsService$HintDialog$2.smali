.class Lcom/android/server/AppOpsService$HintDialog$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;

.field final synthetic val$this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog$2;->val$this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/AppOpsService$HintDialog;->mResult:Z
    invoke-static {v0, v2}, Lcom/android/server/AppOpsService$HintDialog;->access$302(Lcom/android/server/AppOpsService$HintDialog;Z)Z

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # invokes: Lcom/android/server/AppOpsService$HintDialog;->updateOpsMode()V
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$400(Lcom/android/server/AppOpsService$HintDialog;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
