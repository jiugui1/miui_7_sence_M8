.class Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "WebViewSpellCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;)V
    .locals 2

    .prologue
    .line 524
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 525
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 535
    iget-object v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 540
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 545
    move-object/from16 v10, p2

    check-cast v10, Landroid/widget/TextView;

    .line 547
    .local v10, "textView":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 548
    .local v3, "fontStyle":I
    const/4 v4, 0x0

    .line 549
    .local v4, "id":I
    const/4 v6, 0x0

    .line 550
    .local v6, "leftpadding":I
    const/4 v8, 0x0

    .line 551
    .local v8, "rightpadding":I
    const/4 v11, 0x0

    .line 552
    .local v11, "toppadding":I
    const/4 v2, 0x0

    .line 553
    .local v2, "bottompadding":I
    const/4 v7, 0x0

    .line 555
    .local v7, "reset_padding":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 556
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0x47

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 557
    .local v5, "layoutId":I
    if-nez v5, :cond_0

    .line 558
    const-string v12, "KENLOG"

    const-string v13, "Can not find @com.android.internal:layoutId/text_edit_suggestion_item"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    if-nez v10, :cond_1

    .line 561
    if-eqz v5, :cond_1

    .line 562
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v13, v13, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v13}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .end local v10    # "textView":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 565
    .restart local v10    # "textView":Landroid/widget/TextView;
    sget-boolean v12, Landroid/view/inputmethod/InputMethodManager;->sIsSense55:Z

    if-eqz v12, :cond_4

    .line 566
    const v12, 0x208003b

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 570
    :goto_0
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 571
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    .line 572
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v11

    .line 573
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 574
    const/4 v7, 0x1

    .line 578
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;

    .line 579
    .local v9, "suggestion":Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
    iget-object v12, v9, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget v12, v9, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "@com.htc:style/list_primary_m_bold"

    const-string v14, "style"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 587
    if-eqz v3, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 607
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "@com.htc:drawable/common_list_item_background"

    const-string v14, "drawable"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 609
    if-eqz v4, :cond_3

    .line 610
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 612
    if-eqz v7, :cond_3

    .line 613
    int-to-double v12, v11

    const-wide v14, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v13, v2

    const-wide v15, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v13, v15

    double-to-int v13, v13

    invoke-virtual {v10, v6, v12, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 616
    :cond_3
    return-object v10

    .line 568
    .end local v9    # "suggestion":Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 590
    .restart local v9    # "suggestion":Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
    :cond_5
    iget v12, v9, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    const/4 v13, -0x2

    if-ne v12, v13, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "@com.htc:style/list_primary_m_bold"

    const-string v14, "style"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 596
    if-eqz v3, :cond_2

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 600
    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "@com.htc:style/list_primary_m"

    const-string v14, "style"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 603
    if-eqz v3, :cond_2

    .line 604
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    iget-object v12, v12, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method
