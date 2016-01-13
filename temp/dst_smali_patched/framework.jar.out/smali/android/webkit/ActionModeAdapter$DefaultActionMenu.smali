.class Landroid/webkit/ActionModeAdapter$DefaultActionMenu;
.super Ljava/lang/Object;
.source "ActionModeAdapter.java"

# interfaces
.implements Lcom/htc/textselection/ActionMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ActionModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultActionMenu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;
    }
.end annotation


# instance fields
.field allActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkit/ActionModeAdapter;


# direct methods
.method private constructor <init>(Landroid/webkit/ActionModeAdapter;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->this$0:Landroid/webkit/ActionModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ActionModeAdapter;Landroid/webkit/ActionModeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/ActionModeAdapter;
    .param p2, "x1"    # Landroid/webkit/ActionModeAdapter$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;-><init>(Landroid/webkit/ActionModeAdapter;)V

    return-void
.end method


# virtual methods
.method public addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;
    .locals 2
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    new-instance v0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;-><init>(Landroid/webkit/ActionModeAdapter$DefaultActionMenu;II)V

    .local v0, "a":Lcom/htc/textselection/Action;
    invoke-interface {v0, p4}, Lcom/htc/textselection/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, p3}, Lcom/htc/textselection/Action;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method clearMenu()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public getAction(II)Lcom/htc/textselection/Action;
    .locals 4
    .param p1, "group"    # I
    .param p2, "id"    # I

    .prologue
    iget-object v3, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    const/4 v2, 0x0

    .local v2, "ret":Lcom/htc/textselection/Action;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .local v0, "a":Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v2, v0

    .end local v0    # "a":Lcom/htc/textselection/Action;
    :cond_1
    return-object v2
.end method

.method getActions()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    return-object v0
.end method

.method public removeAction(II)V
    .locals 2
    .param p1, "group"    # I
    .param p2, "id"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .local v0, "a":Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setGroupVisibility(IZ)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    iget-object v2, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .local v0, "a":Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0, p2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0

    .end local v0    # "a":Lcom/htc/textselection/Action;
    :cond_1
    return-void
.end method
