.class Landroid/webkit/EditableQuickActionsGroup2;
.super Ljava/lang/Object;
.source "EditableQuickActionsGroup2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;
    }
.end annotation


# instance fields
.field private mGroup:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    iput-object v0, p0, Landroid/webkit/EditableQuickActionsGroup2;->mGroup:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    return-void
.end method


# virtual methods
.method public getGroup()Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableQuickActionsGroup2;->mGroup:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    return-object v0
.end method

.method public isNoImageMode(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z
    .locals 2
    .param p1, "mID"    # Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    .prologue
    invoke-virtual {p1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    .local v0, "value":I
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_FORMAT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_ALIGNMENT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnlyOneImageMode(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z
    .locals 2
    .param p1, "mID"    # Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    .prologue
    invoke-virtual {p1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    .local v0, "value":I
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z
    .locals 1
    .param p1, "newGroup"    # Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableQuickActionsGroup2;->mGroup:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Landroid/webkit/EditableQuickActionsGroup2;->mGroup:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    const/4 v0, 0x1

    goto :goto_0
.end method
