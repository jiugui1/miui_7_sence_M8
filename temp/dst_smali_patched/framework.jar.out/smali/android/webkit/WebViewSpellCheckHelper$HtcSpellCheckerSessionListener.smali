.class Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcSpellCheckerSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewSpellCheckHelper;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewSpellCheckHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewSpellCheckHelper;Landroid/webkit/WebViewSpellCheckHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewSpellCheckHelper;
    .param p2, "x1"    # Landroid/webkit/WebViewSpellCheckHelper$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;-><init>(Landroid/webkit/WebViewSpellCheckHelper;)V

    return-void
.end method


# virtual methods
.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 25
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    move-object/from16 v5, p1

    .local v5, "arr$":[Landroid/view/textservice/SentenceSuggestionsInfo;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_5

    aget-object v16, v5, v10

    .local v16, "sentenceInfo":Landroid/view/textservice/SentenceSuggestionsInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v15

    .local v15, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v15, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v17

    .local v17, "suggestionInfo":Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v6

    .local v6, "attr":I
    and-int/lit8 v18, v6, 0x2

    if-lez v18, :cond_0

    const/4 v11, 0x1

    .local v11, "isTypo":Z
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v7

    .local v7, "cookie":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingMap:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$100(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    .local v12, "item":Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$200(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewCore;

    move-result-object v19

    const/16 v20, 0x231

    if-eqz v11, :cond_1

    const/16 v18, 0x1

    :goto_3
    iget v0, v12, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mNode:I

    move/from16 v21, v0

    new-instance v22, Landroid/graphics/Point;

    iget v0, v12, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mStart:I

    move/from16 v23, v0

    iget v0, v12, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mEnd:I

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    iget-boolean v0, v12, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mByTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xbf

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Landroid/webkit/WebViewSpellCheckHelper;->mPendingItem:Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    invoke-static {v0, v12}, Landroid/webkit/WebViewSpellCheckHelper;->access$402(Landroid/webkit/WebViewSpellCheckHelper;Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;)Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$500(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v17 .. v17}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v8

    .local v8, "count":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    if-ge v13, v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$500(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v7    # "cookie":I
    .end local v8    # "count":I
    .end local v11    # "isTypo":Z
    .end local v12    # "item":Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    .end local v13    # "j":I
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_2

    .restart local v7    # "cookie":I
    .restart local v11    # "isTypo":Z
    .restart local v12    # "item":Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_3

    .restart local v8    # "count":I
    .restart local v13    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Landroid/webkit/WebViewSpellCheckHelper;->mMispellingHighlighted:Z
    invoke-static/range {v18 .. v19}, Landroid/webkit/WebViewSpellCheckHelper;->access$602(Landroid/webkit/WebViewSpellCheckHelper;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v19, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSelectionRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Landroid/webkit/WebViewSpellCheckHelper;->access$700(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/graphics/Rect;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/webkit/WebViewClassic;->getSelectionRect(Landroid/graphics/Rect;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v19, v0

    # invokes: Landroid/webkit/WebViewSpellCheckHelper;->getMispellingHighlightColor()I
    invoke-static/range {v19 .. v19}, Landroid/webkit/WebViewSpellCheckHelper;->access$800(Landroid/webkit/WebViewSpellCheckHelper;)I

    move-result v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/webkit/WebViewClassic;->updateSelectionColors(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static/range {v18 .. v18}, Landroid/webkit/WebViewSpellCheckHelper;->access$300(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/webkit/WebViewClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebViewClassic;->selectWordForSpellCheck()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewSpellCheckHelper$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    move-object/from16 v19, v0

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Landroid/webkit/WebViewSpellCheckHelper;->access$500(Landroid/webkit/WebViewSpellCheckHelper;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebViewSpellCheckHelper;->showSuggestionWindow(Ljava/util/ArrayList;)V

    .end local v8    # "count":I
    .end local v13    # "j":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v6    # "attr":I
    .end local v7    # "cookie":I
    .end local v11    # "isTypo":Z
    .end local v12    # "item":Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
    .end local v17    # "suggestionInfo":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .end local v9    # "i":I
    .end local v15    # "length":I
    .end local v16    # "sentenceInfo":Landroid/view/textservice/SentenceSuggestionsInfo;
    :cond_5
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 2
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    const-string v0, "[KENLOG]"

    const-string v1, "onGetSuggestions# Pretty sure this is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
