.class Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;,
        Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field mContentDeletedOrReplaced:Z

.field mContentView:Landroid/view/ViewGroup;

.field mDeleteTextItemClick:Z

.field mNumberOfSuggestions:I

.field mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field mSuggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestionsAdapter:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/webkit/WebViewSpellCheckHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewSpellCheckHelper;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentDeletedOrReplaced:Z

    iput-boolean v9, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mDeleteTextItemClick:Z

    new-instance v5, Landroid/widget/PopupWindow;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {p1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1010373

    invoke-direct {v5, v6, v12, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    sget-boolean v5, Landroid/view/inputmethod/InputMethodManager;->sIsSense55:Z

    if-eqz v5, :cond_1

    const v5, -0x202021

    :goto_0
    invoke-direct {v7, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/ListView;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {p1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .local v2, "listView":Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;-><init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;)V

    iput-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    sget-boolean v5, Landroid/view/inputmethod/InputMethodManager;->sIsSense55:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2, v12}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v4, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;

    invoke-direct {v6, p0, p1}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$1;-><init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Landroid/webkit/WebViewSpellCheckHelper;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v4    # "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const v5, -0x111112

    goto :goto_0

    .restart local v2    # "listView":Landroid/widget/ListView;
    :cond_2
    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {p1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x203009c

    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x10100fb
        0x1010129
    .end array-data
.end method


# virtual methods
.method public getHeight()I
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;

    .local v1, "item":Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
    iget v2, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentDeletedOrReplaced:Z

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WVInputConnection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WVInputConnection;

    iget-object v3, v1, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic$WVInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "word"

    iget-object v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    invoke-static {v3}, Landroid/webkit/WebViewSpellCheckHelper;->access$400(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewSpellCheckHelper;->access$200(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x231

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    invoke-static {v5}, Landroid/webkit/WebViewSpellCheckHelper;->access$400(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-result-object v5

    iget v5, v5, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mNode:I

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    invoke-static {v7}, Landroid/webkit/WebViewSpellCheckHelper;->access$400(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-result-object v7

    iget v7, v7, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mStart:I

    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    invoke-static {v8}, Landroid/webkit/WebViewSpellCheckHelper;->access$400(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-result-object v8

    iget v8, v8, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mEnd:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iput-boolean v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentDeletedOrReplaced:Z

    iput-boolean v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mDeleteTextItemClick:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionX:I

    iget v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionX:I

    iget v4, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updateDimension()V
    .locals 10

    .prologue
    const/high16 v9, -0x80000000

    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v8}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "horizontalMeasure":I
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "verticalMeasure":I
    const/4 v7, 0x0

    .local v7, "width":I
    const/4 v6, 0x0

    .local v6, "view":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

    iget-object v9, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2, v6, v9}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, -0x2

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v5}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v8, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public updatePosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionX:I

    iput p2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mPositionY:I

    return-void
.end method

.method public updateSuggestions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "suggestion":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;

    invoke-direct {v3, p0, v1, v0}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    iget v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .end local v1    # "suggestion":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;

    iget-object v4, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;

    iget-object v4, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    iget-object v2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;

    invoke-virtual {v2}, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->notifyDataSetChanged()V

    return-void

    .restart local v1    # "suggestion":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
