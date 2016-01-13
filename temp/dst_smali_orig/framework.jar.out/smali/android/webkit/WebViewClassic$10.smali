.class Landroid/webkit/WebViewClassic$10;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v0

    .local v0, "selection":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2900(Landroid/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2900(Landroid/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    sget-object v2, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    # invokes: Landroid/webkit/WebViewClassic;->doKikinSearch(Lcom/kikin/selection/Selection$Mode;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->access$3000(Landroid/webkit/WebViewClassic;Lcom/kikin/selection/Selection$Mode;)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->updateSelectionInCAB(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Landroid/webkit/SelectionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Lcom/kikin/KikinResultsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Lcom/kikin/KikinResultsViewController;

    move-result-object v2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Landroid/webkit/SelectionCallback;

    move-result-object v1

    check-cast v1, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/SelectActionModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x96

    if-le v1, v5, :cond_3

    sget-object v1, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    goto :goto_1
.end method
