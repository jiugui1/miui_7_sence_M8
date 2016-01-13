.class Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;
.super Ljava/lang/Object;
.source "ActionModeAdapter.java"

# interfaces
.implements Lcom/htc/textselection/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ActionModeAdapter$DefaultActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultAction"
.end annotation


# instance fields
.field aID:I

.field gID:I

.field icon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

.field title:Ljava/lang/CharSequence;

.field visible:Z


# direct methods
.method public constructor <init>(Landroid/webkit/ActionModeAdapter$DefaultActionMenu;II)V
    .locals 1
    .param p2, "group"    # I
    .param p3, "id"    # I

    .prologue
    .line 133
    iput-object p1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->this$1:Landroid/webkit/ActionModeAdapter$DefaultActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->visible:Z

    .line 134
    iput p2, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->gID:I

    .line 135
    iput p3, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->aID:I

    .line 136
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->gID:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->aID:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->visible:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 160
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->title:Ljava/lang/CharSequence;

    .line 164
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Landroid/webkit/ActionModeAdapter$DefaultActionMenu$DefaultAction;->visible:Z

    .line 168
    return-void
.end method
