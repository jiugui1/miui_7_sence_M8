.class Landroid/webkit/WebViewClassic$AutoScrollerWrapper;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoScrollerWrapper"
.end annotation


# instance fields
.field private checkParent:Z

.field private mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

.field private mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

.field private scrolling:Z

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    return-void
.end method


# virtual methods
.method doAutoSCroll(FF)Z
    .locals 3
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2, p1, p2, v0}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FFZ)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2}, Landroid/webkit/WebViewAutoScroller;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2, p1, p2, v0}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FFZ)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2}, Landroid/webkit/WebViewAutoScroller;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    move v0, v1

    goto :goto_0
.end method

.method findScrollableView(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewAutoScroller;->findScrollableView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewAutoScroller;->findScrollableView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    return v0
.end method

.method stopScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0}, Landroid/webkit/WebViewAutoScroller;->stopScroll()V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0}, Landroid/webkit/WebViewAutoScroller;->stopScroll()V

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    return-void
.end method
