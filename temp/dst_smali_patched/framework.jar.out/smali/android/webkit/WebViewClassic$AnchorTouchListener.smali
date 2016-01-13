.class Landroid/webkit/WebViewClassic$AnchorTouchListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorTouchListener"
.end annotation


# instance fields
.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v1

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mCenterAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 43
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    .local v29, "onScreenOffset":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    new-instance v30, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v39

    move-object/from16 v0, v30

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .local v30, "p":Landroid/graphics/PointF;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    add-float v38, v38, v39

    const/16 v39, 0x0

    aget v39, v29, v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v36

    .local v36, "viewX":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    add-float v38, v38, v39

    const/16 v39, 0x1

    aget v39, v29, v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v37

    .local v37, "viewY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v14

    .local v14, "contentX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v15

    .local v15, "contentY":I
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebViewClassic$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v16

    .local v16, "dragginAnchor":Lcom/htc/textselection/SelectionAnchor;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "htc_magnifier_setting"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .local v32, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v38

    packed-switch v38, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v38, 0x0

    return v38

    :pswitch_0
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownX:I

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownY:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    .local v25, "isDraginfLeft":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)I

    move-result v38

    const/16 v39, 0x0

    # invokes: Landroid/webkit/WebViewClassic;->nativeIsHandleLeft(II)Z
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$12200(II)Z

    move-result v24

    .local v24, "isBaseonLeft":Z
    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    .local v5, "CursorLeft":Landroid/graphics/Point;
    :goto_2
    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    .local v6, "CursorLeftTextQuad":Landroid/webkit/QuadF;
    :goto_3
    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    .local v7, "CursorRight":Landroid/graphics/Point;
    :goto_4
    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v8

    .local v8, "CursorRightTextQuad":Landroid/webkit/QuadF;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    # setter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$11502(Landroid/webkit/WebViewClassic;Z)Z

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v0, v5}, Landroid/webkit/WebViewClassic;->access$12502(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static {v0, v6}, Landroid/webkit/WebViewClassic;->access$12602(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v38, v0

    sub-int v38, v38, v14

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v39

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v39, v0

    sub-int v39, v39, v15

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v30

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchDownOffset(Landroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v13, v0

    .local v13, "charWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v12, v0

    .local v12, "charHeight":I
    if-eqz v25, :cond_8

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    .local v27, "l":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v38, v0

    sub-int v34, v38, v12

    .local v34, "t":I
    if-eqz v25, :cond_9

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v38, v0

    add-int v31, v38, v13

    .local v31, "r":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Point;->y:I

    .local v9, "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v27

    move/from16 v2, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v38, 0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mShouldShowSelectionHandles:Z
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v41, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    # getter for: Landroid/webkit/WebViewClassic;->useUpDownAnchor:Z
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$12800(Landroid/webkit/WebViewClassic;)Z

    move-result v42

    if-eqz v42, :cond_a

    .end local v12    # "charHeight":I
    :goto_9
    int-to-float v0, v12

    move/from16 v42, v0

    sub-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v40

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v36

    move/from16 v3, v40

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->showMagnify(Landroid/graphics/Rect;IIZ)V

    goto/16 :goto_0

    .end local v5    # "CursorLeft":Landroid/graphics/Point;
    .end local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    .end local v7    # "CursorRight":Landroid/graphics/Point;
    .end local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    .end local v9    # "b":I
    .end local v13    # "charWidth":I
    .end local v24    # "isBaseonLeft":Z
    .end local v25    # "isDraginfLeft":Z
    .end local v27    # "l":I
    .end local v31    # "r":I
    .end local v34    # "t":I
    :cond_1
    const/16 v25, 0x0

    goto/16 :goto_1

    .restart local v24    # "isBaseonLeft":Z
    .restart local v25    # "isDraginfLeft":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    goto/16 :goto_2

    .restart local v5    # "CursorLeft":Landroid/graphics/Point;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    goto/16 :goto_3

    .restart local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    goto/16 :goto_4

    .restart local v7    # "CursorRight":Landroid/graphics/Point;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v8

    goto/16 :goto_5

    .restart local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v38

    if-eqz v38, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v39

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$12502(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$12602(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x8c

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # invokes: Landroid/webkit/WebViewClassic;->hidePasteButton()V
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v0, v7}, Landroid/webkit/WebViewClassic;->access$12502(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    # setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static {v0, v8}, Landroid/webkit/WebViewClassic;->access$12602(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    goto/16 :goto_6

    .restart local v12    # "charHeight":I
    .restart local v13    # "charWidth":I
    :cond_8
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v38, v0

    sub-int v27, v38, v13

    goto/16 :goto_7

    .restart local v27    # "l":I
    .restart local v34    # "t":I
    :cond_9
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    goto/16 :goto_8

    .restart local v9    # "b":I
    .restart local v31    # "r":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_9

    .end local v5    # "CursorLeft":Landroid/graphics/Point;
    .end local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    .end local v7    # "CursorRight":Landroid/graphics/Point;
    .end local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    .end local v9    # "b":I
    .end local v12    # "charHeight":I
    .end local v13    # "charWidth":I
    .end local v24    # "isBaseonLeft":Z
    .end local v25    # "isDraginfLeft":Z
    .end local v27    # "l":I
    .end local v31    # "r":I
    .end local v34    # "t":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownX:I

    move/from16 v38, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    sub-int v17, v38, v39

    .local v17, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownY:I

    move/from16 v38, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    sub-int v18, v38, v39

    .local v18, "dy":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    mul-int v38, v17, v17

    mul-int v39, v18, v18

    add-int v38, v38, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12900(Landroid/webkit/WebViewClassic;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_b

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    .end local v17    # "dx":I
    .end local v18    # "dy":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/textselection/SelectionAnchor;->getTouchDownOffset()Landroid/graphics/PointF;

    move-result-object v35

    .local v35, "touchOffset":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    .local v28, "oldY":I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    add-int v20, v14, v38

    .local v20, "handleX":I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    add-int v21, v15, v38

    .local v21, "handleY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v39, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Landroid/webkit/QuadF;->containsPoint(FF)Z

    move-result v22

    .local v22, "inCursorText":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    .local v23, "inEditBounds":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v38

    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v38

    if-nez v38, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v38, v0

    if-eqz v38, :cond_11

    if-nez v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # invokes: Landroid/webkit/WebViewClassic;->beginScrollEdit()V
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13000(Landroid/webkit/WebViewClassic;)V

    :goto_a
    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v38, v0

    if-eqz v38, :cond_e

    if-nez v23, :cond_e

    :cond_c
    move/from16 v28, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v21

    move/from16 v1, v38

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_e
    if-nez v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v38, v0

    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v11, v0

    .local v11, "caretHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    add-float v38, v38, v39

    const/high16 v39, 0x3f000000    # 0.5f

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v10, v0

    .local v10, "caretCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v10, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-gt v10, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v38

    sub-int v38, v38, v11

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->abs(I)I

    move-result v38

    move/from16 v0, v38

    if-ge v0, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Point;->set(II)V

    .end local v10    # "caretCenter":I
    .end local v11    # "caretHeight":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    # invokes: Landroid/webkit/WebViewClassic;->updateWebkitSelection(Z)V
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$13200(Landroid/webkit/WebViewClassic;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v39

    sub-int v39, v36, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v40

    add-int v39, v39, v40

    # setter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$13302(Landroid/webkit/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v39

    sub-int v39, v37, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v40

    add-int v39, v39, v40

    # setter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$13402(Landroid/webkit/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v38

    if-nez v38, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v38

    if-eqz v38, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v38, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v40

    invoke-virtual/range {v38 .. v40}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v38

    if-eqz v38, :cond_13

    const/16 v26, 0x1

    .local v26, "isScrolling":Z
    :goto_c
    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/MagnifyView;->dismiss()V

    goto/16 :goto_0

    .end local v26    # "isScrolling":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # invokes: Landroid/webkit/WebViewClassic;->endScrollEdit()V
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13100(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move/from16 v0, v21

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    goto/16 :goto_b

    :cond_13
    const/16 v26, 0x0

    goto :goto_c

    .restart local v26    # "isScrolling":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_15

    const/16 v25, 0x1

    .restart local v25    # "isDraginfLeft":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)I

    move-result v38

    const/16 v39, 0x0

    # invokes: Landroid/webkit/WebViewClassic;->nativeIsHandleLeft(II)Z
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$12200(II)Z

    move-result v24

    .restart local v24    # "isBaseonLeft":Z
    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    .restart local v5    # "CursorLeft":Landroid/graphics/Point;
    :goto_e
    if-eqz v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    .restart local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    :goto_f
    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    .restart local v7    # "CursorRight":Landroid/graphics/Point;
    :goto_10
    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v8

    .restart local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v13, v0

    .restart local v13    # "charWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v39 .. v39}, Landroid/webkit/WebViewClassic;->access$12600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v12, v0

    .restart local v12    # "charHeight":I
    if-eqz v25, :cond_1a

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    .restart local v27    # "l":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v38, v0

    sub-int v34, v38, v12

    .restart local v34    # "t":I
    if-eqz v25, :cond_1b

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v38, v0

    add-int v31, v38, v13

    .restart local v31    # "r":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v38

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Point;->y:I

    .restart local v9    # "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v27

    move/from16 v2, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mContentWidth:I
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13500(Landroid/webkit/WebViewClassic;)I

    move-result v38

    move/from16 v0, v38

    if-gt v14, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mContentHeight:I
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13600(Landroid/webkit/WebViewClassic;)I

    move-result v38

    move/from16 v0, v38

    if-gt v15, v0, :cond_1d

    if-ltz v14, :cond_1d

    if-ltz v15, :cond_1d

    const/16 v38, 0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mShouldShowSelectionHandles:Z
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v41, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    # getter for: Landroid/webkit/WebViewClassic;->useUpDownAnchor:Z
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$12800(Landroid/webkit/WebViewClassic;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .end local v12    # "charHeight":I
    :goto_14
    int-to-float v0, v12

    move/from16 v42, v0

    sub-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v40

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v36

    move/from16 v3, v40

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->showMagnify(Landroid/graphics/Rect;IIZ)V

    goto/16 :goto_0

    .end local v5    # "CursorLeft":Landroid/graphics/Point;
    .end local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    .end local v7    # "CursorRight":Landroid/graphics/Point;
    .end local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    .end local v9    # "b":I
    .end local v13    # "charWidth":I
    .end local v24    # "isBaseonLeft":Z
    .end local v25    # "isDraginfLeft":Z
    .end local v27    # "l":I
    .end local v31    # "r":I
    .end local v34    # "t":I
    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_d

    .restart local v24    # "isBaseonLeft":Z
    .restart local v25    # "isDraginfLeft":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    goto/16 :goto_e

    .restart local v5    # "CursorLeft":Landroid/graphics/Point;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    goto/16 :goto_f

    .restart local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    goto/16 :goto_10

    .restart local v7    # "CursorRight":Landroid/graphics/Point;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v8

    goto/16 :goto_11

    .restart local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    .restart local v12    # "charHeight":I
    .restart local v13    # "charWidth":I
    :cond_1a
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v38, v0

    sub-int v27, v38, v13

    goto/16 :goto_12

    .restart local v27    # "l":I
    .restart local v34    # "t":I
    :cond_1b
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    goto/16 :goto_13

    .restart local v9    # "b":I
    .restart local v31    # "r":I
    :cond_1c
    const/4 v12, 0x0

    goto :goto_14

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/MagnifyView;->dismiss()V

    goto/16 :goto_0

    .end local v5    # "CursorLeft":Landroid/graphics/Point;
    .end local v6    # "CursorLeftTextQuad":Landroid/webkit/QuadF;
    .end local v7    # "CursorRight":Landroid/graphics/Point;
    .end local v8    # "CursorRightTextQuad":Landroid/webkit/QuadF;
    .end local v9    # "b":I
    .end local v12    # "charHeight":I
    .end local v13    # "charWidth":I
    .end local v20    # "handleX":I
    .end local v21    # "handleY":I
    .end local v22    # "inCursorText":Z
    .end local v23    # "inEditBounds":Z
    .end local v24    # "isBaseonLeft":Z
    .end local v25    # "isDraginfLeft":Z
    .end local v26    # "isScrolling":Z
    .end local v27    # "l":I
    .end local v28    # "oldY":I
    .end local v31    # "r":I
    .end local v34    # "t":I
    .end local v35    # "touchOffset":Landroid/graphics/PointF;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/MagnifyView;->dismiss()V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->stopScroll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # invokes: Landroid/webkit/WebViewClassic;->endScrollEdit()V
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13100(Landroid/webkit/WebViewClassic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    # setter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static/range {v38 .. v39}, Landroid/webkit/WebViewClassic;->access$11502(Landroid/webkit/WebViewClassic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v38

    if-eqz v38, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v38

    if-eqz v38, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v38, v0

    if-eqz v38, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$13700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$SelectionHandler;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v19

    .local v19, "getHef":Landroid/os/Message;
    const/16 v38, 0x550

    move/from16 v0, v38

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->requestFocusNodeHref(Landroid/os/Message;)V

    .end local v19    # "getHef":Landroid/os/Message;
    :cond_1f
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # invokes: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)V

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v33

    .local v33, "selection":Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateSelectionInCAB(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v33    # "selection":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    # getter for: Landroid/webkit/WebViewClassic;->mShouldShowSelectionHandles:Z
    invoke-static/range {v38 .. v38}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Z

    move-result v38

    if-eqz v38, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    const/16 v39, 0x64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    goto :goto_15

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v38, v0

    const-wide/16 v39, 0x64

    invoke-virtual/range {v38 .. v40}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    goto :goto_16

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
