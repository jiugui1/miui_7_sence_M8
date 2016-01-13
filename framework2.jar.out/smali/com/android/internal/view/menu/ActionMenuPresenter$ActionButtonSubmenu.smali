.class Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 882
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 883
    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 885
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 886
    .local v4, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-nez v6, :cond_0

    .line 888
    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$600(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/View;

    move-object v0, v6

    .line 889
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 890
    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 891
    iget-object v6, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setVerticalOffset(I)V

    .line 895
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    iget-object v6, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 897
    const/4 v5, 0x0

    .line 898
    .local v5, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 899
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 900
    invoke-virtual {p3, v3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 901
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 902
    const/4 v5, 0x1

    .line 906
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 907
    return-void

    .line 888
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "preserveIconSpacing":Z
    :cond_2
    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$600(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 899
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 911
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 912
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$102(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 913
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 914
    return-void
.end method
