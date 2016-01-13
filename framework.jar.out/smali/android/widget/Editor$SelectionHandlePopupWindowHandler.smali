.class Landroid/widget/Editor$SelectionHandlePopupWindowHandler;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinPopupWindowHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandlePopupWindowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 2
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    .line 1228
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1229
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->dismissHandle(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    .line 1231
    :cond_0
    return-void
.end method

.method public getPopupWindowPosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    .line 1218
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1219
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->getHandlePosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1223
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPopupWindowShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z
    .locals 2
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    .line 1212
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1213
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->isHandleShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 2
    .param p1, "type"    # Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    .prologue
    .line 1235
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1236
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->showHandle(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    .line 1239
    :cond_0
    return-void
.end method
