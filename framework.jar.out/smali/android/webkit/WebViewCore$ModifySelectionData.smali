.class Landroid/webkit/WebViewCore$ModifySelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifySelectionData"
.end annotation


# instance fields
.field mIsCheckingForTextAtPointOfTouch:Z

.field mIsExtendingSelection:Z

.field mIsFirstTouch:Z

.field mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;ZZZ)V
    .locals 0
    .param p2, "isExtendingSelection"    # Z
    .param p3, "isFirstTouch"    # Z
    .param p4, "isCheckingForTextAtPointOfTouch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mRects:Ljava/util/List;

    .line 1102
    iput-boolean p2, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsExtendingSelection:Z

    .line 1103
    iput-boolean p3, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsFirstTouch:Z

    .line 1104
    iput-boolean p4, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsCheckingForTextAtPointOfTouch:Z

    .line 1105
    return-void
.end method
