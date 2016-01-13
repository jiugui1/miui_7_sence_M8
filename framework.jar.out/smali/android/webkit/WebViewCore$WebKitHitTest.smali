.class Landroid/webkit/WebViewCore$WebKitHitTest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebKitHitTest"
.end annotation


# instance fields
.field mAltDisplayString:Ljava/lang/String;

.field mAnchorText:Ljava/lang/String;

.field mCacheImage:I

.field mEditable:Z

.field mEnclosingParentRects:[Landroid/graphics/Rect;

.field mHasFocus:Z

.field mHitTestMovedMouse:Z

.field mHitTestSlop:I

.field mHitTestX:I

.field mHitTestY:I

.field mImageUrl:Ljava/lang/String;

.field mIntentUrl:Ljava/lang/String;

.field mIsTextNode:Z

.field mLinkUrl:Ljava/lang/String;

.field mNodeRef:I

.field mRichlyEditable:Z

.field mTapHighlightColor:I

.field mTitle:Ljava/lang/String;

.field mTouchRects:[Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    sget v0, Landroid/webkit/WebViewClassic;->HIGHLIGHT_COLOR:I

    iput v0, p0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    return-void
.end method
