.class public Lcom/htc/internal/graphic/OverlayDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OverlayDrawable.java"


# static fields
.field public static final COLOR_AND_PNG:I = 0x2

.field public static MODE_ACTIONBAR_BACKGROUND:I = 0x0

.field public static MODE_DARK:I = 0x0

.field public static MODE_DEFAULT:I = 0x0

.field public static MODE_LIGHT:I = 0x0

.field public static final PURE_COLOR:I = 0x0

.field public static final PURE_PNG:I = 0x1


# instance fields
.field private mColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_DEFAULT:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_LIGHT:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_DARK:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_ACTIONBAR_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 36
    iput v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    sget v0, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_DEFAULT:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/internal/graphic/OverlayDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mode"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 36
    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 51
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 52
    iput-object p2, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    sget-object v1, Lcom/htc/internal/R$styleable;->OverlayDrawable:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_LIGHT:I

    if-ne p3, v1, :cond_0

    .line 56
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 63
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void

    .line 57
    :cond_0
    sget v1, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_DARK:I

    if-ne p3, v1, :cond_1

    .line 58
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    goto :goto_0

    .line 59
    :cond_1
    sget v1, Lcom/htc/internal/graphic/OverlayDrawable;->MODE_ACTIONBAR_BACKGROUND:I

    if-ne p3, v1, :cond_2

    .line 60
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 36
    iput v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 42
    iput-object p1, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iput p2, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    if-nez v0, :cond_2

    .line 154
    iget v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 155
    :cond_2
    iget v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 156
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 158
    :cond_3
    iget v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 161
    .local v7, "saveCount":I
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_4
    iget v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 205
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    const-string v2, "OverlayDrawable"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v2, Lcom/htc/internal/R$styleable;->OverlayDrawable:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const/high16 v2, -0x10000

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    .line 82
    const-string v2, "OverlayDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iput v5, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    .line 98
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 93
    :cond_2
    const-string v2, "Png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    iput v6, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    goto :goto_1

    .line 95
    :cond_3
    const-string v2, "Overlay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iput v7, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mOverlayType:I

    goto :goto_1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 196
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/internal/graphic/OverlayDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    :cond_0
    return-void
.end method
