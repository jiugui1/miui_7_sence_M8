.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$CellBound;,
        Landroid/media/TimedText$Region;,
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field public static final CC_KEY_BACKGROUND_COLOR:I = 0x76

.field public static final CC_KEY_BACKGROUND_OPACITY:I = 0x6e

.field public static final CC_KEY_CELL_EXTENT:I = 0x7f

.field public static final CC_KEY_CELL_ORIGIN:I = 0x7e

.field private static final CC_KEY_CELL_POS:I = 0x16

.field private static final CC_KEY_CELL_RESOLUTION:I = 0x80

.field public static final CC_KEY_DISPLAY_ALIGN:I = 0x78

.field public static final CC_KEY_END_TIME:I = 0x6f

.field public static final CC_KEY_EXTENT:I = 0x7a

.field public static final CC_KEY_FONT_FAMILY:I = 0x72

.field public static final CC_KEY_FONT_STYLE:I = 0x75

.field public static final CC_KEY_FONT_WEIGHT:I = 0x73

.field private static final CC_KEY_LANGUAGE_ID:I = 0x12

.field public static final CC_KEY_LOGO:I = 0x74

.field public static final CC_KEY_ORIGIN:I = 0x79

.field public static final CC_KEY_PADDING:I = 0x7b

.field private static final CC_KEY_PAINTON_NOTIFICATION:I = 0x14

.field private static final CC_KEY_POPON_NOTIFICATION:I = 0x13

.field public static final CC_KEY_REGION_ID:I = 0x77

.field public static final CC_KEY_STRUCT_REGION_LIST:I = 0x11

.field public static final CC_KEY_TEXT_ALIGN:I = 0x71

.field public static final CC_KEY_TEXT_COLOR:I = 0x70

.field public static final CC_KEY_TEXT_OPACITY:I = 0x6d

.field public static final CC_KEY_TEXT_PRESENTATION:I = 0x6c

.field public static final CC_LOGO_IMAGE:I = 0x7c

.field private static final CC_LOGO_LIST:I = 0x15

.field public static final CC_LOGO_REGION:I = 0x7d

.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x80

.field private static final LAST_PUBLIC_KEY:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mCellBounds:Landroid/media/TimedText$CellBound;

.field private mCellResolution:Ljava/lang/String;

.field private mCharset:Ljava/lang/String;

.field private mDisplayFlags:I

.field private mEndTimeMs:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPopOn:I

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoCellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CellBound;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoRegionId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintOnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintOnTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Region;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I

.field private mlogoData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    iput v2, p0, Landroid/media/TimedText;->mEndTimeMs:I

    iput-object v1, p0, Landroid/media/TimedText;->mBackgroundColor:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mlogoData:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLanguageList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mPaintOnList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mPaintOnTimeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoRegionId:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoPositionList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoCellList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mCellResolution:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mCellBounds:Landroid/media/TimedText$CellBound;

    iput-object v1, p0, Landroid/media/TimedText;->mCharset:Ljava/lang/String;

    iput v2, p0, Landroid/media/TimedText;->mIsPopOn:I

    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    iput v2, p0, Landroid/media/TimedText;->mEndTimeMs:I

    iput-object v1, p0, Landroid/media/TimedText;->mBackgroundColor:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mlogoData:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLanguageList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mPaintOnList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mPaintOnTimeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoRegionId:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoPositionList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mLogoCellList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mCellResolution:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TimedText;->mCellBounds:Landroid/media/TimedText$CellBound;

    iput-object v1, p0, Landroid/media/TimedText;->mCharset:Ljava/lang/String;

    iput v2, p0, Landroid/media/TimedText;->mIsPopOn:I

    iput-object p2, p0, Landroid/media/TimedText;->mCharset:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x16

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x80

    if-le p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 26
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "type":I
    const/16 v2, 0x66

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    const/4 v2, 0x7

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "mStartTimeMs":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    const/16 v2, 0x10

    move/from16 v0, v22

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .local v19, "text":[B
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_5

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .end local v16    # "mStartTimeMs":I
    .end local v19    # "text":[B
    .end local v20    # "textLen":I
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "TimedText"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid timed text key found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v13    # "key":I
    .restart local v16    # "mStartTimeMs":I
    .restart local v19    # "text":[B
    .restart local v20    # "textLen":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TimedText;->mCharset:Ljava/lang/String;

    if-eqz v2, :cond_6

    :try_start_0
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mCharset:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .end local v16    # "mStartTimeMs":I
    .end local v19    # "text":[B
    .end local v20    # "textLen":I
    :cond_7
    const/16 v2, 0x65

    move/from16 v0, v22

    if-eq v0, v2, :cond_4

    const-string v2, "TimedText"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid timed text key found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v13    # "key":I
    :cond_8
    const/16 v17, 0x0

    .local v17, "object":Ljava/lang/Object;
    sparse-switch v13, :sswitch_data_0

    .end local v17    # "object":Ljava/lang/Object;
    :goto_2
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .restart local v17    # "object":Ljava/lang/Object;
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mWrapText:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mDisplayFlags:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "horizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "vertical":I
    new-instance v2, Landroid/media/TimedText$Justification;

    move/from16 v0, v23

    invoke-direct {v2, v12, v0}, Landroid/media/TimedText$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    move-object/from16 v17, v0

    .local v17, "object":Landroid/media/TimedText$Justification;
    goto/16 :goto_2

    .end local v12    # "horizontal":I
    .end local v23    # "vertical":I
    .local v17, "object":Ljava/lang/Object;
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "right":I
    new-instance v2, Landroid/graphics/Rect;

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v2, v14, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .end local v9    # "bottom":I
    .end local v14    # "left":I
    .end local v18    # "right":I
    .end local v21    # "top":I
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "columns":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "rows":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .local v6, "celltop":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .local v5, "cellleft":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .local v8, "cellbottom":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .local v7, "cellright":F
    new-instance v2, Landroid/media/TimedText$CellBound;

    invoke-direct/range {v2 .. v8}, Landroid/media/TimedText$CellBound;-><init>(IIFFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mCellBounds:Landroid/media/TimedText$CellBound;

    goto/16 :goto_2

    .end local v3    # "columns":I
    .end local v4    # "rows":I
    .end local v5    # "cellleft":F
    .end local v6    # "celltop":F
    .end local v7    # "cellright":F
    .end local v8    # "cellbottom":F
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mScrollDelay:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mEndTimeMs:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mEndTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .restart local v19    # "text":[B
    if-eqz v19, :cond_a

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_b

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mBackgroundColor:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mBackgroundColor:Ljava/lang/String;

    goto/16 :goto_2

    .end local v10    # "colorLen":I
    .end local v19    # "text":[B
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, "logoLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .restart local v19    # "text":[B
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_d

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mlogoData:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/TimedText;->mlogoData:Ljava/lang/String;

    goto/16 :goto_2

    .end local v15    # "logoLen":I
    .end local v19    # "text":[B
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readRegion(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "object":Ljava/util/List;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readLanguage(Landroid/os/Parcel;)V

    goto/16 :goto_2

    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/TimedText;->mIsPopOn:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/TimedText;->mIsPopOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .local v17, "object":Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readPaintOn(Landroid/os/Parcel;)V

    goto/16 :goto_2

    :sswitch_15
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readLogo(Landroid/os/Parcel;)V

    goto/16 :goto_2

    .end local v13    # "key":I
    .end local v17    # "object":Ljava/lang/Object;
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_a
        0x4 -> :sswitch_7
        0x5 -> :sswitch_d
        0x6 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_b
        0xf -> :sswitch_9
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_c
        0x6f -> :sswitch_e
        0x74 -> :sswitch_10
        0x76 -> :sswitch_f
    .end sparse-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "endChar":I
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .local v0, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "entryCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "text":[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .local v4, "name":Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .local v1, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "font":Landroid/media/TimedText$Font;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameLen":I
    .end local v6    # "text":[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "endChar":I
    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .local v1, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "url":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .local v7, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .local v0, "alt":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .local v1, "altString":Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .local v3, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "entryCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "endChar":I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .local v4, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "endChar":I
    .end local v1    # "endTimeMs":I
    .end local v4    # "kara":Landroid/media/TimedText$Karaoke;
    .end local v5    # "startChar":I
    .end local v6    # "startTimeMs":I
    :cond_1
    return-void
.end method

.method private readLanguage(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "languageCount":I
    const-string v5, "TimedText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the language count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, "text":[B
    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .local v1, "language":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/TimedText;->mLanguageList:Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/TimedText;->mLanguageList:Ljava/util/List;

    :cond_0
    iget-object v5, p0, Landroid/media/TimedText;->mLanguageList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "language":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "nameLen":I
    .end local v4    # "text":[B
    :cond_2
    return-void
.end method

.method private readLogo(Landroid/os/Parcel;)V
    .locals 34
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const-string v31, "TimedText"

    const-string v32, "inside readLogo"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "logoCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "tmp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "length":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "data":[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>([B)V

    .local v12, "Logo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mLogoList:Ljava/util/List;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "regionLogo":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "regionLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .local v24, "region":[B
    if-eqz v24, :cond_6

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v27, "regionid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoRegionId:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mLogoRegionId:Ljava/util/List;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "arraySize":I
    const/16 v30, 0x0

    .local v30, "width":I
    const/16 v19, 0x0

    .local v19, "left":I
    const/4 v15, 0x0

    .local v15, "height":I
    const/16 v29, 0x0

    .local v29, "top":I
    const/4 v6, 0x0

    .local v6, "cellcolumn":I
    const/4 v7, 0x0

    .local v7, "cellrow":I
    const/4 v11, 0x0

    .local v11, "cellheight":F
    const/4 v9, 0x0

    .local v9, "celltop":F
    const/4 v10, 0x0

    .local v10, "cellwidth":F
    const/4 v8, 0x0

    .local v8, "cellleft":F
    const/16 v18, 0x0

    .local v18, "isPos":Z
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/TimedText$Region;

    .local v21, "local":Landroid/media/TimedText$Region;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/TimedText$Region;->regionID:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string v31, "TimedText"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "the matched region id logo="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/TimedText$Region;->regionID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/TimedText$Region;->hExtent:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/TimedText$Region;->xOrigin:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget v15, v0, Landroid/media/TimedText$Region;->wExtent:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/TimedText$Region;->yOrigin:I

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v10, v0, Landroid/media/TimedText$Region;->cellhExtent:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/media/TimedText$Region;->cellxOrigin:F

    move-object/from16 v0, v21

    iget v11, v0, Landroid/media/TimedText$Region;->cellwExtent:F

    move-object/from16 v0, v21

    iget v9, v0, Landroid/media/TimedText$Region;->cellyOrigin:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/media/TimedText$Region;->cellColumn:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/media/TimedText$Region;->cellRow:I

    const/16 v18, 0x1

    .end local v21    # "local":Landroid/media/TimedText$Region;
    :cond_2
    if-eqz v18, :cond_5

    const-string v31, "TimedText"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Logo  rect ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int v33, v19, v30

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int v33, v29, v15

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/graphics/Rect;

    add-int v31, v19, v30

    add-int v32, v29, v15

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v23, "logoPos":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoPositionList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mLogoPositionList:Ljava/util/List;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoPositionList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/media/TimedText$CellBound;

    invoke-direct/range {v5 .. v11}, Landroid/media/TimedText$CellBound;-><init>(IIFFFF)V

    .local v5, "logoCell":Landroid/media/TimedText$CellBound;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoCellList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mLogoCellList:Ljava/util/List;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoCellList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "logoCell":Landroid/media/TimedText$CellBound;
    .end local v23    # "logoPos":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mLogoList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v6    # "cellcolumn":I
    .end local v7    # "cellrow":I
    .end local v8    # "cellleft":F
    .end local v9    # "celltop":F
    .end local v10    # "cellwidth":F
    .end local v11    # "cellheight":F
    .end local v13    # "arraySize":I
    .end local v15    # "height":I
    .end local v17    # "index":I
    .end local v18    # "isPos":Z
    .end local v19    # "left":I
    .end local v27    # "regionid":Ljava/lang/String;
    .end local v29    # "top":I
    .end local v30    # "width":I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .restart local v6    # "cellcolumn":I
    .restart local v7    # "cellrow":I
    .restart local v8    # "cellleft":F
    .restart local v9    # "celltop":F
    .restart local v10    # "cellwidth":F
    .restart local v11    # "cellheight":F
    .restart local v13    # "arraySize":I
    .restart local v15    # "height":I
    .restart local v17    # "index":I
    .restart local v18    # "isPos":Z
    .restart local v19    # "left":I
    .restart local v21    # "local":Landroid/media/TimedText$Region;
    .restart local v27    # "regionid":Ljava/lang/String;
    .restart local v29    # "top":I
    .restart local v30    # "width":I
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .end local v6    # "cellcolumn":I
    .end local v7    # "cellrow":I
    .end local v8    # "cellleft":F
    .end local v9    # "celltop":F
    .end local v10    # "cellwidth":F
    .end local v11    # "cellheight":F
    .end local v12    # "Logo":Ljava/lang/String;
    .end local v13    # "arraySize":I
    .end local v14    # "data":[B
    .end local v15    # "height":I
    .end local v17    # "index":I
    .end local v18    # "isPos":Z
    .end local v19    # "left":I
    .end local v20    # "length":I
    .end local v21    # "local":Landroid/media/TimedText$Region;
    .end local v24    # "region":[B
    .end local v25    # "regionLength":I
    .end local v26    # "regionLogo":I
    .end local v27    # "regionid":Ljava/lang/String;
    .end local v28    # "tmp":I
    .end local v29    # "top":I
    .end local v30    # "width":I
    :cond_8
    return-void
.end method

.method private readPaintOn(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const-string v6, "TimedText"

    const-string v7, "inside readPaintOn"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "dataCount":I
    const-string v6, "TimedText"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the dataCount is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "beginTime":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "length":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "data":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .local v5, "paintOn":Ljava/lang/String;
    const-string v6, "TimedText"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the text is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/TimedText;->mPaintOnList:Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/TimedText;->mPaintOnList:Ljava/util/List;

    :cond_0
    iget-object v6, p0, Landroid/media/TimedText;->mPaintOnTimeList:Ljava/util/List;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/TimedText;->mPaintOnTimeList:Ljava/util/List;

    :cond_1
    iget-object v6, p0, Landroid/media/TimedText;->mPaintOnTimeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/media/TimedText;->mPaintOnList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "beginTime":I
    .end local v1    # "data":[B
    .end local v4    # "length":I
    .end local v5    # "paintOn":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readRegion(Landroid/os/Parcel;)V
    .locals 30
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/16 v23, 0x0

    .local v23, "endOfRegion":Z
    const/4 v3, 0x0

    .local v3, "Id":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "backgroundColor":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "displayAlign":Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, "xOrigin":I
    const/4 v7, -0x1

    .local v7, "yOrigin":I
    const/4 v8, -0x1

    .local v8, "hExtent":I
    const/4 v9, -0x1

    .local v9, "wExtent":I
    const/4 v10, -0x1

    .local v10, "beforeEdge":I
    const/4 v11, -0x1

    .local v11, "afterEdge":I
    const/4 v12, -0x1

    .local v12, "startEdge":I
    const/4 v13, -0x1

    .local v13, "endEdge":I
    const/high16 v14, -0x40800000    # -1.0f

    .local v14, "cellxOrigin":F
    const/high16 v15, -0x40800000    # -1.0f

    .local v15, "cellyOrigin":F
    const/high16 v16, -0x40800000    # -1.0f

    .local v16, "cellhExtent":F
    const/high16 v17, -0x40800000    # -1.0f

    .local v17, "cellwExtent":F
    const/16 v19, -0x1

    .local v19, "cellRow":I
    const/16 v18, -0x1

    .local v18, "cellColumn":I
    const/16 v20, 0x0

    .local v20, "isCellResolution":Z
    :goto_0
    if-nez v23, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v27

    if-lez v27, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "key":I
    packed-switch v25, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v27

    add-int/lit8 v27, v27, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/16 v23, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "idLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .local v26, "text":[B
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    .end local v3    # "Id":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "Id":Ljava/lang/String;
    goto :goto_0

    .end local v24    # "idLen":I
    .end local v26    # "text":[B
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .restart local v26    # "text":[B
    if-eqz v26, :cond_2

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/String;

    .end local v4    # "backgroundColor":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v4    # "backgroundColor":Ljava/lang/String;
    goto :goto_0

    .end local v21    # "colorLen":I
    .end local v26    # "text":[B
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "displayLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .restart local v26    # "text":[B
    if-eqz v26, :cond_4

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/String;

    .end local v5    # "displayAlign":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v5    # "displayAlign":Ljava/lang/String;
    goto :goto_0

    .end local v22    # "displayLen":I
    .end local v26    # "text":[B
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    const/16 v20, 0x1

    const-string v27, "TimedText"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Inside cell origin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    const/16 v20, 0x1

    const-string v27, "TimedText"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Inside cell origin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v25    # "key":I
    :cond_6
    new-instance v2, Landroid/media/TimedText$Region;

    invoke-direct/range {v2 .. v20}, Landroid/media/TimedText$Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIFFFFIIZ)V

    .local v2, "region":Landroid/media/TimedText$Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mRegionList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 29
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v13, 0x0

    .local v13, "endOfStyle":Z
    const/4 v3, -0x1

    .local v3, "startChar":I
    const/4 v4, -0x1

    .local v4, "endChar":I
    const/4 v5, -0x1

    .local v5, "fontId":I
    const/4 v6, 0x0

    .local v6, "isBold":Z
    const/4 v7, 0x0

    .local v7, "isItalic":Z
    const/4 v8, 0x0

    .local v8, "isUnderlined":Z
    const/4 v9, -0x1

    .local v9, "fontSize":I
    const/4 v10, -0x1

    .local v10, "colorRGBA":I
    const/high16 v26, -0x40800000    # -1.0f

    .local v26, "textOpacity":F
    const/high16 v11, -0x40800000    # -1.0f

    .local v11, "backgroundOpacity":F
    const/16 v23, 0x0

    .local v23, "textAlign":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "textColor":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "fontStyle":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "fontFamily":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "fontWeight":Ljava/lang/String;
    :goto_0
    if-nez v13, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v27

    if-lez v27, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "key":I
    sparse-switch v21, :sswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v27

    add-int/lit8 v27, v27, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v13, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    goto :goto_0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "flags":I
    rem-int/lit8 v27, v14, 0x2

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    :goto_1
    rem-int/lit8 v27, v14, 0x4

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    const/4 v7, 0x1

    :goto_2
    div-int/lit8 v27, v14, 0x4

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    :goto_3
    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .end local v14    # "flags":I
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    goto :goto_0

    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    goto :goto_0

    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    goto :goto_0

    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    goto :goto_0

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "textAlignLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .local v22, "text":[B
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_4

    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    :cond_4
    new-instance v23, Ljava/lang/String;

    .end local v23    # "textAlign":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v23    # "textAlign":Ljava/lang/String;
    goto/16 :goto_0

    .end local v22    # "text":[B
    .end local v24    # "textAlignLen":I
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .restart local v22    # "text":[B
    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_6

    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v25, Ljava/lang/String;

    .end local v25    # "textColor":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v25    # "textColor":Ljava/lang/String;
    goto/16 :goto_0

    .end local v12    # "colorLen":I
    .end local v22    # "text":[B
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "fontStyleLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .restart local v22    # "text":[B
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_8

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v17, Ljava/lang/String;

    .end local v17    # "fontStyle":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v17    # "fontStyle":Ljava/lang/String;
    goto/16 :goto_0

    .end local v18    # "fontStyleLen":I
    .end local v22    # "text":[B
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "fontFamilyLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .restart local v22    # "text":[B
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_a

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v15, Ljava/lang/String;

    .end local v15    # "fontFamily":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v15    # "fontFamily":Ljava/lang/String;
    goto/16 :goto_0

    .end local v16    # "fontFamilyLen":I
    .end local v22    # "text":[B
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "fontWeightLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .restart local v22    # "text":[B
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_c

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v19, Ljava/lang/String;

    .end local v19    # "fontWeight":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v19    # "fontWeight":Ljava/lang/String;
    goto/16 :goto_0

    .end local v20    # "fontWeightLen":I
    .end local v21    # "key":I
    .end local v22    # "text":[B
    :cond_d
    new-instance v2, Landroid/media/TimedText$Style;

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .local v2, "style":Landroid/media/TimedText$Style;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    move-object/from16 v27, v0

    if-nez v27, :cond_e

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x6e -> :sswitch_7
        0x70 -> :sswitch_9
        0x71 -> :sswitch_8
        0x72 -> :sswitch_b
        0x73 -> :sswitch_c
        0x75 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
