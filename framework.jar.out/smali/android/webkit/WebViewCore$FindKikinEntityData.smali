.class Landroid/webkit/WebViewCore$FindKikinEntityData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindKikinEntityData"
.end annotation


# instance fields
.field mIsCheckingForTextAtPointOfTouch:Z

.field mIsFirstTouch:Z

.field mShouldLookNearbyText:Z

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(IIZZZ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "shouldLookNearbyText"    # Z
    .param p4, "isFirstTouch"    # Z
    .param p5, "isCheckingForTextAtPointOfTouch"    # Z

    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iput p1, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mX:I

    .line 1072
    iput p2, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mY:I

    .line 1073
    iput-boolean p3, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mShouldLookNearbyText:Z

    .line 1074
    iput-boolean p4, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mIsFirstTouch:Z

    .line 1075
    iput-boolean p5, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mIsCheckingForTextAtPointOfTouch:Z

    .line 1076
    return-void
.end method
