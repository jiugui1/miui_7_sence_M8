.class public Lcom/kikin/magnifier/MagnifierManager;
.super Ljava/lang/Object;
.source "MagnifierManager.java"


# static fields
.field private static final HTC_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MagnifierManager"

.field private static mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/kikin/magnifier/MagnifierManager;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/kikin/magnifier/MagnifierWindow;)Lcom/kikin/magnifier/MagnifierWindow;
    .locals 0
    .param p0, "x0"    # Lcom/kikin/magnifier/MagnifierWindow;

    .prologue
    .line 14
    sput-object p0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    return-object p0
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kikin/magnifier/MagnifierWindow;->setVisibile(Z)V

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    .line 148
    :cond_0
    return-void
.end method

.method public static invalidate()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v0}, Lcom/kikin/magnifier/MagnifierWindow;->setNeedsRedraw()V

    .line 135
    :cond_0
    return-void
.end method

.method public static isVisible()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v0}, Lcom/kikin/magnifier/MagnifierWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 119
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v0, p0}, Lcom/kikin/magnifier/MagnifierWindow;->setArea(Landroid/graphics/Rect;)V

    .line 123
    :cond_0
    return-void
.end method

.method public static setZoom(F)V
    .locals 1
    .param p0, "zoom"    # F

    .prologue
    .line 106
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v0, p0}, Lcom/kikin/magnifier/MagnifierWindow;->setZoom(F)V

    .line 109
    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;Lcom/kikin/KikinResultsViewController;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "kikinController"    # Lcom/kikin/KikinResultsViewController;
    .param p2, "rawX"    # I
    .param p3, "rawY"    # I

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p0, p1, v0}, Lcom/kikin/magnifier/MagnifierManager;->show(Landroid/view/View;Lcom/kikin/KikinResultsViewController;Landroid/graphics/Point;)V

    .line 35
    return-void
.end method

.method public static show(Landroid/view/View;Lcom/kikin/KikinResultsViewController;Landroid/graphics/Point;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "kikinController"    # Lcom/kikin/KikinResultsViewController;
    .param p2, "rawPoint"    # Landroid/graphics/Point;

    .prologue
    .line 56
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "rootView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 61
    sget-boolean v3, Lcom/kikin/magnifier/MagnifierManager;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "MagnifierManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t show the magnifying glass because the rootView of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    if-nez v3, :cond_4

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    :cond_3
    new-instance v3, Lcom/kikin/magnifier/MagnifierWindow;

    invoke-direct {v3, v0}, Lcom/kikin/magnifier/MagnifierWindow;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    .line 76
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v3, v4}, Lcom/kikin/magnifier/MagnifierWindow;->setZoom(F)V

    .line 77
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    new-instance v4, Lcom/kikin/magnifier/MagnifierManager$1;

    invoke-direct {v4}, Lcom/kikin/magnifier/MagnifierManager$1;-><init>()V

    invoke-virtual {v3, v4}, Lcom/kikin/magnifier/MagnifierWindow;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p1}, Lcom/kikin/KikinResultsViewController;->getBarPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 87
    .local v1, "rect":Landroid/graphics/Rect;
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v3, v1}, Lcom/kikin/magnifier/MagnifierWindow;->setArea(Landroid/graphics/Rect;)V

    .line 92
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_4
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v3, v2}, Lcom/kikin/magnifier/MagnifierWindow;->setDecorView(Landroid/view/View;)V

    .line 93
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v3, p2}, Lcom/kikin/magnifier/MagnifierWindow;->setPosition(Landroid/graphics/Point;)V

    .line 94
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kikin/magnifier/MagnifierWindow;->setVisibile(Z)V

    .line 95
    sget-object v3, Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;

    invoke-virtual {v3}, Lcom/kikin/magnifier/MagnifierWindow;->setNeedsRedraw()V

    goto :goto_0
.end method
