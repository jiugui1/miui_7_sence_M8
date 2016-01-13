.class Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;-><init>(Landroid/webkit/WebViewSpellCheckHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

.field final synthetic val$this$0:Landroid/webkit/WebViewSpellCheckHelper;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Landroid/webkit/WebViewSpellCheckHelper;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iput-object p2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->val$this$0:Landroid/webkit/WebViewSpellCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-boolean v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mDeleteTextItemClick:Z

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WVInputConnection;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WVInputConnection;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$WVInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iput-boolean v4, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mDeleteTextItemClick:Z

    .line 382
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # setter for: Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlighted:Z
    invoke-static {v0, v4}, Landroid/webkit/WebViewSpellCheckHelper;->access$602(Landroid/webkit/WebViewSpellCheckHelper;Z)Z

    .line 383
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v1, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewClassic;->updateSelectionColors(IZ)V

    .line 384
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-boolean v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentDeletedOrReplaced:Z

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mHtcWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$1200(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v1, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v2, v2, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$700(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v2, v2, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v3, v3, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewSpellCheckHelper;->access$700(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZ)V

    .line 387
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    .line 389
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iput-boolean v4, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentDeletedOrReplaced:Z

    .line 390
    return-void
.end method
