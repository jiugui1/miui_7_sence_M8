.class public Landroid/webkit/WebViewThemeable;
.super Ljava/lang/Object;
.source "WebViewThemeable.java"


# static fields
.field private static final CUST_READER_NAME:Ljava/lang/String; = "Android_Core_Framework"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ENABLED()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v3

    const-string v4, "Android_Core_Framework"

    invoke-virtual {v3, v4, v1, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .local v0, "customizationReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v0, :cond_0

    const-string v3, "sense_version"

    const-string v4, "5.0"

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "senseVersion":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .local v1, "enabled":Z
    :goto_1
    return v1

    .end local v1    # "enabled":Z
    .end local v2    # "senseVersion":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "senseVersion":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getAnchorBarCenterDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v2, 0x30200ae

    const/4 v0, 0x0

    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/webkit/WebViewThemeable;->ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text_anchor_bar_center"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v2, 0x30200b0

    const/4 v0, 0x0

    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/webkit/WebViewThemeable;->ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text_anchor_bar_right"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v2, 0x30200af

    const/4 v0, 0x0

    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/webkit/WebViewThemeable;->ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text_anchor_bar_left"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHighlightColor(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x80

    const/16 v4, 0x7f

    const/16 v5, 0xb1

    const/16 v6, 0x18

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .local v2, "ret":I
    const v3, 0x103003e

    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .local v1, "defaultColor":I
    move v2, v1

    .end local v1    # "defaultColor":I
    :cond_0
    return v2
.end method
