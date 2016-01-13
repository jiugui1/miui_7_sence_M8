.class Landroid/webkit/EditableSelectActionModeCallback2;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback2.java"

# interfaces
.implements Landroid/webkit/SelectionCallback2;


# static fields
.field private static final BUTTON_ID_COPY:I = 0x2

.field private static final BUTTON_ID_CUT:I = 0x3

.field private static final BUTTON_ID_FONTALIGNMENT:I = 0x13

.field private static final BUTTON_ID_FONTBLACK:I = 0x22

.field private static final BUTTON_ID_FONTBLUE:I = 0x20

.field private static final BUTTON_ID_FONTBOLDFACE:I = 0x29

.field private static final BUTTON_ID_FONTCOLOR:I = 0x11

.field private static final BUTTON_ID_FONTFORMAT:I = 0x12

.field private static final BUTTON_ID_FONTGRAY:I = 0x23

.field private static final BUTTON_ID_FONTGREEN:I = 0x1f

.field private static final BUTTON_ID_FONTITALIC:I = 0x2a

.field private static final BUTTON_ID_FONTJUSTIFY:I = 0x2c

.field private static final BUTTON_ID_FONTLARGE:I = 0x1a

.field private static final BUTTON_ID_FONTLARGEST:I = 0x19

.field private static final BUTTON_ID_FONTLEFT:I = 0x2b

.field private static final BUTTON_ID_FONTMEDIUM:I = 0x1b

.field private static final BUTTON_ID_FONTRED:I = 0x1e

.field private static final BUTTON_ID_FONTRIGHT:I = 0x2d

.field private static final BUTTON_ID_FONTSIZE:I = 0x10

.field private static final BUTTON_ID_FONTSMALL:I = 0x1c

.field private static final BUTTON_ID_FONTSTYLE:I = 0x5

.field private static final BUTTON_ID_FONTUNDERLINE:I = 0x28

.field private static final BUTTON_ID_FONTWHITE:I = 0x24

.field private static final BUTTON_ID_FONTYELLOW:I = 0x21

.field private static final BUTTON_ID_HIGHLIGHT:I = 0x6

.field private static final BUTTON_ID_HIGHLIGHT_BLUE:I = 0xd

.field private static final BUTTON_ID_HIGHLIGHT_GREEN:I = 0xc

.field private static final BUTTON_ID_HIGHLIGHT_RED:I = 0xb

.field private static final BUTTON_ID_HIGHLIGHT_YELLOW:I = 0xe

.field private static final BUTTON_ID_IMAGEDRAW:I = 0x18

.field private static final BUTTON_ID_IMAGEREMOVE:I = 0x16

.field private static final BUTTON_ID_IMAGEREPLACE:I = 0x15

.field private static final BUTTON_ID_IMAGERESIZE:I = 0x14

.field private static final BUTTON_ID_IMAGESTYLE:I = 0x2f

.field private static final BUTTON_ID_IMAGEVIEW:I = 0x17

.field private static final BUTTON_ID_NOTES_IMAGE_RESIZE:I = 0x2e

.field private static final BUTTON_ID_PASTE:I = 0x4

.field private static final BUTTON_ID_SELECTALL:I = 0x1

.field private static final BUTTON_ID_UNHIGHLIGHT:I = 0xf

.field private static final HTC_DEBUG:Z


# instance fields
.field private final SELECT_FONT_SIZE_LARGEST_PX:I

.field private final SELECT_FONT_SIZE_LARGE_PX:I

.field private final SELECT_FONT_SIZE_MEDIUM_PX:I

.field private final SELECT_FONT_SIZE_SMALL_PX:I

.field bFontBold:Z

.field bFontItalic:Z

.field bFontUnderline:Z

.field fWebViewTextScale:F

.field icon_colorMultiply:I

.field icon_copy:I

.field icon_cut:I

.field icon_font_alignment:I

.field icon_font_boldface:I

.field icon_font_color:I

.field icon_font_format:I

.field icon_font_italic:I

.field icon_font_justify:I

.field icon_font_large:I

.field icon_font_largest:I

.field icon_font_left:I

.field icon_font_medium:I

.field icon_font_right:I

.field icon_font_size:I

.field icon_font_small:I

.field icon_font_underline:I

.field icon_fontstyle:I

.field icon_highlight:I

.field icon_image_draw:I

.field icon_image_remove:I

.field icon_image_replace:I

.field icon_image_resize:I

.field icon_image_view:I

.field icon_imagestyle:I

.field icon_paste:I

.field icon_selectall:I

.field icon_unhighlight:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mBUTTON_ID:I

.field private mCanPaste:Z

.field mContext:Landroid/content/Context;

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/dialog/HtcAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

.field private mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

.field private mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

.field private mIsTextSelected:Z

.field private mMenu:Landroid/view/Menu;

.field mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

.field mSelectionContainImage:I

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field m_FontBlackColor:I

.field m_FontBlueColor:I

.field m_FontGrayColor:I

.field m_FontGreenColor:I

.field m_FontRedColor:I

.field m_FontWhiteColor:I

.field m_FontYellowColor:I

.field m_HighlightBlueColor:I

.field m_HighlightGreenColor:I

.field m_HighlightRedColor:I

.field m_HighlightYellowColor:I

.field m_bFontStyleKeyUpDown:Z

.field m_nImgNode:[I

.field m_rectImgAttr:Landroid/graphics/Rect;

.field m_strImgPath:[Ljava/lang/String;

.field private resLoaded:Z

.field str_black:I

.field str_blue:I

.field str_copy:I

.field str_cut:I

.field str_editimage:I

.field str_font_alignment:I

.field str_font_boldface:I

.field str_font_color:I

.field str_font_format:I

.field str_font_italic:I

.field str_font_justify:I

.field str_font_large:I

.field str_font_largest:I

.field str_font_left:I

.field str_font_medium:I

.field str_font_right:I

.field str_font_size:I

.field str_font_small:I

.field str_font_underline:I

.field str_fontstyle:I

.field str_gray:I

.field str_green:I

.field str_highlight:I

.field str_image_draw:I

.field str_image_remove:I

.field str_image_replace:I

.field str_image_resize:I

.field str_image_view:I

.field str_imagestyle:I

.field str_paste:I

.field str_red:I

.field str_selectall:I

.field str_unhighlight:I

.field str_white:I

.field str_yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableSelectActionModeCallback2;->HTC_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const v6, 0x3020023

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mIsTextSelected:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mBUTTON_ID:I

    .line 112
    iput-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->resLoaded:Z

    .line 114
    iput-boolean v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mCanPaste:Z

    .line 119
    const v0, 0x3020035

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_selectall:I

    .line 120
    const v0, 0x3020020

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_cut:I

    .line 121
    const v0, 0x302001f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_copy:I

    .line 122
    const v0, 0x3020028

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_paste:I

    .line 123
    const v0, 0x3020025

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_highlight:I

    .line 125
    const v0, 0x204014f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_selectall:I

    .line 126
    const v0, 0x1040003

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_cut:I

    .line 127
    const v0, 0x1040001

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_copy:I

    .line 128
    const v0, 0x104000b

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_paste:I

    .line 129
    const v0, 0x204022e

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_highlight:I

    .line 138
    const v0, 0x302004c

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_fontstyle:I

    .line 139
    const v0, 0x3070121

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_fontstyle:I

    .line 146
    const v0, 0x3020033

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_imagestyle:I

    .line 147
    const v0, 0x3070129

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_imagestyle:I

    .line 149
    const v0, 0x204025d

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_editimage:I

    .line 158
    const v0, 0x3020024

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    .line 159
    const v0, 0x3020048

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_unhighlight:I

    .line 161
    const v0, 0x2040232

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_red:I

    .line 162
    const v0, 0x204022f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_green:I

    .line 163
    const v0, 0x2040230

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_blue:I

    .line 164
    const v0, 0x2040231

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_yellow:I

    .line 166
    const v0, 0x3070127

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_unhighlight:I

    .line 181
    const/16 v0, 0xa1

    const/16 v1, 0xcd

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightGreenColor:I

    .line 182
    const/16 v0, 0x36

    const/16 v1, 0xb5

    const/16 v2, 0xe4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightBlueColor:I

    .line 183
    const/16 v0, 0xee

    const/16 v1, 0xdb

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightYellowColor:I

    .line 184
    const/16 v0, 0xee

    const/16 v1, 0x46

    const/16 v2, 0x51

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightRedColor:I

    .line 187
    const v0, 0x302004a

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_size:I

    .line 188
    iput v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_color:I

    .line 189
    const v0, 0x3020041

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_format:I

    .line 190
    const v0, 0x302003f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_alignment:I

    .line 192
    const v0, 0x3070123

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_size:I

    .line 193
    const v0, 0x3070124

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_color:I

    .line 194
    const v0, 0x3070125

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_format:I

    .line 195
    const v0, 0x3070126

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_alignment:I

    .line 204
    const v0, 0x3020033

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_resize:I

    .line 205
    iput v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_replace:I

    .line 206
    iput v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_remove:I

    .line 207
    const v0, 0x3020033

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_view:I

    .line 208
    iput v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_draw:I

    .line 210
    const v0, 0x3070138

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_resize:I

    .line 211
    const v0, 0x2040315

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_replace:I

    .line 212
    const v0, 0x2040272

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_remove:I

    .line 213
    const v0, 0x2040275

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_view:I

    .line 214
    const v0, 0x307013a

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_draw:I

    .line 223
    const v0, 0x3020045

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_largest:I

    .line 224
    const v0, 0x3020041

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_large:I

    .line 225
    const v0, 0x3020047

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_medium:I

    .line 226
    const v0, 0x302004b

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_small:I

    .line 228
    const v0, 0x307012a

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_largest:I

    .line 229
    const v0, 0x307012b

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_large:I

    .line 230
    const v0, 0x307012c

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_medium:I

    .line 231
    const v0, 0x307012d

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_small:I

    .line 244
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->SELECT_FONT_SIZE_SMALL_PX:I

    .line 245
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->SELECT_FONT_SIZE_MEDIUM_PX:I

    .line 246
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->SELECT_FONT_SIZE_LARGE_PX:I

    .line 247
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->SELECT_FONT_SIZE_LARGEST_PX:I

    .line 251
    const v0, 0x307012e

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_white:I

    .line 252
    const v0, 0x307012f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_black:I

    .line 253
    const v0, 0x3070130

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_gray:I

    .line 272
    const/16 v0, 0x26

    const/16 v1, 0xbb

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGreenColor:I

    .line 273
    const/16 v0, 0x19

    const/16 v1, 0x61

    const/16 v2, 0xf3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlueColor:I

    .line 274
    const/16 v0, 0xcd

    const/4 v1, 0x4

    invoke-static {v5, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontYellowColor:I

    .line 275
    const/16 v0, 0xe5

    invoke-static {v0, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontRedColor:I

    .line 276
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGrayColor:I

    .line 277
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlackColor:I

    .line 278
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontWhiteColor:I

    .line 282
    const v0, 0x302004d

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_underline:I

    .line 283
    const v0, 0x3020040

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_boldface:I

    .line 284
    const v0, 0x3020042

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_italic:I

    .line 286
    const v0, 0x3070131

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_underline:I

    .line 287
    const v0, 0x3070132

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_boldface:I

    .line 288
    const v0, 0x3070133

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_italic:I

    .line 295
    const v0, 0x3020046

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_left:I

    .line 296
    const v0, 0x3020043

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_justify:I

    .line 297
    const v0, 0x3020049

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_right:I

    .line 299
    const v0, 0x3070134

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_left:I

    .line 300
    const v0, 0x3070135

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_justify:I

    .line 301
    const v0, 0x3070136

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_right:I

    .line 313
    iput-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_bFontStyleKeyUpDown:Z

    .line 314
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->fWebViewTextScale:F

    .line 356
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    .line 357
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 358
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    return-void
.end method

.method private applyColorMultiply(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resID"    # I
    .param p2, "mColor"    # I

    .prologue
    .line 393
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 395
    return-object v0
.end method

.method private endSelection()V
    .locals 4

    .prologue
    .line 895
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 896
    .local v0, "selectionhandles":[I
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 897
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 898
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/EditableWebViewImpl2;->setCaretPos(II)V

    .line 899
    return-void
.end method

.method private getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 10
    .param p1, "strImagePath"    # [Ljava/lang/String;
    .param p2, "nImageNode"    # [I
    .param p3, "rectImage"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 908
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCoreImpl;->getImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 910
    .local v3, "stringarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 911
    const/16 v5, 0x23c

    .line 939
    :goto_0
    return v5

    .line 913
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, p1, v7

    .line 914
    aget-object v5, p1, v7

    const-string v6, "SELECTION_CONTAIN_MORETHAN_ONEIMAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 915
    const/16 v5, 0x23a

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v7

    .line 919
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 920
    .local v1, "left":I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 921
    .local v4, "top":I
    const/4 v2, 0x0

    .line 923
    .local v2, "right":I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v8

    if-nez v5, :cond_2

    .line 924
    add-int/lit8 v2, v1, 0x0

    .line 928
    :goto_1
    const/4 v0, 0x0

    .line 929
    .local v0, "bottom":I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    if-nez v5, :cond_3

    .line 930
    add-int/lit8 v0, v4, 0x0

    .line 935
    :goto_2
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 937
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 939
    const/16 v5, 0x23b

    goto/16 :goto_0

    .line 926
    .end local v0    # "bottom":I
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 932
    .restart local v0    # "bottom":I
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method private loadMenuItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v4, 0x14

    .line 400
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 403
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mContext:Landroid/content/Context;

    .line 407
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_selectall:I

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 408
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_copy:I

    invoke-interface {p1, v0, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 409
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_cut:I

    invoke-interface {p1, v0, v5, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_paste:I

    invoke-interface {p1, v0, v6, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 414
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_selectall:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 415
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_copy:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 416
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_cut:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_paste:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 420
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x5

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_fontstyle:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 421
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x6

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_highlight:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 423
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_fontstyle:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 424
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_highlight:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 427
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_resize:I

    invoke-interface {p1, v0, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_resize:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 429
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl2;->isDrawingboardExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_draw:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 431
    const/16 v0, 0x2f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_draw:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 438
    :cond_0
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xc

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_green:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightGreenColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 440
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xd

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_blue:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightBlueColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 442
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0xe

    const/16 v2, 0xe

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_yellow:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightYellowColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 444
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xb

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_red:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightRedColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 446
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0xf

    const/16 v2, 0xf

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_unhighlight:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_unhighlight:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 450
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x10

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_size:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 451
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x11

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_color:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 452
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x12

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_format:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 453
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x13

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_alignment:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 454
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_size:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 455
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_color:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 456
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_format:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_alignment:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 460
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_resize:I

    invoke-interface {p1, v0, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 461
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x15

    const/16 v2, 0x15

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_replace:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 462
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x16

    const/16 v2, 0x16

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_remove:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 463
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x17

    const/16 v2, 0x17

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_view:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 464
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x18

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_image_draw:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_resize:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_replace:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 468
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_remove:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_view:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 470
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_image_draw:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 473
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x19

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_largest:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 474
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_large:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 475
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_medium:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 476
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_small:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 477
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_largest:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 478
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_large:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 479
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_medium:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 480
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_small:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 483
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_red:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontRedColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 485
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_green:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGreenColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 487
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x20

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_blue:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlueColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 489
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x21

    const/16 v2, 0x21

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_yellow:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontYellowColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 491
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x22

    const/16 v2, 0x22

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_black:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlackColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 493
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x23

    const/16 v2, 0x23

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_gray:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGrayColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 495
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x24

    const/16 v2, 0x24

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_white:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_colorMultiply:I

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontWhiteColor:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/EditableSelectActionModeCallback2;->applyColorMultiply(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 499
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_FORMAT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x28

    const/16 v2, 0x28

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_underline:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 500
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_FORMAT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x29

    const/16 v2, 0x29

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_boldface:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 501
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_FORMAT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_italic:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 502
    const/16 v0, 0x28

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_underline:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 503
    const/16 v0, 0x29

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_boldface:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 504
    const/16 v0, 0x2a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_italic:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 507
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_ALIGNMENT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_left:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 508
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_ALIGNMENT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_justify:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 509
    sget-object v0, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_ALIGNMENT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v0}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->str_font_right:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 510
    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_left:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 511
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_justify:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 512
    const/16 v0, 0x2d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->icon_font_right:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "visible"    # Z
    .param p3, "resourceId"    # I

    .prologue
    .line 886
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 887
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 888
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 890
    :cond_0
    return-void
.end method


# virtual methods
.method public SetImageAttr(III)V
    .locals 4
    .param p1, "pointer"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 948
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    .line 949
    .local v0, "fCurrentScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 950
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 951
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 956
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 957
    return-void
.end method

.method addEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "GroupID"    # Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    .prologue
    .line 352
    invoke-virtual {p2}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 353
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 383
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v6, 0x248

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 627
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mBUTTON_ID:I

    .line 629
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 872
    :goto_0
    :pswitch_0
    return v1

    .line 634
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectAll()V

    .line 635
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :goto_1
    move v1, v2

    .line 872
    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v4}, Landroid/webkit/EditableSelectActionModeCallback2;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mSelectionContainImage:I

    .line 642
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mSelectionContainImage:I

    invoke-virtual {v1, v3}, Landroid/webkit/WebViewClassic;->setClipboardSelectionStatus(I)V

    .line 645
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 646
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 650
    :pswitch_3
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 651
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 655
    :pswitch_4
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 656
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 661
    :pswitch_5
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 662
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 667
    :pswitch_6
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_HIGHLIGHT_L2:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 668
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 675
    :pswitch_7
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebViewImpl2;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 676
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 678
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 679
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 689
    :pswitch_8
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebViewImpl2;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 691
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    const/16 v6, 0x249

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 694
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 695
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 700
    :pswitch_9
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightGreenColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl2;->SetBackColor(IZ)V

    .line 701
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 705
    :pswitch_a
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightBlueColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl2;->SetBackColor(IZ)V

    .line 706
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 710
    :pswitch_b
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightYellowColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl2;->SetBackColor(IZ)V

    .line 711
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 715
    :pswitch_c
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_HighlightRedColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl2;->SetBackColor(IZ)V

    .line 716
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 720
    :pswitch_d
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v4}, Landroid/webkit/EditableWebViewImpl2;->getBackColor()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/webkit/EditableWebViewImpl2;->SetBackColor(IZ)V

    .line 721
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 726
    :pswitch_e
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_SIZE_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 727
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    .line 730
    :pswitch_f
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_COLOR_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 731
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    .line 734
    :pswitch_10
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_FORMAT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 735
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    .line 738
    :pswitch_11
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONT_ALIGNMENT_L3:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v1, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 739
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    .line 745
    :pswitch_12
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebViewImpl2;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 746
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    const/16 v6, 0x244

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 748
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 749
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 754
    :pswitch_13
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    const/16 v6, 0x245

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 756
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 757
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 762
    :pswitch_14
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    const/16 v6, 0x246

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 766
    new-array v0, v7, [I

    .line 767
    .local v0, "selectionhandles":[I
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 768
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 771
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xd3

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 773
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 778
    .end local v0    # "selectionhandles":[I
    :pswitch_15
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    const/16 v6, 0x247

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 780
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 781
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 787
    :pswitch_16
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebViewImpl2;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 788
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/webkit/EditableWebViewImpl2;->sendImgCallback(Ljava/lang/String;ILandroid/graphics/Rect;I)V

    .line 790
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback2;->endSelection()V

    .line 791
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 795
    :pswitch_17
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetFontSize(I)V

    .line 796
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 799
    :pswitch_18
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetFontSize(I)V

    .line 800
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 803
    :pswitch_19
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1, v7}, Landroid/webkit/EditableWebViewImpl2;->SetFontSize(I)V

    .line 804
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 807
    :pswitch_1a
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetFontSize(I)V

    .line 808
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 813
    :pswitch_1b
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontRedColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 814
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 817
    :pswitch_1c
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGreenColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 818
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 821
    :pswitch_1d
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlueColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 822
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 825
    :pswitch_1e
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontYellowColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 826
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 829
    :pswitch_1f
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontBlackColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 830
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 833
    :pswitch_20
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontGrayColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 834
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 837
    :pswitch_21
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_FontWhiteColor:I

    invoke-virtual {v1, v3}, Landroid/webkit/EditableWebViewImpl2;->SetForeColor(I)V

    .line 838
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 843
    :pswitch_22
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->toggleUnderline()V

    .line 844
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 847
    :pswitch_23
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->toggleBold()V

    .line 848
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 851
    :pswitch_24
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->toggleItalic()V

    .line 852
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 857
    :pswitch_25
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->alignLeft()V

    .line 858
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 861
    :pswitch_26
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->alignJustified()V

    .line 862
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 865
    :pswitch_27
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl2;->alignRight()V

    .line 866
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 518
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const/high16 v7, 0x1140000

    invoke-virtual {v5, v7, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 520
    iget-boolean v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->resLoaded:Z

    if-nez v5, :cond_0

    .line 521
    iput-boolean v6, p0, Landroid/webkit/EditableSelectActionModeCallback2;->resLoaded:Z

    .line 522
    invoke-direct {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback2;->loadMenuItem(Landroid/view/Menu;)V

    .line 525
    :cond_0
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 526
    .local v2, "context":Landroid/content/Context;
    const v5, 0x10403ed

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 534
    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    move-object v1, v5

    check-cast v1, Landroid/content/ClipboardManager;

    .line 535
    .local v1, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    .line 536
    .local v4, "isFocusable":Z
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    .line 537
    .local v3, "isEditable":Z
    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    move v0, v6

    .line 538
    .local v0, "canPaste":Z
    :goto_0
    iput-boolean v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mCanPaste:Z

    .line 542
    new-instance v5, Landroid/webkit/EditableQuickActionsGroup2;

    invoke-direct {v5}, Landroid/webkit/EditableQuickActionsGroup2;-><init>()V

    iput-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    .line 543
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v7, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v5, v7}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 548
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getEnableImageCopyPaste()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-le v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/webkit/WebViewClassic;->selectionContainImage(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mCanPaste:Z

    .line 559
    :cond_1
    invoke-virtual {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback2;->resetToGExtend(Landroid/view/Menu;)V

    .line 564
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mActionMode:Landroid/view/ActionMode;

    .line 565
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    invoke-virtual {v5}, Landroid/webkit/EditableWebViewImpl2;->getOnSelectionEditingListener()Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    .line 567
    return v6

    .line 537
    .end local v0    # "canPaste":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 879
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mBUTTON_ID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mBUTTON_ID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 880
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 882
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mBUTTON_ID:I

    .line 883
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 573
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_strImgPath:[Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_nImgNode:[I

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback2;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/EditableSelectActionModeCallback2;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mSelectionContainImage:I

    .line 574
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    invoke-virtual {v1}, Landroid/webkit/EditableQuickActionsGroup2;->getGroup()Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    move-result-object v0

    .line 576
    .local v0, "currentQuickActionsGroupID":Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;
    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mSelectionContainImage:I

    packed-switch v1, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 580
    :pswitch_0
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    if-ne v0, v1, :cond_1

    .line 581
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {p0, p2, v1}, Landroid/webkit/EditableSelectActionModeCallback2;->addEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    invoke-virtual {v1, v0}, Landroid/webkit/EditableQuickActionsGroup2;->isNoImageMode(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    invoke-virtual {p0, p2, v0}, Landroid/webkit/EditableSelectActionModeCallback2;->setEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback2;->resetToGExtend(Landroid/view/Menu;)V

    goto :goto_0

    .line 591
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback2;->resetToGExtend(Landroid/view/Menu;)V

    goto :goto_0

    .line 597
    :pswitch_2
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mOnSelectionEditingListener:Landroid/webkit/EditableWebViewProvider2$OnSelectionEditingListener;

    if-eqz v1, :cond_3

    .line 599
    sget-object v1, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_IMAGESTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {p0, p2, v1}, Landroid/webkit/EditableSelectActionModeCallback2;->addEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V

    .line 603
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    .line 608
    :cond_3
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    invoke-virtual {v1, v0}, Landroid/webkit/EditableQuickActionsGroup2;->isNoImageMode(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 609
    invoke-virtual {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback2;->resetToGExtend(Landroid/view/Menu;)V

    goto :goto_0

    .line 612
    :cond_4
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    invoke-virtual {v1, v0}, Landroid/webkit/EditableQuickActionsGroup2;->isOnlyOneImageMode(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p0, p2, v0}, Landroid/webkit/EditableSelectActionModeCallback2;->setEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V

    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x23a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method resetToGExtend(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 325
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableQuickActionsGroup:Landroid/webkit/EditableQuickActionsGroup2;

    sget-object v3, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v2, v3}, Landroid/webkit/EditableQuickActionsGroup2;->setGroup(Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)Z

    .line 326
    sget-object v2, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_EXTEND:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v2}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 328
    invoke-static {}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->values()[Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    move-result-object v2

    array-length v1, v2

    .line 330
    .local v1, "nGroupCounts":I
    sget-object v2, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->G_FONTSTYLE:Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    invoke-virtual {v2}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mCanPaste:Z

    const/4 v3, 0x4

    invoke-direct {p0, p1, v2, v3}, Landroid/webkit/EditableSelectActionModeCallback2;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 335
    return-void
.end method

.method setEditableQuickActionsGroupVisible(Landroid/view/Menu;Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "GroupID"    # Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    .prologue
    .line 339
    invoke-static {}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->values()[Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;

    move-result-object v2

    array-length v1, v2

    .line 341
    .local v1, "nGroupCounts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 342
    invoke-virtual {p2}, Landroid/webkit/EditableQuickActionsGroup2$QuickActionsGroupID;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 343
    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 341
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 349
    :cond_1
    return-void
.end method

.method public setHtcStyle(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 389
    return-void
.end method

.method public setTextSelected(Z)V
    .locals 0
    .param p1, "isTextSelected"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mIsTextSelected:Z

    .line 375
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 362
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/EditableSelectActionModeCallback2;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 363
    return-void
.end method

.method public setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 366
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    .line 367
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/EditableWebViewProvider2$Factory;

    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl2;->fromEditableWebView(Landroid/webkit/EditableWebViewProvider2$Factory;)Landroid/webkit/EditableWebViewImpl2;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl2;

    .line 369
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 370
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 371
    return-void
.end method
