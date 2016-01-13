.class public Lcom/htc/internal/util/DrawableUtil;
.super Ljava/lang/Object;
.source "DrawableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXML2Drawable(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 14
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 22
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 24
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 28
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {p3, p0, v2, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 29
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "type":I
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 32
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
