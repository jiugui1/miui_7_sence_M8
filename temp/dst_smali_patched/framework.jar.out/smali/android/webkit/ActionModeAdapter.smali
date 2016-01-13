.class public Landroid/webkit/ActionModeAdapter;
.super Ljava/lang/Object;
.source "ActionModeAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ActionModeAdapter$1;,
        Landroid/webkit/ActionModeAdapter$DefaultActionMenu;
    }
.end annotation


# instance fields
.field private mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

.field private mQuickActions:Lcom/htc/textselection/QuickActions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    new-instance v0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;-><init>(Landroid/webkit/ActionModeAdapter;Landroid/webkit/ActionModeAdapter$1;)V

    iput-object v0, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/textselection/QuickActions;->onQuickActionItemClicked(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "ActionModeAdapter"

    const-string v1, "mQuickActions is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v3, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-interface {v2, v3}, Lcom/htc/textselection/QuickActions;->onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V

    iget-object v2, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-virtual {v2}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->getActions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .local v0, "a":Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v2

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p2, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0    # "a":Lcom/htc/textselection/Action;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v0, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-virtual {v0}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->clearMenu()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v2, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v3, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-interface {v2, v3}, Lcom/htc/textselection/QuickActions;->onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V

    iget-object v2, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-virtual {v2}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->getActions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .local v0, "a":Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v2

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/textselection/Action;->isVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0    # "a":Lcom/htc/textselection/Action;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public setQuickAction(Lcom/htc/textselection/QuickActions;)V
    .locals 1
    .param p1, "quickActions"    # Lcom/htc/textselection/QuickActions;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/webkit/ActionModeAdapter;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v0, p0, Landroid/webkit/ActionModeAdapter;->mActionMenu:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-virtual {v0}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->clearMenu()V

    goto :goto_0
.end method
