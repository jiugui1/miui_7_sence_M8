.class public Lcom/kikin/magnifier/MagnifierWindow;
.super Landroid/app/Dialog;
.source "MagnifierWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TAG"


# instance fields
.field private decorView:Landroid/view/View;

.field private magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x800000

    const/16 v6, 0x100

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kikin/magnifier/MagnifierContainer;

    invoke-direct {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p0}, Lcom/kikin/magnifier/MagnifierContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDecorView(Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setDecorView(Landroid/view/View;)V

    return-void
.end method

.method public setNeedsRedraw()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0}, Lcom/kikin/magnifier/MagnifierContainer;->invalidate()V

    return-void
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Point;

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public setVisibile(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setVisibile(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t show the magnifying glass because the decorView is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->dismiss()V

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setZoom(F)V

    return-void
.end method
