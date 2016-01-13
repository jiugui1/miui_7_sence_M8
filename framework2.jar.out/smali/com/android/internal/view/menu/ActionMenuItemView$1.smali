.class Lcom/android/internal/view/menu/ActionMenuItemView$1;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScaleController:Lcom/htc/internal/widget/HtcScaleAnimController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/internal/widget/HtcScaleAnimController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mOrignTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mOrignTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
