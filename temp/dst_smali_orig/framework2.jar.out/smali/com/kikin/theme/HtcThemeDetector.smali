.class public Lcom/kikin/theme/HtcThemeDetector;
.super Lcom/kikin/theme/DefaultThemeDetector;
.source "HtcThemeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/kikin/theme/DefaultThemeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v2, 0xbd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .local v1, "textColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->brightness(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    sget-object v2, Lcom/kikin/theme/ThemeDetector$KikinTheme;->HTC:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lcom/kikin/theme/DefaultThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v2

    goto :goto_0
.end method
