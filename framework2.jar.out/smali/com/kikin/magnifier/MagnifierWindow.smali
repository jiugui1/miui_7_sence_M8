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

    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/kikin/magnifier/MagnifierContainer;

    invoke-direct {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    .line 29
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p0}, Lcom/kikin/magnifier/MagnifierContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 35
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 37
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 38
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 39
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->dismiss()V

    .line 152
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setArea(Landroid/graphics/Rect;)V

    .line 137
    return-void
.end method

.method public setDecorView(Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setDecorView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public setNeedsRedraw()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0}, Lcom/kikin/magnifier/MagnifierContainer;->invalidate()V

    .line 130
    return-void
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Point;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setPosition(Landroid/graphics/Point;)V

    .line 123
    return-void
.end method

.method public setVisibile(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    if-eq v0, p1, :cond_1

    .line 73
    iput-boolean p1, p0, Lcom/kikin/magnifier/MagnifierWindow;->visible:Z

    .line 76
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setVisibile(Z)V

    .line 79
    if-eqz p1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 82
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

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifierWindow;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 89
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->show()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifierWindow;->dismiss()V

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifierWindow;->magnifierContainer:Lcom/kikin/magnifier/MagnifierContainer;

    invoke-virtual {v0, p1}, Lcom/kikin/magnifier/MagnifierContainer;->setZoom(F)V

    .line 54
    return-void
.end method
