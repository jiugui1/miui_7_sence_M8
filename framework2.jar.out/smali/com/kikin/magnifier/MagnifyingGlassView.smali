.class public Lcom/kikin/magnifier/MagnifyingGlassView;
.super Landroid/view/View;
.source "MagnifyingGlassView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MagnifyingGlassView"


# instance fields
.field private area:Landroid/graphics/Rect;

.field private contentBitmap:Landroid/graphics/Bitmap;

.field private contentCanvas:Landroid/graphics/Canvas;

.field private contourBitmap:Landroid/graphics/Bitmap;

.field private decorView:Landroid/view/View;

.field private height:I

.field private innerShadowBitmap:Landroid/graphics/Bitmap;

.field private position:Landroid/graphics/Point;

.field private width:I

.field private yOffset:I

.field private zoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/kikin/magnifier/MagnifyingGlassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iput p2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    .line 56
    iput p3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    .line 58
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifyingGlassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->yOffset:I

    .line 59
    return-void
.end method

.method private updateScreenshot()V
    .locals 10

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 185
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 197
    .local v7, "location":[I
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 200
    new-instance v6, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->position:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x0

    aget v1, v7, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aget v2, v7, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 204
    .local v6, "decorViewPoint":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v8, v0, v1

    .line 205
    .local v8, "translateX":F
    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v9, v0, v1

    .line 206
    .local v9, "translateY":F
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    neg-float v1, v8

    neg-float v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 207
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 210
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 211
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 216
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v5, "paint":Landroid/graphics/Paint;
    const v0, -0xcccccd

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, v8

    iget v4, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 221
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v3, v3

    neg-float v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    :cond_4
    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v1, v2

    sub-float/2addr v1, v8

    const/4 v2, 0x0

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    :cond_5
    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v0, v0

    add-float/2addr v0, v9

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    mul-float/2addr v2, v3

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createContour()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 68
    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v4, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    .line 71
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v1, "contourCanvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 77
    .local v0, "bounds":Landroid/graphics/Rect;
    const v3, 0x22ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 82
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 87
    const v3, -0xcc4a1b

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 92
    const v3, -0x7b7b7c

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method public createInnerShadow()V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    .line 98
    iget v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    .line 101
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v8, "innerShadowCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 103
    .local v7, "bounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .local v9, "paint":Landroid/graphics/Paint;
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    div-float/2addr v3, v10

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 107
    .local v0, "radialPaint":Landroid/graphics/RadialGradient;
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 108
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v8, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    return-void

    .line 106
    :array_0
    .array-data 4
        0x0
        0x0
        0x55002e3e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->position:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifyingGlassView;->createContour()V

    .line 122
    invoke-virtual {p0}, Lcom/kikin/magnifier/MagnifyingGlassView;->createInnerShadow()V

    .line 125
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 126
    .local v9, "saveCount":I
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 128
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v7, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-direct {p0}, Lcom/kikin/magnifier/MagnifyingGlassView;->updateScreenshot()V

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 142
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "saveCount":I
    :catch_0
    move-exception v10

    .line 156
    .local v10, "throwable":Ljava/lang/Throwable;
    const-string v0, "MagnifyingGlassView"

    const-string v1, "failed to draw the magnifying glass view"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->position:Landroid/graphics/Point;

    return-object v0
.end method

.method public setDecorView(Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->decorView:Landroid/view/View;

    .line 64
    return-void
.end method

.method public setPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "position"    # Landroid/graphics/Point;
    .param p2, "area"    # Landroid/graphics/Rect;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->position:Landroid/graphics/Point;

    .line 163
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "area":Landroid/graphics/Rect;
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->area:Landroid/graphics/Rect;

    .line 166
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 168
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->yOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 169
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->yOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 170
    .local v0, "overflow":I
    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 174
    .end local v0    # "overflow":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/kikin/magnifier/MagnifyingGlassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    return-void

    .line 172
    :cond_1
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->yOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/kikin/magnifier/MagnifyingGlassView;->zoom:F

    .line 234
    return-void
.end method
