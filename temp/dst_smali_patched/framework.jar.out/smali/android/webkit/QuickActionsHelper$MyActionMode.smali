.class Landroid/webkit/QuickActionsHelper$MyActionMode;
.super Landroid/view/ActionMode;
.source "QuickActionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/QuickActionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyActionMode"
.end annotation


# instance fields
.field private mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mInflater:Landroid/view/MenuInflater;

.field final synthetic this$0:Landroid/webkit/QuickActionsHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/QuickActionsHelper;Landroid/content/Context;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mInflater:Landroid/view/MenuInflater;

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mInflater:Landroid/view/MenuInflater;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public createAction(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->clearAll()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {p1, p0, v0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    # getter for: Landroid/webkit/QuickActionsHelper;->mShowQuickAction:Landroid/webkit/QuickActionsHelper$ShowQuickAction;
    invoke-static {v0}, Landroid/webkit/QuickActionsHelper;->access$300(Landroid/webkit/QuickActionsHelper;)Landroid/webkit/QuickActionsHelper$ShowQuickAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hide(Z)V

    :goto_0
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    # getter for: Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;
    invoke-static {v1}, Landroid/webkit/QuickActionsHelper;->access$100(Landroid/webkit/QuickActionsHelper;)Landroid/webkit/QuickActionsHelper$MyActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    # invokes: Landroid/webkit/QuickActionsHelper;->showInner()V
    invoke-static {v0}, Landroid/webkit/QuickActionsHelper;->access$200(Landroid/webkit/QuickActionsHelper;)V

    :cond_0
    return-void
.end method

.method public performAction(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "id"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->this$0:Landroid/webkit/QuickActionsHelper;

    # getter for: Landroid/webkit/QuickActionsHelper;->mode:Landroid/webkit/QuickActionsHelper$MyActionMode;
    invoke-static {v1}, Landroid/webkit/QuickActionsHelper;->access$100(Landroid/webkit/QuickActionsHelper;)Landroid/webkit/QuickActionsHelper$MyActionMode;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method public prepareAction()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper$MyActionMode;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method
