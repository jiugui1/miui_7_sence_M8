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
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mRects:Ljava/util/List;

    iput-boolean p2, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsExtendingSelection:Z

    iput-boolean p3, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsFirstTouch:Z

    iput-boolean p4, p0, Landroid/webkit/WebViewCore$ModifySelectionData;->mIsCheckingForTextAtPointOfTouch:Z

    return-void
.end method
