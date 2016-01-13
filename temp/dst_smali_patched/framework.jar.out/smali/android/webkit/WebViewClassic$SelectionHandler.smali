.class Landroid/webkit/WebViewClassic$SelectionHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandler"
.end annotation


# static fields
.field public static final SHOW_LR_HANDLE:I = 0x54e

.field public static final SHOW_LR_HANDLE_OUTTER:I = 0x54f

.field public static final SHOW_QUICKACTION:I = 0x54d

.field public static final SHOW_QUICKACTION_AFTER_HITTEST:I = 0x550

.field public static final SHOW_SINGLE_TAP_QUICKACTION:I = 0x551


# instance fields
.field curLayoutBound:Landroid/graphics/Rect;

.field newLocInWin:[I

.field newScrollX:I

.field newScrollY:I

.field oldLayoutBound:Landroid/graphics/Rect;

.field oldLocInWin:[I

.field oldScrollX:I

.field oldScrollY:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLayoutBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->curLayoutBound:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic;
    .param p2, "x1"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method private updateSelectionPopup()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xfa

    const/16 v2, 0x54e

    const/16 v1, 0x8c

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->usePopupAnchor:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$11600(Landroid/webkit/WebViewClassic;)Landroid/webkit/SingleTapQuickActions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x551

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)V

    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v10, :cond_3

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1

    :cond_3
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .restart local v2    # "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_0

    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->showSelectionPopupAnchors()V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v9, v6, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mCanShowPrior:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$11700(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v9, v6, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mCanShowPost:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$11800(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mCenterAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mCanShowCenter:Z
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$11900(Landroid/webkit/WebViewClassic;)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    invoke-virtual {v6, v7}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v7}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    # setter for: Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v6, v7}, Landroid/webkit/WebViewClassic;->access$12002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V
    invoke-static {v6, v5}, Landroid/webkit/WebViewClassic;->access$12100(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    :goto_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .local v3, "starttime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    long-to-int v6, v6

    rsub-int/lit8 v1, v6, 0x64

    .local v1, "delay":I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v1, v10}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    goto/16 :goto_0

    .end local v1    # "delay":I
    .end local v3    # "starttime":J
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    # setter for: Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v6, v7}, Landroid/webkit/WebViewClassic;->access$12002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x54d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollX:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollY:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->curLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->curLayoutBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->curLayoutBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClassic$SelectionHandler;->updateSelectionPopup()V

    :cond_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 6

    .prologue
    const/16 v5, 0xb8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "scrollChanged":Z
    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollX:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollY:I

    iget v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollX:I

    iget v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollY:I

    iget v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollY:I

    if-eq v3, v4, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollX:I

    iput v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollX:I

    iget v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newScrollY:I

    iput v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldScrollY:I

    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->oldLocInWin:[I

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->newLocInWin:[I

    aget v3, v3, v2

    aput v3, v1, v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic$SelectionHandler;->updateSelectionPopup()V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
